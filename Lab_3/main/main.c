#include <stdio.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h" 
#include "freertos/queue.h" 
#include <driver/ledc.h> 
#include <driver/adc.h>
#include "driver/gpio.h"

#define ESP_INTR_FLAG_DEFAULT 0 
#define BUTTON1 22
#define GPIO_INPUT_PIN_SEL (1ULL << BUTTON1)

static xQueueHandle duty_queue = NULL;

/*GPIO interupt to stop or star the PWM*/
static void IRAM_ATTR gpio_isr_handler(void* arg) {
    static int count = 0;
    count++;
    if(count == 2){
        ledc_timer_resume(LEDC_LOW_SPEED_MODE, LEDC_TIMER_0);   //if the inteerupt happens 2 times it will resume the pwm
        count = 0;
    }
    else if(count == 1){
        ledc_timer_pause(LEDC_LOW_SPEED_MODE, LEDC_TIMER_0);    //if the interrupt happens it will pause the PWM
    }
}

/*Set up the GPIO for the interrupt*/
void setUpGPIO() {
    gpio_config_t io_conf;
    //INPUT     
    io_conf.intr_type = GPIO_INTR_POSEDGE;  // Setup the pin to be positive edge
    io_conf.mode = GPIO_MODE_INPUT;         //Set the GPIO22 into input
    io_conf.pin_bit_mask = GPIO_INPUT_PIN_SEL; 
    io_conf.pull_down_en = 1;   //Set the GPIO to be pulldown
    io_conf.pull_up_en = 0; 
    gpio_config(&io_conf);

    //Set ISR 
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    gpio_isr_handler_add(BUTTON1, gpio_isr_handler, (void*) BUTTON1);   //initialize handler for the interrupt
}
void ADCtask(void *pvParameter) {
    while(1) {
        vTaskDelay(100/portTICK_PERIOD_MS); 
        int raw = adc1_get_raw(ADC1_CHANNEL_0);     //store the value of the ADC into a variable
        xQueueSendToFront(duty_queue, &raw, (TickType_t )10 );  //Send the queue with the ADC input
        }
}
void PWMtask(void *pvParameter) {
    int adcValue;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 10 );
    while(1) {
        xQueueReceive(duty_queue, &adcValue, xTicksToWait);    //Receive the queue with the ADC value
        printf("%d\n", adcValue);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, adcValue);   //Set the duty to the ADC value received
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);  //Update the channel with the new arguments
    } 
}
void setADC() {
    adc1_config_width(ADC_WIDTH_BIT_12);    //ADC capture width is 12Bit.
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_11);     //ADC1 channel 1 is GPIO37
}
void setPWM() {
    ledc_timer_config_t timerConfig; 
    timerConfig.duty_resolution = LEDC_TIMER_13_BIT;    //LEDC PWM duty resolution of 13 bits
    timerConfig.timer_num = LEDC_TIMER_0;   //LEDC timer 0
    timerConfig.freq_hz = 5000;     //Set frequency at 5kHz
    timerConfig.speed_mode = LEDC_LOW_SPEED_MODE;   //Set speed mode into low
    timerConfig.clk_cfg = LEDC_AUTO_CLK;    //The driver will automatically select the source clock(REF_TICK or APB) based on the giving resolution and duty parameter when init the timer
    ledc_timer_config(&timerConfig);

    ledc_channel_config_t tChaConfig; 
    tChaConfig.gpio_num = 2; 
    tChaConfig.speed_mode = LEDC_LOW_SPEED_MODE;    //Set the speed mode to low
    tChaConfig.channel = LEDC_CHANNEL_0;    //EDC channel 0
    tChaConfig.intr_type = LEDC_INTR_DISABLE;   //Disable LEDC interrupt
    tChaConfig.timer_sel = LEDC_TIMER_0 ;   //LEDC timer 0
    tChaConfig.duty = 0;    //Set the original duty at 0
    tChaConfig.hpoint = 4096;   //Highest point for the PWM is at 4096
    ledc_channel_config(&tChaConfig);
}

void app_main() {
    setADC();   //Setup ADC
    setPWM();   //Setup PWM
    setUpGPIO();    //Setup the GPIO interrupt
    duty_queue = xQueueCreate(10, sizeof(int));     
    xTaskCreate(&ADCtask,"ADCtask",2048,NULL,5,NULL);   //Create ADC task
    xTaskCreate(&PWMtask,"PWMtask",2048,NULL,5,NULL);   //Create PWM task
}