#include <stdio.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h" 
#include "freertos/queue.h"

QueueHandle_t xQueue; 
/*Structure with the type of varibales needed to be send*/
typedef struct {
    char *str;
    int num;
}Data_t;    

static void vSenderTask( void *pvParameters ) {
    Data_t *lValueToSend = (Data_t *) pvParameters; //point the structure to the value to be send
    BaseType_t xStatus;     //Variable to check if the queue is being send
    while(1){
        xStatus = xQueueSendToBack( xQueue, lValueToSend, 0);   //Send to queue the structure
        if( xStatus != pdPASS ){    //If the queue is not send print an error message
            printf( "Could not send to the queue.\n" ); 
        }
    } 
}

static void vReceiverTask( void *pvParameters ) {
    Data_t lReceivedValue;  //Allocate the structure into a variable in this task
    BaseType_t xStatus;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 100 );   //Ticks to wait
    while(1){
        if( uxQueueMessagesWaiting(xQueue) != 0 ) {     //Check if the queue has information when its not supposed to
            printf("Queue should have been empty!\n" ); 
        }
        xStatus = xQueueReceive( xQueue, &lReceivedValue, xTicksToWait );   //Receive the variables and print with the structure
        if( xStatus == pdPASS ){ 
            printf( "Received Interger = %d \nReceived String = %s\n\n", lReceivedValue.num, lReceivedValue.str );  //Print the items Received
        }else{
            printf("Could not recieve from the queue.\n");
        }
    }
}

void app_main( void ){
    xQueue = xQueueCreate( 2, sizeof( Data_t ) ); 
    /*Fill the stucture with the variables needed*/
    static Data_t data = {"EE5390", 10};    
    static Data_t data2 = {"Fall2021", 20};
    /*Create the task with sending the structure*/
    if( xQueue != NULL ){
        xTaskCreate( vSenderTask, "Sender1", 2048, ( void * ) &data, 1, NULL ); 
        xTaskCreate( vSenderTask, "Sender2", 2048, ( void * ) &data2, 1, NULL );
    }
        xTaskCreate( vReceiverTask, "Receiver", 2048, NULL, 1, NULL );
}
