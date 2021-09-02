#include <stdio.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_log.h"
#include "sdkconfig.h"

static void vTask1( void * pvParameters){
    while(1){
        printf("Hi from thread 1\n");
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

static void vTask2( void * pvParameters){
    while(1){
        printf("Hi from thread 2\n");
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

static void vTask3( void * pvParameters){
    while(1){
        printf("Hi from thread 3\n");
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

void app_main(void)
{
    xTaskCreate(vTask1, "Task 1", 1024, NULL, 1, NULL);
    xTaskCreate(vTask2, "Task 2", 1024, NULL, 2, NULL);
    xTaskCreate(vTask3, "Task 3", 1024, NULL, 3, NULL);
}
