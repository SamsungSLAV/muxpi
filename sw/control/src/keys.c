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
 * @file        keys.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       keys source file
 */

#include <FreeRTOS.h>
#include <queue.h>

#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/exti.h>

#include <leds.h>
#include <uart.h>
#include <keys.h>

void keys_setup(void) {
    nvic_enable_irq(NVIC_EXTI4_15_IRQ);

    gpio_mode_setup(KEYS_PORT, GPIO_MODE_INPUT, GPIO_MODE_INPUT, KEY_1_GPIO | KEY_2_GPIO);

    exti_select_source(EXTI12, KEYS_PORT);
    exti_select_source(EXTI13, KEYS_PORT);
    exti_set_trigger(EXTI12, EXTI_TRIGGER_FALLING);
    exti_set_trigger(EXTI13, EXTI_TRIGGER_FALLING);
    exti_enable_request(EXTI12);
    exti_enable_request(EXTI13);
}


static void send_key_pressed_event(int key) {
    long xHigherPriorityTaskWoken = pdFALSE;
    uint8_t data = key;
    xQueueSendToBackFromISR(usart_outgoing_queue, &data, &xHigherPriorityTaskWoken);
    portEND_SWITCHING_ISR(xHigherPriorityTaskWoken);
}

void exti4_15_isr(void) {
    if (exti_get_flag_status(EXTI12)) {
        send_key_pressed_event(KEY_1);
    }

    if (exti_get_flag_status(EXTI13)) {
        send_key_pressed_event(KEY_2);
    }

    exti_reset_request(EXTI12 | EXTI13);
}

bool keys_is_1_pressed(void) {
    return !gpio_get(KEYS_PORT, KEY_1_GPIO);
}

bool keys_is_2_pressed(void) {
    return !gpio_get(KEYS_PORT, KEY_2_GPIO);
}
