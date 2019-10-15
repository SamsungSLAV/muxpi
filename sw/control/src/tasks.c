/*
 * Copyright (C) 2018 Samsung Electronics Co., Ltd All Rights Reserved
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
/**
 * @file        tasks.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       tasks source file
 */

#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>

#include <xprintf.h>

#include <firmware.h>
#include <leds.h>
#include <uart.h>
#include <cmd.h>
#include <oled.h>
#include <keys.h>
#include <adc.h>
#include <control.h>

#include <tasks.h>

#define RESISTOR_ADJUSTING_START_TIME   5000

const uint8_t colors[5][3] = {
        {0, 0, 0},
        {255, 0, 0},
        {0, 255, 0},
        {0, 0, 255},
        {255, 255, 255}
};

char general_buffer[32];

void usartTask(void *pvData);
void utilsTask(void *pvData);

uint8_t data;
QueueSetMemberHandle_t activated_queue;

void usartTask(void *pvData) {
    (void)pvData;

    vTaskDelay(100);

    while (1) {
        while (xQueueReceive(usart_incoming_queue, &data, portMAX_DELAY) == pdTRUE) {
           cmd_process_data(data);
        }

//        activated_queue = xQueueSelectFromSet(usart_queue_set, portMAX_DELAY);
//        if (activated_queue == usart_incoming_queue) {
//            while (xQueueReceive(usart_incoming_queue, &data, 0) == pdTRUE) {
//               cmd_process_data(data);
//            }
//        }
//        if (activated_queue == usart_outgoing_queue) {
//            while (xQueueReceive(usart_outgoing_queue, &data, 0) == pdTRUE) {
//                xprintf("pressed: %d\n", data); // This is strange. FIXME
//            }
//        }
    }
}

static void show_version(void) {
    xsprintf(general_buffer, "HW: 1.0 SW: %s", getVersion());
    // TODO: figure out how to get HW version.
    oled_display_string(5, 0, "  *  MuxPi  *  ", OC_on);
    oled_display_string(5, 2, general_buffer, OC_on);
}

int key1_pressed_time = 0;
int key2_pressed_time = 0;

void utilsTask(void *pvData) {
    (void)pvData;

//    oled_clean_screen();
//    show_version();
//
//    led_set_color(0, colors[0][0], colors[0][1], colors[0][2]);
//    led_set_color(1, colors[0][0], colors[0][1], colors[0][2]);

    while (1) {
        vTaskDelay(10);

//        key1_pressed_time = keys_is_1_pressed() ? key1_pressed_time + 1000 : 0;
//        key2_pressed_time = keys_is_2_pressed() ? key2_pressed_time + 1000 : 0;
//        if (key1_pressed_time == RESISTOR_ADJUSTING_START_TIME
//                && key2_pressed_time == RESISTOR_ADJUSTING_START_TIME) {
//            oled_clean_screen();
//            oled_draw_rectangle(0, 0, OLED_WIDTH, OLED_HEIGHT, OC_on);
//            oled_display_string(8, 1, "Release keys", OC_on);
//            while (keys_is_1_pressed() || keys_is_2_pressed()) {
//                vTaskDelay(50);
//            }
//            oled_clean_screen();
//            oled_draw_rectangle(0, 0, OLED_WIDTH, OLED_HEIGHT, OC_on);
////            adc_grab_channel1_and_set_to_zero();
//            lthor_id_set_state(Lthor_UART);
//            while (!keys_is_1_pressed() && !keys_is_2_pressed()) {
//                int res = adc_get_resistance();
//                xsprintf(general_buffer, "RES: %4dk", res);
//                oled_display_string(8, 1, general_buffer, OC_clean);
//                vTaskDelay(50);
//            }
////            adc_release_channel1();
//            lthor_id_set_state(Lthor_USB);
//            oled_clean_screen();
//            oled_draw_rectangle(0, 0, OLED_WIDTH, OLED_HEIGHT, OC_on);
//        }
    }
}

xTaskHandle th_usart, th_utils;
void create_tasks(void) {

    xTaskCreate(usartTask, (const char *) "USRT", 128, NULL, tskIDLE_PRIORITY+1, &th_usart);
    xTaskCreate(utilsTask, (const char *) "UTIL", 64, NULL, tskIDLE_PRIORITY+1, &th_utils);
//    vTaskSuspend(th_utils);
}
