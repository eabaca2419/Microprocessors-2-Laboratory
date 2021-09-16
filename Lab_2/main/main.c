#include <stdio.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h" 
#include "freertos/queue.h" 
#include "driver/gpio.h"

#define ESP_INTR_FLAG_DEFAULT 0 
static xQueueHandle gpio_queue = NULL;

static void IRAM_ATTR gpio_isr_handler(void* arg) {
    GPIO.out ^= BIT0;
    uint32_t gpio_num = (uint32_t) arg; 
}
static void print_task(void* arg) {
    uint32_t gpio_num; while(1) {
printf("GPIO[%d] caused an interrupt\n", gpio_num); }
}
void setUpGPIO() {
    gpio_config_t io_conf;

    //INPUT     
    io_conf.intr_type = ; 
    io_conf.mode = ; 
    io_conf.pin_bit_mask = ; 
    io_conf.pull_down_en = ; 
    io_conf.pull_up_en = ; 
    gpio_config(&io_conf);

    //OUTPUT 
    io_conf.intr_type = ; 
    io_conf.mode = ; 
    io_conf.pin_bit_mask = ; 
    io_conf.pull_down_en = ; 
    io_conf.pull_up_en = ; 
    gpio_config(&io_conf);

    //Set ISR 
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    gpio_isr_handler_add(xxx, gpio_isr_handler, (void*) xxx); 
}
void app_main() {
    setUpGPIO();
    gpio_queue = xQueueCreate(10, sizeof(uint32_t)); 
    xTaskCreate(&print_task, "print_task", 2048, NULL, 10, NULL);
}