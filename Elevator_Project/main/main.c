#include <string.h>
#include <math.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h" 

#include "freertos/event_groups.h" 
#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event.h" 
#include "esp_log.h"
#include "nvs_flash.h"

#include "driver/gpio.h"
#include "driver/adc.h"
#include <driver/ledc.h> 
#include "driver/mcpwm.h"

#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/api.h"

#define FLOOR_BUTTON_1  23
#define FLOOR_BUTTON_2  22
#define FLOOR_BUTTON_3  21

#define FLOOR_LED1 3
#define FLOOR_LED2 19
#define FLOOR_LED3 18

#define EMERGENCY_LED 5

#define GPIO_OUTPUT_PIN_SEL (1ULL << FLOOR_LED2 | 1ULL << FLOOR_LED1 | 1ULL << FLOOR_LED3 | 1ULL << EMERGENCY_LED)

#define EMERGENCY_BUTTON 35
#define BUZZER_BUTTON 32
#define INFRARED_SENSOR 17

#define GPIO_INPUT_PIN_SEL (1ULL << EMERGENCY_BUTTON | 1ULL << BUZZER_BUTTON)
#define ESP_INTR_FLAG_DEFAULT 0

#define DOOROPEN 1
#define DOORCLOSE 0

#define Door_Servo 25 // servo gpio pin

#define EXAMPLE_ESP_WIFI_SSID "ESP_WIFI_MODULE"
#define EXAMPLE_ESP_WIFI_PASS "password"
#define EXAMPLE_MAX_STA_CONN 3 

const static char http_html_hdr[] = "HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n";
const static char http_html_txt[] = "HTTP/1.1 200 OK\r\nContent-type: text/plain\r\n\r\n";
const static char http_index_hml[] = R"=====(<!DOCTYPE html><html> 
<head>
    <meta charset=UTF-8 name="viewport" content="width = device-width initial-scale = 1.0">
    <title>Home Page</title>
</head>

<body>
    <div class="header">
        <h1>ESP Web Server.</h1>
    </div>
    <div id = "buttons" >
    <input class="btn" id="btn0" type="button" value="Floor 1" onclick="sendRequest()">
    <input class="btn" id="btn1" type="button" value="Floor 2" onclick="sendRequest1()">
    <input class="btn" id="btn2" type="button" value="Floor 3" onclick="sendRequest2()">
    </div>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #D4DCE2;
        }

        .header {
            width: 100%;
            height: 55px;
            color: white;
            background-color: #04254D;
            padding: 0;
            text-align: center;
        }

        .header h1 {
            color: white;
            vertical-align: center;
            font-size: 42px;
        }

        #buttons {
           display:flex;
           flex-direction: column;
        }

        .btn {
            margin: 0;
            margin-top: .5%;
            background-color: #FB9541;
            width: 48%;
            border: none;
            border-radius: 25%;
            color: white;
            padding: 25px 38px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;

        }

    </style>
    <script> 
    function sendRequest() { 
        var http = new XMLHttpRequest(); 
        http.onreadystatechange = (() => { 
            if (http.readyState === 4) { 
                if (http.status === 200) { 
                    var res = http.responseText; 
                } 
            } 
        }); 
        http.open("GET", "0", true); 
        http.send(); 
    } 
            function sendRequest1() { 
                var http = new XMLHttpRequest(); 
                http.onreadystatechange = (() => { 
                    if (http.readyState === 4) { 
                        if (http.status === 200) { var res = http.responseText; } } }); 
                        http.open("GET", "1", true); http.send(); }
            function sendRequest2() { 
                var http = new XMLHttpRequest(); 
                http.onreadystatechange = (() => { 
                    if (http.readyState === 4) { 
                        if (http.status === 200) { var res = http.responseText; } } }); 
                        http.open("GET", "2", true); http.send(); }
    </script>
</body>

</html>)=====";


