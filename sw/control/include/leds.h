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
 * @file        leds.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       leds include file
 */

#ifndef INCLUDE_LEDS_H_
#define INCLUDE_LEDS_H_

#include <stdint.h>

#include <libopencm3/stm32/gpio.h>

#define ADDON_GPIO_PORT     GPIOB

#define AO_LED1             GPIO3
#define AO_LED2             GPIO4
#define AO_LED3             GPIO5

#define WS_PORT             GPIOB
#define WS_DATA             GPIO0

typedef struct {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} LedColor;

void leds_setup(void);
void led_toggle(uint32_t led);
void led_set_color(int led_nr, int r, int g, int b);
LedColor led_get_color(int led_nr);

#endif /* INCLUDE_LEDS_H_ */
