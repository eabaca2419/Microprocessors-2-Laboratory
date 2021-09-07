#include <stdio.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"

typedef struct{
    int num;
    char name[10];
}Data_t;

static void vThread1(void * pvParameters){
    Data_t *data = (Data_t*)pvParameters;
    while(1){
        printf("LED is ON...\n");
        gpio_set_level(5, 1);   //Set the state of the pin to high
        vTaskDelay(1000/portTICK_RATE_MS);  //Wait 1 second

        printf("LED is OFF...\n");
        gpio_set_level(5, 0);   //Set the state of the pin to low
        vTaskDelay(1000/portTICK_RATE_MS);

        printf("Message from struct: %d %s\n", data->num, data->name);
    }
}


void app_main(void)
{

    static Data_t data = {4, "Red"};
    static Data_t data2 = {10, "BLUE"};



    gpio_reset_pin(5);  //Reset GPIO5 to deafult state
    gpio_set_direction(5, GPIO_MODE_OUTPUT);    //Set pin to Output
    
    xTaskCreate(vThread1, "Thread 1", 2048, (void * const)&data, 1, NULL);
    xTaskCreate(vThread1, "Thread 1", 2048, (void * const)&data2, 1, NULL);



}
