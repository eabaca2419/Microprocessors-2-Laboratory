#include <stdio.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h" 
#include "freertos/task.h" 
#include "freertos/semphr.h"
#include <driver/ledc.h> 
#include <driver/adc.h>
#include "driver/gpio.h"

#define Mi_Corazon_Encantado TRUE
//#define Sweet_Victory TRUE
//#define PWM_MELDOY_2_CODE TRUE

#define ESP_INTR_FLAG_DEFAULT 0 
#define BUTTON1 22
#define GPIO_INPUT_PIN_SEL (1ULL << BUTTON1)

#define A1 110
#define A1_SHARP 116.5
#define B1 123.5
#define C1 261.6
#define C1_SHARP 277.2
#define D1 293.7
#define D1_SHARP 311.1
#define E1 329.6
#define F1 349.2
#define F1_SHARP 370
#define G1 392
#define G1_SHARP 415.3
#define A2 440
#define A2_SHARP 466.2
#define B2 493.9
#define C2 523.3
#define C2_SHARP 554.4
#define D2 587.3
#define D2_SHARP 622.3 
#define E2 659.3
#define F2 698.5
#define F2_SHARP 740
#define G2 784
#define G2_SHARP 830.6 
#define A3 880
#define A3_SHARP 932.3 
#define B3 987.8

SemaphoreHandle_t xSemaphore = NULL;
double lastNote = 0;

static void IRAM_ATTR gpio_isr_handler(void* arg) {
    xSemaphoreGive(xSemaphore);
}