/*Handles to Suspend and Resume Tasks*/
TaskHandle_t task3_handle = NULL; 
TaskHandle_t ADC_handle = NULL;

static xQueueHandle duty_queue = NULL; //Queue which send the floor calling

int floorCount = 0; //Floor count flag
int currentFloor = 1;   //Displays current floor
int elevatorMotion = 0; //Send if the levator is in motion
int difference = 0; //Used in floorTransition task
int floor_level_num;    //Sends what floor has been call

void setUpADC();    //Set up ADC channels
void setUpButtons(uint8_t *in, int size);   //Setp the GPIO buttons
void setUpInterruptButtons(uint8_t *in, int size);  //Set up interrupt buttons
void floorTransition(int currentFloor, int newFloor);   //FSM for floor transition
void Door_Moving(int movement); //Servo moving the door
void Servo_Set_Up();    //Setup Servo
static inline uint32_t Convert_Angle_To_Duty(int angle);    //Function to convert angle to duty cycle

static EventGroupHandle_t s_wifi_event_group;
static const char *TAG = "wifi softAP";
static esp_err_t
event_handler(void *ctx, system_event_t *event) {
    switch(event->event_id) {
        case SYSTEM_EVENT_AP_STACONNECTED:  //Display Connection
            ESP_LOGI(TAG, "station:"MACSTR" join, AID=%d", MAC2STR(event->event_info.sta_connected.mac), event->event_info.sta_connected.aid);
            break;
        case SYSTEM_EVENT_AP_STADISCONNECTED:   //Display Disconnection
            ESP_LOGI(TAG, "station:"MACSTR"leave, AID=%d", MAC2STR(event->event_info.sta_disconnected.mac), event->event_info.sta_disconnected.aid);
            break; 
        default:
            break; 
        }
    return ESP_OK; 
}

void wifi_init_softap() {
    s_wifi_event_group = xEventGroupCreate();
    tcpip_adapter_init();   //Initialize TCP
    ESP_ERROR_CHECK(esp_event_loop_init(event_handler, NULL));
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT(); 
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));   //Initialize ESP WIFI
    /*Set wifi as custom SSID, PASS, STA and WPA security*/
    wifi_config_t wifi_config = {
        .ap = {
            .ssid = EXAMPLE_ESP_WIFI_SSID,
            .ssid_len = strlen(EXAMPLE_ESP_WIFI_SSID), 
            .password = EXAMPLE_ESP_WIFI_PASS, 
            .max_connection = EXAMPLE_MAX_STA_CONN, 
            .authmode = WIFI_AUTH_WPA_WPA2_PSK
            }, 
        };
    if (strlen(EXAMPLE_ESP_WIFI_PASS) == 0) { 
        wifi_config.ap.authmode = WIFI_AUTH_OPEN;
    }
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_AP));   //Set WIFI as acess point
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_AP, &wifi_config));     //Set WIFI to configuration 
    ESP_ERROR_CHECK(esp_wifi_start());  //Start WIFI
    ESP_LOGI(TAG, "wifi_init_softap finished.SSID:%s password:%s", EXAMPLE_ESP_WIFI_SSID, EXAMPLE_ESP_WIFI_PASS);
}

