#include <stdio.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"


void app_main(void)
{
    gpio_reset_pin(5);  //Reset GPIO5 to deafult state
    gpio_set_direction(5, GPIO_MODE_OUTPUT);    //Set pin to Output
    
    /*Blinking function*/
    while(1){
    gpio_set_level(5, 1);   //Set the state of the pin to high
    vTaskDelay(1000/portTICK_RATE_MS);  //Wait 1 second

    gpio_set_level(5, 0);   //Set the state of the pin to low
    vTaskDelay(1000/portTICK_RATE_MS);
    }
}
