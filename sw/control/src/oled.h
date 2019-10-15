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
 * @file        oled.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       oled include file
 */

#ifndef SRC_OLED_H_
#define SRC_OLED_H_

#include <libopencm3/stm32/gpio.h>

#define OLED_WIDTH              (128)
#define OLED_HEIGHT             (32)

#define OLED_PORT       GPIOA
#define OLED_RES        GPIO6
#define OLED_D_C        GPIO3
#define OLED_NSS        GPIO4

typedef enum {
    OC_on,
    OC_off,
    OC_inverse,
    OC_clean
} oled_color;

void oled_setup(void);
void oled_clean_screen(void);
void oled_init(void);
void oled_display_string(int x, int y, char ch[], oled_color color);
void oled_display_char(int x, int y, char ch, oled_color color) ;

void oled_draw_point(int x, int y, oled_color color);
void oled_draw_line(int x1, int y1, int x2, int y2, oled_color color);
void oled_draw_circle(int cx,int cy, int radius, oled_color color);
void oled_draw_rectangle(int x, int y, int width, int height, oled_color color);

oled_color oled_color_from_string(char *string);

#endif /* SRC_OLED_H_ */