static void http_server_netconn_serve(struct netconn *conn) {
    struct netbuf *inbuf; 
    char *buf;
    u16_t buflen;
    err_t err;
    /* Read the data from the port, blocking if nothing yet there.
    We assume the request (the part we care about) is in one netbuf */
    err = netconn_recv(conn, &inbuf);
    if (err == ERR_OK) {
        netbuf_data(inbuf, (void**)&buf, &buflen);
        /* Is this an HTTP GET command? (only check the first 5 chars, 
        since there are other formats for GET, and we're keeping it very simple )*/
        if (buflen>=5 && buf[0]=='G' && buf[1]=='E' && buf[2]=='T' && buf[3]==' ' && buf[4]=='/' ) {
            printf("%c\n", buf[5]);
        /* Send the HTML header
        * subtract 1 from the size, since we dont send the \0 in the string
        * NETCONN_NOCOPY: our data is const static, so no need to copy it 
        */
        //command from button 1 is 'b' 
            if(buf[5]=='0' && elevatorMotion != 1){
                //send anything back
                netconn_write(conn, http_html_txt, sizeof(http_html_hdr)-1, NETCONN_NOCOPY); 
                netconn_write(conn, "1", 1, NETCONN_NOCOPY);
                floor_level_num = 1;
                printf("Floor 1 button is pressed\n");   
            } 
            else if(buf[5]=='1' && elevatorMotion != 1){
                //send anything back
                netconn_write(conn, http_html_txt, sizeof(http_html_hdr)-1, NETCONN_NOCOPY); 
                netconn_write(conn, "1", 1, NETCONN_NOCOPY);
                floor_level_num = 2;
                printf("Floor 2 button is pressed\n");
                // xQueueSendToFront(duty_queue, &floor_level, (TickType_t )10 );
                
            }
            else if(buf[5]=='2' && elevatorMotion != 1){
                //send anything back
                netconn_write(conn, http_html_txt, sizeof(http_html_hdr)-1, NETCONN_NOCOPY); 
                netconn_write(conn, "1", 1, NETCONN_NOCOPY);
                floor_level_num = 3;
                printf("Floor 3 button is pressed\n");
                // xQueueSendToFront(duty_queue, &floor_level, (TickType_t )10 );      
            } 
            else{
                //else send original home page
                netconn_write(conn, http_html_hdr, sizeof(http_html_hdr)-1, NETCONN_NOCOPY); 
                netconn_write(conn, http_index_hml, sizeof(http_index_hml)-1, NETCONN_NOCOPY);
                floor_level_num = 0;
            } 
            xQueueSendToFront(duty_queue, &floor_level_num, (TickType_t )10 );
        }   
    } 
    netconn_close(conn); 
    netbuf_delete(inbuf);
}
static void http_server(void *pvParameters){
    struct netconn *conn, *newconn;
    err_t err;
    conn = netconn_new(NETCONN_TCP);    //Set as TCP
    netconn_bind(conn, NULL, 80);   //Set to port 80
    netconn_listen(conn);
    do {
        err = netconn_accept(conn, &newconn);   //Accept the connection
        if (err == ERR_OK) {
            http_server_netconn_serve(newconn);     //Run HTTP server
            netconn_delete(newconn);    //Delete Connection
        }
    }while(err == ERR_OK); 
        netconn_close(conn);    //Close Connection  
        netconn_delete(conn);   //Delete Connection
}

