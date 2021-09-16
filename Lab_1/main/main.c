#include <stdio.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h" 
#include "freertos/semphr.h"

SemaphoreHandle_t xSemaphore = NULL;    //Semaphore for the first task
SemaphoreHandle_t xSemaphore2 = NULL;   //Semaphore for the third task
SemaphoreHandle_t xSemaphore3 = NULL;   //Semaphore for the fourth task


void task1(void *pvParameter) {
    while(1) { 
    if(xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE){   //After 2 seconds print "Task 1" 
        printf("Task 1\n");     
        xSemaphoreGive(xSemaphore2); //Set the semaphore for Task 3 free
        }
    } 
}
void task2(void *pvParameter) {
    int count = 0;  //Counter to run Task 1 every 2 seconds
    while(1) { 
        vTaskDelay(1000/portTICK_PERIOD_MS);    //After 1 seconds print "Task 2"
        printf("    Task 2\n");
        xSemaphoreGive(xSemaphore2); //The semaphore is ready to be used
        count++;    //Counter increase
            if(count == 2){
                xSemaphoreGive(xSemaphore);    //Set the semaphore for Task 1 free
                count = 0;
            }           
    } 
}
void task3(void *pvParameter) {
    while(1) {
        if(xSemaphoreTake(xSemaphore2, portMAX_DELAY) == pdTRUE){    //Check for the semaphore
            printf("        Task 3\n");     //Print "Task 3" when the sephamore function was given from either task 1 or task 2
            xSemaphoreGive(xSemaphore3);    //Set the semaphore for Task 4 free
        }
    } 
}
void task4(void *pvParameter) {
    while(1) {
        if(xSemaphoreTake(xSemaphore3, portMAX_DELAY) == pdTRUE){   //Check for the semaphore
            printf("            Task 4\n");     //Print "Task 4" when the sephamore function was given from task 3
        }
    } 
}
void app_main() {
    /*Create instace of semaphores*/
    xSemaphore = xSemaphoreCreateBinary();  
    xSemaphore2 = xSemaphoreCreateBinary();
    xSemaphore3 = xSemaphoreCreateBinary();

    /*Create all four Tasks*/
    xTaskCreate(&task1,"task1",4096,NULL,5,NULL);
    xTaskCreate(&task2,"task2",4096,NULL,5,NULL); 
    xTaskCreate(&task3,"task3",4096,NULL,6,NULL); 
    xTaskCreate(&task4,"task4",4096,NULL,7,NULL);
}