void music(double note, int time){
    if(lastNote == note){
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        vTaskDelay(time/portTICK_PERIOD_MS);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        vTaskDelay(100/portTICK_PERIOD_MS);
        lastNote = note;
    }
    else{
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, note);   //Set the duty to the ADC value received
        vTaskDelay(time/portTICK_PERIOD_MS);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        vTaskDelay(100/portTICK_PERIOD_MS);
        lastNote = note;
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

void PWMtask(void *pvParameter) {
    while(1) {
        if(xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE){
#ifdef Mi_Corazon_Encantado
            music(G2, 500);
            music(G2, 500);
            music(E2, 250);
            music(F2, 250);
            music(G2, 250);
            music(A3, 250);
            music(G2, 500);
            music(F2, 500);
            music(E2, 500);
            music(D2, 500);
            music(E2, 500);
            music(E2, 500);
            music(C2, 250);
            music(D2, 250);
            music(E2, 250);
            music(F2, 250);
            music(E2, 500);
            music(D2, 500);
            music(C2, 500);
            music(B2, 500);
            vTaskDelay(500/portTICK_PERIOD_MS);
            music(A2, 250);
            music(A2, 250);
            music(C2, 500);
            music(A3, 500);
            music(G2, 1000);
            music(C2, 500);
            music(D2, 250);
            music(E2, 250);
            music(F2, 500);
            music(E2, 500);
            music(D2, 500);
            music(C2, 500);
            music(D2, 1000);
            music(C2, 500);
            music(B2, 500);
            music(C2, 3000);
            vTaskDelay(1000/portTICK_PERIOD_MS);

            music(C2, 250);
            music(C2, 250);
            music(C2, 250);
            music(C2, 250);
            music(C2, 500);
            music(A2_SHARP, 250);
            music(G1_SHARP, 500);
            music(A2_SHARP, 250);
            music(C2, 500);
            music(A2_SHARP, 1000);
            music(A2_SHARP, 250);
            music(A2_SHARP, 250);
            music(A2_SHARP, 250);
            music(A2_SHARP, 250);
            music(A2_SHARP, 250);
            music(A2_SHARP, 250);
            music(G1_SHARP, 250);
            music(G1, 500);
            music(G1_SHARP, 250);
            music(A2_SHARP, 500);
            music(G1_SHARP, 1000);
            music(G1_SHARP, 250);
            music(G1_SHARP, 250);
            music(G1_SHARP, 250);
            music(G1_SHARP, 250);
            music(G1_SHARP, 500);
            music(G1, 500);
            music(G1, 500);
            music(F1, 500);
            music(F1, 500);
            music(G1, 500);
            music(D1_SHARP, 250);
            music(F1, 500);
            music(G1, 1500);

            music(G1_SHARP, 500);
            music(A2_SHARP, 250);
            music(C2, 1000);
            music(C2, 250);
            music(C2, 250);
            music(C2, 250);
            music(C2, 250);
            music(C2, 500);
            music(A2_SHARP, 250);
            music(G1_SHARP, 500);
            music(A2_SHARP, 250);
            music(C2, 500);
            music(A2_SHARP, 1000);
            music(A2_SHARP, 250);
            music(C2, 250);
            music(D2, 250);
            music(D2, 250);
            music(D2_SHARP, 500);
            music(A2_SHARP, 250);
            music(G1_SHARP, 250);
            music(G1, 250);
            music(G1_SHARP, 1000);
            music(A2_SHARP, 500);
            music(G1_SHARP, 500);
            music(A2_SHARP, 250);
            music(G1, 250);
            music(G1, 250);
            vTaskDelay(500/portTICK_PERIOD_MS);
            music(G1, 250);
            music(G1, 500);
            music(G2, 500);
            music(F2, 500);
            music(F2, 1000);
            music(F2, 250);
            music(D2_SHARP, 250);
            music(D2, 250);
            music(D2_SHARP, 250);
            music(C2, 500);
            music(D2, 500);
            music(D2_SHARP, 250);
            music(D2_SHARP, 500);
            music(D2, 250);
            music(D2_SHARP, 500);
            music(D2, 250);
            music(D2_SHARP, 500);
            music(C2, 250);
            music(F2, 250);
            music(D2_SHARP, 250);
            music(D2, 250);
            music(C2, 250);
            music(C2, 250);
            music(A2_SHARP, 250);
            music(A2_SHARP, 250);
            music(G1, 250);
            music(A2_SHARP, 250);
            music(A2_SHARP, 500);
            music(G1, 250);
            music(A2_SHARP, 1000);
            music(A2_SHARP, 250);
            music(C2, 250);
            music(D2, 250);
            music(D2_SHARP, 250);
            music(D2, 250);
            music(D2_SHARP, 250);
            music(C2, 1000);
            music(D2_SHARP, 250);
            music(D2, 250);
            music(D2_SHARP, 250);
            music(C2, 250);
            music(C2, 250);
            music(G2, 500);
            music(F2, 1000);
            music(F2, 250);
            music(F2, 250);
            music(D2_SHARP, 250);
            music(F2, 250);
            music(G2, 2000);

            music(G2, 500);
            music(G2, 500);
            music(E2, 250);
            music(F2, 250);
            music(G2, 250);
            music(A3, 250);
            music(G2, 500);
            music(F2, 500);
            music(E2, 500);
            music(D2, 500);
            music(E2, 500);
            music(E2, 500);
            music(C2, 250);
            music(D2, 250);
            music(E2, 250);
            music(F2, 250);
            music(E2, 500);
            music(D2, 500);
            music(C2, 500);
            music(B2, 500);
            vTaskDelay(500/portTICK_PERIOD_MS);
            music(A2, 250);
            music(A2, 250);
            music(C2, 500);
            music(A3, 500);
            music(G2, 1000);
            music(C2, 500);
            music(D2, 250);
            music(E2, 250);
            music(F2, 500);
            music(E2, 500);
            music(D2, 250);
            music(C2, 250);
            music(C2, 250);
            music(D2, 250);
            music(E2, 500);
            music(F2, 500);
            music(D2, 1000);

            music(G2, 500);
            music(G2, 500);
            music(E2, 250);
            music(F2, 250);
            music(G2, 250);
            music(A3, 250);
            music(G2, 500);
            music(F2, 500);
            music(E2, 500);
            music(D2, 500);
            music(E2, 500);
            music(E2, 500);
            music(C2, 250);
            music(D2, 250);
            music(E2, 250);
            music(F2, 250);
            music(E2, 500);
            music(D2, 500);
            music(C2, 500);
            music(B2, 500);
            vTaskDelay(500/portTICK_PERIOD_MS);
            music(A2, 250);
            music(A2, 250);
            music(C2, 500);
            music(A3, 500);
            music(G2, 1000);
            music(C2, 500);
            music(D2, 250);
            music(E2, 250);
            music(F2, 500);
            music(E2, 500);
            music(D2, 500);
            music(C2, 500);
            music(D2, 1000);
            music(C2, 500 );
            music(B2, 500);
            music(C2, 2000);
#elif defined(Sweet_Victory)
            music(C2, 1000);
            music(C2, 250);
            music(C2, 250);
            music((C2 + D2)/2, 1000);
            music((C2 + D2)/2, 250);
            music((C2 + D2)/2, 250);
            music((A2_SHARP + D2 + F2)/3, 1000);
            music((A2_SHARP + D2 + F2)/3, 250);
            music((A2_SHARP + D2 + F2)/3, 250);
            music((A2_SHARP + D2 + F2)/3, 250);
            music((G1 + A2_SHARP + D2)/3, 500);
            vTaskDelay(500/portTICK_PERIOD_MS);
            music((A2_SHARP + D2 + F2)/3, 250);
            vTaskDelay(500/portTICK_PERIOD_MS);
            music((C2 + E2 + G2)/3, 500);
            vTaskDelay(1000/portTICK_PERIOD_MS);

            music(D2, 500);
            music(F2, 250);
            music(E2, 250);
            music(C2, 500);
            music(D2, 1000);
            music(F2, 250);
            music(E2, 250);
            music(C2, 250);
            music(D2, 1000);
            music(F2, 250);
            music(E2, 250);
            music(C2, 500);
            music(A2, 500);

            music(A2, 250);
            music(A2, 250);
            music(C2, 500);
            music(D2, 450);
            music(C2, 250);
            music(A2, 1500);
            vTaskDelay(750/portTICK_PERIOD_MS);
            music(F2, 250);
            music(F2, 450);
            music(G2, 500);
            music(F2, 250);
            music(F2, 500);
            music(C2, 250);
            music(D2, 500);
            music(D2, 350);
            music(A3, 350);
            music(G2, 250);
            music(F2, 450);
            music(G2, 500);
            music(F2, 250);
            music(D2, 2000);
            // music(, );

            // music(, );
#endif
       }
    } 
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
    tChaConfig.gpio_num = 4; 
    tChaConfig.speed_mode = LEDC_LOW_SPEED_MODE;    //Set the speed mode to low
    tChaConfig.channel = LEDC_CHANNEL_0;    //EDC channel 0
    tChaConfig.intr_type = LEDC_INTR_DISABLE;   //Disable LEDC interrupt
    tChaConfig.timer_sel = LEDC_TIMER_0 ;   //LEDC timer 0
    tChaConfig.duty = 0;    //Set the original duty at 0
    tChaConfig.hpoint = 4096;   //Highest point for the PWM is at 4096
    ledc_channel_config(&tChaConfig);
}

void app_main() {
    setPWM();   //Setup PWM
    setUpGPIO();    //Setup the GPIO interrupt   
    xSemaphore = xSemaphoreCreateBinary();
    xTaskCreate(&PWMtask,"PWMtask",2048,NULL,5,NULL);   //Create PWM task
}

#ifdef PWM_MELDOY_2_CODE
void setPWM() {
    ledc_timer_config_t timerConfig; 
    timerConfig.duty_resolution = LEDC_TIMER_13_BIT;    //LEDC PWM duty resolution of 13 bits
    timerConfig.timer_num = LEDC_TIMER_0;   //LEDC timer 0
    timerConfig.freq_hz = 5000;     //Set frequency at 5kHz
    timerConfig.speed_mode = LEDC_LOW_SPEED_MODE;   //Set speed mode into low
    timerConfig.clk_cfg = LEDC_AUTO_CLK;    //The driver will automatically select the source clock(REF_TICK or APB) based on the giving resolution and duty parameter when init the timer
    ledc_timer_config(&timerConfig);

    ledc_channel_config_t tChaConfig; 
    tChaConfig.gpio_num = 4; 
    tChaConfig.speed_mode = LEDC_LOW_SPEED_MODE;    //Set the speed mode to low
    tChaConfig.channel = LEDC_CHANNEL_0;    //EDC channel 0
    tChaConfig.intr_type = LEDC_INTR_DISABLE;   //Disable LEDC interrupt
    tChaConfig.timer_sel = LEDC_TIMER_0;   //LEDC timer 0
    tChaConfig.duty = 0;    //Set the original duty at 0
    tChaConfig.hpoint = 4096;   //Highest point for the PWM is at 4096
    ledc_channel_config(&tChaConfig);

    /*PWM 2*/
    ledc_timer_config_t timerConfig2; 
    timerConfig2.duty_resolution = LEDC_TIMER_13_BIT;    //LEDC PWM duty resolution of 13 bits
    timerConfig2.timer_num = LEDC_TIMER_1;   //LEDC timer 0
    timerConfig2.freq_hz = 5000;     //Set frequency at 5kHz
    timerConfig2.speed_mode = LEDC_LOW_SPEED_MODE;   //Set speed mode into low
    timerConfig2.clk_cfg = LEDC_AUTO_CLK;    //The driver will automatically select the source clock(REF_TICK or APB) based on the giving resolution and duty parameter when init the timer
    ledc_timer_config(&timerConfig2);

    ledc_channel_config_t tChaConfig2; 
    tChaConfig2.gpio_num = 22; 
    tChaConfig2.speed_mode = LEDC_LOW_SPEED_MODE;    //Set the speed mode to low
    tChaConfig2.channel = LEDC_CHANNEL_1;    //EDC channel 0
    tChaConfig2.intr_type = LEDC_INTR_DISABLE;   //Disable LEDC interrupt
    tChaConfig2.timer_sel = LEDC_TIMER_1;   //LEDC timer 0
    tChaConfig2.duty = 0;    //Set the original duty at 0
    tChaConfig2.hpoint = 4096;   //Highest point for the PWM is at 4096
    ledc_channel_config(&tChaConfig2);
}
void music(double note, double note2, int time){
    if(note2 != 0 && note == 0){
        if(lastNote2 == note2){
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 2000);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
            vTaskDelay(time/portTICK_PERIOD_MS);
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 1);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
            vTaskDelay(100/portTICK_PERIOD_MS);
            lastNote2 = note2;
        }
        else{
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 2000);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
            ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, note2);   //Set the duty to the ADC value received
            vTaskDelay(time/portTICK_PERIOD_MS);
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 0);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
            vTaskDelay(100/portTICK_PERIOD_MS);
            lastNote2 = note2;
        }
    }
    else if(note2 == 0 && note != 0){
        if(lastNote == note){
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
            vTaskDelay(time/portTICK_PERIOD_MS);
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
            vTaskDelay(100/portTICK_PERIOD_MS);
            lastNote = note;
        }
        else{
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
            ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, note);   //Set the duty to the ADC value received
            vTaskDelay(time/portTICK_PERIOD_MS);
            ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
            ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
            vTaskDelay(100/portTICK_PERIOD_MS);
            lastNote = note;
        }
    }
    else if(lastNote == note){
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, note2);  //Set up frequency for note 2 
        vTaskDelay(time/portTICK_PERIOD_MS);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        vTaskDelay(100/portTICK_PERIOD_MS);
        lastNote = note;
        lastNote2 = note2;
    }
    else if(lastNote2 == note2){
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, note);  //Set up frequency for note 1
        vTaskDelay(time/portTICK_PERIOD_MS);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        vTaskDelay(100/portTICK_PERIOD_MS);
        lastNote = note;
        lastNote2 = note2;
    }
    else if(lastNote == note && lastNote2 == note2){
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        vTaskDelay(time/portTICK_PERIOD_MS);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        vTaskDelay(100/portTICK_PERIOD_MS);
        lastNote = note;
        lastNote2 = note2;
    }
    else{
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 2000);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, note);   //Set up frequency for note 1
        ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, note2);  //Set up frequency for note 2 
        vTaskDelay(time/portTICK_PERIOD_MS);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
        ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1, 0);
        ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_1);
        vTaskDelay(100/portTICK_PERIOD_MS);
        lastNote = note;
        lastNote2 = note2;
    }
}
void michaelMyersSong(){
    music(E2, 0, 500);
    music(0, F2, 500);
    music(C2, 0, 500);
    music(0, D2, 500);
    music(A2, 0, 500);
    music(E2, A2, 500);
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    // music(, );
    
    // music(, );
            vTaskDelay(500/portTICK_PERIOD_MS);

}
#endif