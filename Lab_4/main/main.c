#include <stdio.h>
#include <math.h>
#include "sdkconfig.h"
#include <driver/dac.h> 
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h"

/*Compute trialgular waveform value*/
void createTriangleWave(void *pvParameter) {
    dac_output_enable(DAC_CHANNEL_1);   //DAC channel 1 is GPIO25(ESP32)
    static int i = 0;
    while(1) {
        for(i = 0; i < 255; i++){   //Increase the DAC to the limit of 255
            dac_output_voltage(DAC_CHANNEL_1, i);
            vTaskDelay(10 / portTICK_PERIOD_MS);
        }
        for(i = 255; i > 0; i--){   //Decrease the DAC to the limit of 255
            dac_output_voltage(DAC_CHANNEL_1, i);
            vTaskDelay(10 / portTICK_PERIOD_MS);
        }
        }
    }

/*Compute sine waveform value*/
void createSineWave(void *pvParameter) {
    dac_output_enable(DAC_CHANNEL_2);   //DAC channel 2 is GPIO26(ESP32)
    static int i = 0;
    float PI = 3.14159265;
    int n;
    while(1) {
        //compute sine waveform value 
        n = sin( (PI / 180) * i++ ) * 100 + 100;    //Sin wave formula
        i += 36;    //Run the sin wave in 10Hz
        if(i == 360) i = 0;
        dac_output_voltage(DAC_CHANNEL_2, n);
        vTaskDelay(10/portTICK_PERIOD_MS);     
        }
    }
void app_main() {
    xTaskCreate(&createTriangleWave,"createTriangleWave",4096,NULL,5,NULL); 
    xTaskCreate(&createSineWave,"createSineWave",4096,NULL,5,NULL);
}