/*Task for dispacher*/
void task2(void *pvParameter){
    while(1){
        /*Save the level of the GPIO*/
        int floor1 = gpio_get_level(FLOOR_BUTTON_1);
        int floor2 = gpio_get_level(FLOOR_BUTTON_2);
        int floor3 = gpio_get_level(FLOOR_BUTTON_3);
        /*See which button has been pressed and send a queue with the floor number*/
        if (floor1 == 1 && elevatorMotion != 1){
            floor_level_num = 1;
            printf("Floor 1 button is pressed\n");
            xQueueSendToFront(duty_queue, &floor_level_num, (TickType_t )10 );
            vTaskDelay(150/portTICK_PERIOD_MS);
        }
        else if (floor2 == 1 && elevatorMotion != 1){
            floor_level_num = 2;
            printf("Floor 2 button is pressed\n");
            xQueueSendToFront(duty_queue, &floor_level_num, (TickType_t )10 );
            vTaskDelay(150/portTICK_PERIOD_MS);
        }
        else if (floor3 == 1 && elevatorMotion != 1){
            floor_level_num = 3;
            printf("Floor 3 button is pressed\n");
            xQueueSendToFront(duty_queue, &floor_level_num, (TickType_t )10 );
            vTaskDelay(150/portTICK_PERIOD_MS);
        }
        else{
            vTaskDelay(50/portTICK_PERIOD_MS);
        }

    }
}
/*Elevator Movement task*/
void task3(void *pvParameter){
    int floorCall;  //Variable to store queue number
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 10 );
    while(1){
        xQueueReceive(duty_queue, &floorCall, xTicksToWait);    //Receive queue number from task 2
        /*Compare the queue variable to see what floor its been called to*/
        if(floorCall == 1){
            if(currentFloor == 1){  //If the current floor is the same just open the door and close it
                printf("Open door\n");
                Door_Moving(DOOROPEN);  //Open door
                GPIO.out_w1tc = BIT3;   //Clear BIT3
                GPIO.out_w1tc = BIT19;  //Set BIT19
                GPIO.out_w1ts = BIT18;   //Clear BIT19
                vTaskDelay(2000/portTICK_PERIOD_MS);
                printf("Close Doors - floor 1\n");
                Door_Moving(DOORCLOSE); //Close door
            }
            /*Check if the elevator is not moving*/
            else if( elevatorMotion == 0){
                printf("Enter Condition\n");    //Prcced movement of elevator
                elevatorMotion = 1;
                floorTransition(currentFloor, floorCall);
            }   
            currentFloor = 1;   //Update current floor
        }
        else if(floorCall == 2){    
            if(currentFloor == 2){  //If the current floor is the same just open the door and close it
                printf("Open door\n");
                Door_Moving(DOOROPEN);
                GPIO.out_w1tc = BIT3;   //Clear BIT3
                GPIO.out_w1tc = BIT19;  //Set BIT19
                GPIO.out_w1ts = BIT18;   //Clear BIT19
                vTaskDelay(2000/portTICK_PERIOD_MS);
                printf("Close Doors - floor 2\n");
                Door_Moving(DOORCLOSE);
            }
            /*Check if the elevator is not moving*/
            else if( elevatorMotion == 0){
                printf("Enter Condition 2\n");
                elevatorMotion = 1;
                floorTransition(currentFloor, floorCall);
            }   
            currentFloor = 2;   //Update current floor
        }
        else if(floorCall == 3){    
            if(currentFloor == 3){  //If the current floor is the same just open the door and close it
                printf("Open door\n");
                Door_Moving(DOOROPEN);
                GPIO.out_w1tc = BIT3;   //Clear BIT3
                GPIO.out_w1tc = BIT19;  //Set BIT19
                GPIO.out_w1ts = BIT18;   //Clear BIT19
                vTaskDelay(2000/portTICK_PERIOD_MS);
                printf("Close Doors - floor 2\n");
                Door_Moving(DOORCLOSE);
            }
            /*Check if the elevator is not moving*/
            else if( elevatorMotion == 0){
                printf("Enter Condition 3\n");
                elevatorMotion = 1;
                floorTransition(currentFloor, floorCall);
            }   
            currentFloor = 3;   //Update current floor
        }
        else{
            vTaskDelay(50/portTICK_PERIOD_MS);
        }
        floorCall = 0;  //Reset queue variable
    }

}
/*ADC task for emergency*/
void adcTask(void *pvParameter){
    while(1){
        int x = adc1_get_raw(ADC1_CHANNEL_0);     //store the value of the ADC into a variable
        int y = adc1_get_raw(ADC1_CHANNEL_3);     //store the value of the ADC into a variable
        //int z = adc1_get_raw(ADC1_CHANNEL_6);     //store the value of the ADC into a variable
        vTaskDelay(100/portTICK_PERIOD_MS); 
        /*Check if the accelelometer is not been tilted too much*/
        if(1200 > x || x > 2350 || 1100 > y || y > 2350){
            vTaskSuspend(task3_handle); //Suspend task
            GPIO.out_w1ts = BIT5;   //Clear BIT33
        }
        else{
            vTaskResume(task3_handle);  //Resume task
            GPIO.out_w1tc = BIT5;   //Clear BIT33
        }
    }
}
/*Inteerupt function*/
static void IRAM_ATTR gpio_isr_handler(void* arg) {
    uint32_t button_pressed = (uint32_t) arg;
    static int numPressed = 0;  //Counter to see how many times the emergency button is pressed
    /*If the Emergency burron is pressed suspend task 3 and ADC task*/
    if(button_pressed == EMERGENCY_BUTTON){
        if(numPressed == 0 && task3_handle != NULL){
            vTaskSuspend(task3_handle); //Suspend task 2
            vTaskSuspend(ADC_handle);   //Suspend ADC task 
            GPIO.out_w1ts = BIT5;   //Clear BIT33
            numPressed++;   //Increase button count
        }
        else{
            vTaskResume(task3_handle);  //Resume task 3
            vTaskResume(ADC_handle);    //Resume ADC task
            GPIO.out_w1tc = BIT5;   //Clear BIT33
            numPressed = 0; //Reset button count
        }
    }
}

