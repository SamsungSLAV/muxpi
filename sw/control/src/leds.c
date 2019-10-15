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
 * @file        leds.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       leds source file
 */

#include <FreeRTOS.h>
#include <task.h>

#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/timer.h>

#include <oled.h>
#include <leds.h>

#include <ws2812.h>


void leds_setup(void) {
    gpio_mode_setup(ADDON_GPIO_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, AO_LED1 | AO_LED2 | AO_LED3);
    ws2812_init();
}

void led_toggle(uint32_t led) {
    if (led == AO_LED1 || led == AO_LED2 || led == AO_LED3) {
        gpio_toggle(ADDON_GPIO_PORT, led);
    }
}

void led_set_color(int led_nr, int r, int g, int b) {
    ws2812_set_led_color(led_nr, r, g, b);
}

LedColor led_get_color(int led_nr) {
    return ws2812_get_led_color(led_nr);
}
