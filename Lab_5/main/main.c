#include <string.h>
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h"
#include "freertos/event_groups.h" 
#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event.h" 
#include "esp_log.h"
#include "nvs_flash.h"
#include "driver/gpio.h"

#include "lwip/sys.h" 
#include "lwip/netdb.h" 
#include "lwip/api.h"

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
    <input class="btn" id="btn0" type="button" value="Turn OFF" onclick="sendRequest()">
    <input class="btn" id="btn1" type="button" value="Turn ON" onclick="sendRequest1()">
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

        .btn {
            margin: 0;
            margin-top: .5%;
            background-color: #FB9541;
            width: 48%;
            border: none;
            color: white;
            padding: 25px 38px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
        }

    </style>
    <script> function sendRequest() { var http = new XMLHttpRequest(); http.onreadystatechange = (() => { if (http.readyState === 4) { if (http.status === 200) { var res = http.responseText; } } }); http.open("GET", "0", true); http.send(); } function sendRequest1() { var http = new XMLHttpRequest(); http.onreadystatechange = (() => { if (http.readyState === 4) { if (http.status === 200) { var res = http.responseText; } } }); http.open("GET", "1", true); http.send(); }</script>
</body>

</html>)=====";

#define EXAMPLE_ESP_WIFI_SSID "ESP_WIFI_MODULE"
#define EXAMPLE_ESP_WIFI_PASS "password"
#define EXAMPLE_MAX_STA_CONN 3 
#define BLINK_GPIO 2

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
    gpio_pad_select_gpio(BLINK_GPIO);   //Clear pin for LED
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);   //Set pin as output
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
            if(buf[5]=='0'){
                //send anything back
                netconn_write(conn, http_html_txt, sizeof(http_html_hdr)-1, NETCONN_NOCOPY); 
                netconn_write(conn, "1", 1, NETCONN_NOCOPY);
                gpio_set_level(BLINK_GPIO, 0);
            } 
            else{
                //else send original home page
                netconn_write(conn, http_html_hdr, sizeof(http_html_hdr)-1, NETCONN_NOCOPY); 
                netconn_write(conn, http_index_hml, sizeof(http_index_hml)-1, NETCONN_NOCOPY);
                gpio_set_level(BLINK_GPIO, 1);
            } 
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

void app_main() {
    nvs_flash_init();
    wifi_init_softap(); //Initialize softAP
    xTaskCreate(&http_server, "http_server", 2048, NULL, 5, NULL);
}