void app_main() {   
    /*Array to setup GPIO buttons*/
    uint8_t elevatorButtons[] = {FLOOR_BUTTON_1, FLOOR_BUTTON_2, FLOOR_BUTTON_3, INFRARED_SENSOR};
    int buttonSize = sizeof(elevatorButtons) / sizeof(uint8_t);
    /*Array to setup interrupt buttons*/
    uint8_t interruptButtons[] = {EMERGENCY_BUTTON, BUZZER_BUTTON};
    int interruptSize = sizeof(interruptButtons) / sizeof(uint8_t);
    
    setUpADC(); //Setup ADC channels
    Servo_Set_Up(); //Setup Servo motor for door
    setUpButtons(elevatorButtons, buttonSize);  //Setup GPIO buttons
    setUpInterruptButtons(interruptButtons, interruptSize); //Setup interrupt  numbers
    nvs_flash_init();
    wifi_init_softap(); //Initialize softAP
    duty_queue = xQueueCreate(10, sizeof(int)); //Initialized queue
    /*Initialized al tasks*/
    xTaskCreate(&http_server, "http_server", 2048, NULL, 5, NULL);
    xTaskCreate(&task2,"Task 2",2048,NULL,5,NULL);  
    xTaskCreate(&task3,"Task 3 Floor 1",2048,NULL,5,&task3_handle);      
    xTaskCreate(&adcTask,"Task ADC",2048,NULL,5,&ADC_handle);
}

static inline uint32_t Convert_Angle_To_Duty(int angle){
    //convert duty cycle to degrees
    return (angle + 90) * (2000 - 1000) / (2 * 90) + 1000;
}
/*Door movemnt function*/
void Door_Moving(int movement){
    /*Check for what type of movemnt is it doing*/
    if(movement == DOORCLOSE){  
        for (int i = -90; i < 90; i++){
            //If the infrared sensor get something restart door to completetely open
            if( gpio_get_level(INFRARED_SENSOR) == 1){  
                i = -90;
            }
            mcpwm_set_duty_in_us(MCPWM_UNIT_0, MCPWM_TIMER_0, MCPWM_OPR_A, Convert_Angle_To_Duty(i));   //Move door slowly
            vTaskDelay(10/portTICK_RATE_MS); 
        }
    }
    else if(movement == DOOROPEN){
        for (int i = 90; i > -90; i--) {
            mcpwm_set_duty_in_us(MCPWM_UNIT_0, MCPWM_TIMER_0, MCPWM_OPR_A, Convert_Angle_To_Duty(i));
            vTaskDelay(10/portTICK_RATE_MS); 
        }
    }
}


