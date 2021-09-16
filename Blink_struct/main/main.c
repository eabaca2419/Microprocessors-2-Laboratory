#include <stdio.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"

#define ONBOARD_LED 2
#define BREADBOARD_LED 4
#define BUTTON 15

 void vThread1(void * pvParameters){
    gpio_reset_pin(5);  //Reset GPIO5 to deafult state
    gpio_pad_select_gpio(5);
    gpio_set_direction(5, GPIO_MODE_OUTPUT);    //Set pin to Output
    
    while(1){
        printf("LED is ON...\n");
        gpio_set_level(BREADBOARD_LED, 1);   //Set the state of the pin to high
        vTaskDelay(1000/portTICK_RATE_MS);  //Wait 1 second

        printf("LED is OFF...\n");
        gpio_set_level(BREADBOARD_LED, 0);   //Set the state of the pin to low
        vTaskDelay(1000/portTICK_RATE_MS);
    }
}
 void vThread2(void * pvParameters){

    gpio_reset_pin(ONBOARD_LED);  //Reset GPIO2 to deafult state
    gpio_pad_select_gpio(ONBOARD_LED);
    gpio_set_direction(ONBOARD_LED, GPIO_MODE_OUTPUT);    //Set pin to Output
    gpio_reset_pin(15); //Reset GPIO15 to deafult state
    gpio_pad_select_gpio(15);
    gpio_set_direction(15, GPIO_MODE_INPUT);    //Set pin to Input
        while(1){
            int button = gpio_get_level(BUTTON);
            if(button == 0){
                gpio_set_level(ONBOARD_LED, 1);   //Set the state of the pin to high
            }
            else{ 
                gpio_set_level(ONBOARD_LED, 0);   //Set the state of the pin to low
            }
            vTaskDelay(100/ portTICK_RATE_MS);
        }
}

void app_main(void){
    xTaskCreate(vThread1, "Thread 1", 4096, /*(void * const)&data*/ NULL, 5, NULL);  //Blinking LED with structure ON
    xTaskCreate(vThread2, "Thread 2", 4096, NULL, 5, NULL); //Push Button thread
    
}
