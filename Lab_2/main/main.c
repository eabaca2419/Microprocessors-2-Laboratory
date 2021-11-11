#include <stdio.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h" 
#include "freertos/queue.h" 
#include "driver/gpio.h"

#define ESP_INTR_FLAG_DEFAULT 0 
#define LED1 5
#define LED2 2
#define GPIO_OUTPUT_PIN_SEL (1ULL << LED2 | 1ULL << LED1)
#define BUTTON1 23
#define BUTTON2 22
#define GPIO_INPUT_PIN_SEL (1ULL << BUTTON1 | 1ULL << BUTTON2)

static xQueueHandle gpio_queue = NULL;

/*Interrupt*/
static void IRAM_ATTR gpio_isr_handler(void* arg) {
    /*Toggle LEDs*/
    GPIO.out ^= BIT2;   
    GPIO.out ^= BIT5;
    uint32_t gpio_num = (uint32_t) arg; 
    xQueueSendFromISR(gpio_queue, (void *)&gpio_num, NULL); //Send interrupt pin number
}
static void print_task(void* arg) {
    uint32_t gpio_num; 
    while(1) {
        if(xQueueReceive(gpio_queue, (void *)&gpio_num, portMAX_DELAY)){
            printf("GPIO[%d] caused an interrupt\n", gpio_num); //Print ISR pin number
        } 
    }
}
void setUpGPIO() {
    gpio_config_t io_conf;
    //INPUT     
    io_conf.intr_type = GPIO_INTR_POSEDGE;  //Set up as Positive Edge
    io_conf.mode = GPIO_MODE_INPUT;     //Set pins as input
    io_conf.pin_bit_mask = GPIO_INPUT_PIN_SEL;     
    io_conf.pull_down_en = 1;   //Enable as a pulldown button
    io_conf.pull_up_en = 0; 
    gpio_config(&io_conf);

    //OUTPUT 
    io_conf.intr_type = GPIO_INTR_DISABLE;  //Its an output so the interrupt is disable
    io_conf.mode = GPIO_MODE_OUTPUT;    //Set pin as output
    io_conf.pin_bit_mask = GPIO_OUTPUT_PIN_SEL; 
    io_conf.pull_down_en = 0; 
    io_conf.pull_up_en = 0; 
    gpio_config(&io_conf);

    //Set ISR 
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);    //Ste the flag for th einterrupt

    /*Let button 1 and button two to interract with the interrupt*/
    gpio_isr_handler_add(BUTTON1, gpio_isr_handler, (void*) BUTTON1);   
    gpio_isr_handler_add(BUTTON2, gpio_isr_handler, (void*) BUTTON2);     
}
void app_main() {
    setUpGPIO();
    gpio_queue = xQueueCreate(10, sizeof(uint32_t));    //Queue to send information
    xTaskCreate(&print_task, "print_task", 2048, NULL, 10, NULL);
}