void floorTransition(int currentFloor, int newFloor){
    GPIO.out_w1tc = BIT3;   //clear BIT3
    GPIO.out_w1tc = BIT19;   //Clear BIT19
    GPIO.out_w1tc = BIT18;   //Clear BIT18
    /*Check if the elevator is going up or down*/
    if(currentFloor < newFloor){
        difference = newFloor - currentFloor;   //Do the difference for the amount of seconds it will take to get to the new floor
        difference = difference * 10;
        printf("Difference: %d\n", difference); //Print initial time     
        for (; difference > 0; difference--){
            /*if the difference is greater than 10 check if the their is a floor call in between before getting to the new floor*/
            if(difference > 10){
                /*If the button is pressed check how much time is need to the second floor stop and then go*/
                if(gpio_get_level(FLOOR_BUTTON_2) == 1){
                    int inBetween = difference - 10;
                    for(;inBetween > 0; inBetween--){
                        vTaskDelay(200/portTICK_PERIOD_MS);
                        printf("Time till Floor: %d\n", inBetween);
                    }
                    printf("Floor 2- Open Doors\n");
                    Door_Moving(DOOROPEN);
                    GPIO.out_w1tc = BIT3;  //Set BIT3
                    GPIO.out_w1ts = BIT19;   //Clear BIT19
                    GPIO.out_w1tc = BIT19;   //Clear BIT19
                    vTaskDelay(2000/portTICK_PERIOD_MS);
                    printf("Close Doors - floor 2\n");
                    Door_Moving(DOORCLOSE);
                    GPIO.out_w1tc = BIT3;   //clear BIT3
                    GPIO.out_w1tc = BIT19;   //Clear BIT19
                    GPIO.out_w1tc = BIT18;   //Clear BIT18
                    difference = 10;
                }
                else{
                    vTaskDelay(200/portTICK_PERIOD_MS);
                    printf("Time till Floor: %d\n", difference);
                }
            }
            else{
                vTaskDelay(200/portTICK_PERIOD_MS);
                printf("Time till Floor: %d\n", difference);
            }
        }
        printf("Floor %d - Open Doors\n" ,newFloor);
        Door_Moving(DOOROPEN);
        switch(newFloor){
            case 1: 
                GPIO.out_w1tc = BIT3;   //Clear BIT3
                GPIO.out_w1tc = BIT19;  //Set BIT19
                GPIO.out_w1ts = BIT18;   //Clear BIT19
                break;
            case 2: 
                GPIO.out_w1tc = BIT3;  //Set BIT3
                GPIO.out_w1ts = BIT19;   //Clear BIT19
                GPIO.out_w1tc = BIT18;   //Clear BIT19
                break;
            case 3: 
                GPIO.out_w1ts = BIT3;  //Set BIT3
                GPIO.out_w1tc = BIT19;   //Clear BIT19
                GPIO.out_w1tc = BIT18;   //Clear BIT19
                break;
            default:
                break;
        }
        vTaskDelay(2000/portTICK_PERIOD_MS);
        printf("Close Doors\n");
        Door_Moving(DOORCLOSE);
        elevatorMotion = 0;
    }
    if(currentFloor > newFloor){    //Check if the floor is going up
        difference = currentFloor - newFloor;   //Do the difference for the amount of seconds it will take to get to the new floor
        difference = difference * 10;
        printf("Difference: %d\n", difference); //Print initial time 
        for (; difference > 0; difference--){
            /*if the difference is greater than 10 check if the their is a floor call in between before getting to the new floor*/
            if(difference > 10){
                 /*If the button is pressed check how much time is need to the second floor stop and then go*/
                if(gpio_get_level(FLOOR_BUTTON_2) == 1){
                    int inBetween = difference - 10;
                    for(;inBetween > 0; inBetween--){
                        vTaskDelay(200/portTICK_PERIOD_MS);
                        printf("Time till Floor: %d\n", inBetween);
                    }
                    printf("Floor 2- Open Doors\n");
                    Door_Moving(DOOROPEN);
                    GPIO.out_w1tc = BIT3;  //Set BIT3
                    GPIO.out_w1ts = BIT19;   //Clear BIT19
                    GPIO.out_w1tc = BIT18;   //Clear BIT18
                    vTaskDelay(2000/portTICK_PERIOD_MS);
                    printf("Close Doors - floor 2\n");
                    Door_Moving(DOORCLOSE);
                    GPIO.out_w1tc = BIT3;   //clear BIT3
                    GPIO.out_w1tc = BIT19;   //Clear BIT19
                    GPIO.out_w1tc = BIT18;   //Clear BIT18
                    difference = 10;
                }
                else{
                    vTaskDelay(200/portTICK_PERIOD_MS);
                    printf("Time till Floor: %d\n", difference);
                }
            }
            else{
                vTaskDelay(200/portTICK_PERIOD_MS);
                printf("Time till Floor: %d\n", difference);
            }
        }
        printf("Floor %d - Open Doors\n", newFloor);
        Door_Moving(DOOROPEN);
        switch(newFloor){
            case 1: 
                GPIO.out_w1tc = BIT3;   //Clear BIT3
                GPIO.out_w1tc = BIT19;  //Set BIT19
                GPIO.out_w1ts = BIT18;   //Clear BIT19
                break;
            case 2: 
                GPIO.out_w1tc = BIT3;  //Set BIT3
                GPIO.out_w1ts = BIT19;   //Clear BIT19
                GPIO.out_w1tc = BIT18;   //Clear BIT19
                break;
            case 3: 
                GPIO.out_w1ts = BIT3;  //Set BIT3
                GPIO.out_w1tc = BIT19;   //Clear BIT19
                GPIO.out_w1tc = BIT18;   //Clear BIT19
                break;
            default:
                break;
        }
        vTaskDelay(2000/portTICK_PERIOD_MS);
        printf("Close Doors\n");
        Door_Moving(DOORCLOSE);
        elevatorMotion = 0;
    }
}

void Servo_Set_Up() {    
    mcpwm_gpio_init(MCPWM_UNIT_0, MCPWM0A, Door_Servo); // To drive a RC servo, one MCPWM generator is enough
    mcpwm_config_t mcpwmConfig = {
        //Data structure with mcpwm configuration parameters
        .frequency = 50, // frequency = 50Hz, i.e. for every servo motor time period should be 20ms
        .cmpr_a = 0,     // duty cycle of PWMxA = 0
        .counter_mode = MCPWM_UP_COUNTER,
        .duty_mode = MCPWM_DUTY_MODE_0,
    };
    //Calling of mcpwm_init() with the above parameters to make the configuration effective.
    mcpwm_init(MCPWM_UNIT_0, MCPWM_TIMER_0, &mcpwmConfig);
}

void setUpButtons(uint8_t *in, int size){
    for (int i = 0; i < size; i++) // itierate over the size of the array
    {
        gpio_pad_select_gpio(in[i]);                // select the GPIO pins
        gpio_set_direction(in[i], GPIO_MODE_INPUT); // set direction as inputs
        gpio_pulldown_en(in[i]);
    }
    return;
}

void setUpInterruptButtons(uint8_t *button, int size){
    gpio_config_t io_conf;    
    io_conf.intr_type = GPIO_INTR_POSEDGE; 
    io_conf.mode = GPIO_MODE_INPUT; 
    io_conf.pin_bit_mask = GPIO_INPUT_PIN_SEL; 
    io_conf.pull_down_en = 1; 
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
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);

    for (int i = 0; i < size; i++){ // itierate over the size of the array
        gpio_isr_handler_add(button[i], gpio_isr_handler, (void *)button[i]);
    }
    return;
}

void setUpADC() {
    adc1_config_width(ADC_WIDTH_BIT_12);    //ADC capture width is 12Bit.
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_11);    //GPIO36
    adc1_config_channel_atten(ADC1_CHANNEL_3, ADC_ATTEN_DB_11);    //GPIO39
    adc1_config_channel_atten(ADC1_CHANNEL_6, ADC_ATTEN_DB_11);    //GPIO34
}
