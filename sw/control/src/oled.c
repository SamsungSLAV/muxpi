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
 * @file        oled.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       oled source file
 */

#include <stdio.h>
#include <string.h>

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/spi.h>

#include <oled.h>

// 8 x 16 font
static const unsigned char OLEDCharMap[] = {
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//  0
        0x00,0x00,0x00,0xF8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x33,0x30,0x00,0x00,0x00,//! 1
        0x00,0x10,0x0C,0x06,0x10,0x0C,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//" 2
        0x40,0xC0,0x78,0x40,0xC0,0x78,0x40,0x00,0x04,0x3F,0x04,0x04,0x3F,0x04,0x04,0x00,//# 3
        0x00,0x70,0x88,0xFC,0x08,0x30,0x00,0x00,0x00,0x18,0x20,0xFF,0x21,0x1E,0x00,0x00,//$ 4
        0xF0,0x08,0xF0,0x00,0xE0,0x18,0x00,0x00,0x00,0x21,0x1C,0x03,0x1E,0x21,0x1E,0x00,//% 5
        0x00,0xF0,0x08,0x88,0x70,0x00,0x00,0x00,0x1E,0x21,0x23,0x24,0x19,0x27,0x21,0x10,//& 6
        0x10,0x16,0x0E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//' 7
        0x00,0x00,0x00,0xE0,0x18,0x04,0x02,0x00,0x00,0x00,0x00,0x07,0x18,0x20,0x40,0x00,//( 8
        0x00,0x02,0x04,0x18,0xE0,0x00,0x00,0x00,0x00,0x40,0x20,0x18,0x07,0x00,0x00,0x00,//) 9
        0x40,0x40,0x80,0xF0,0x80,0x40,0x40,0x00,0x02,0x02,0x01,0x0F,0x01,0x02,0x02,0x00,//* 10
        0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x1F,0x01,0x01,0x01,0x00,//+ 11
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xB0,0x70,0x00,0x00,0x00,0x00,0x00,//, 12
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,//- 13
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,0x00,0x00,//. 14
        0x00,0x00,0x00,0x00,0x80,0x60,0x18,0x04,0x00,0x60,0x18,0x06,0x01,0x00,0x00,0x00,/// 15
        0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,//0 16
        0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//1 17
        0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,//2 18
        0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,//3 19
        0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,//4 20
        0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,//5 21
        0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,//6 22
        0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,//7 23
        0x00,0x70,0x88,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,//8 24
        0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,//9 25
        0x00,0x00,0x00,0xC0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,//: 26
        0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x00,0x00,0x00,0x00,//; 27
        0x00,0x00,0x80,0x40,0x20,0x10,0x08,0x00,0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x00,//< 28
        0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x00,//= 29
        0x00,0x08,0x10,0x20,0x40,0x80,0x00,0x00,0x00,0x20,0x10,0x08,0x04,0x02,0x01,0x00,//> 30
        0x00,0x70,0x48,0x08,0x08,0x08,0xF0,0x00,0x00,0x00,0x00,0x30,0x36,0x01,0x00,0x00,//? 31
        0xC0,0x30,0xC8,0x28,0xE8,0x10,0xE0,0x00,0x07,0x18,0x27,0x24,0x23,0x14,0x0B,0x00,//@ 32
        0x00,0x00,0xC0,0x38,0xE0,0x00,0x00,0x00,0x20,0x3C,0x23,0x02,0x02,0x27,0x38,0x20,//A 33
        0x08,0xF8,0x88,0x88,0x88,0x70,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x11,0x0E,0x00,//B 34
        0xC0,0x30,0x08,0x08,0x08,0x08,0x38,0x00,0x07,0x18,0x20,0x20,0x20,0x10,0x08,0x00,//C 35
        0x08,0xF8,0x08,0x08,0x08,0x10,0xE0,0x00,0x20,0x3F,0x20,0x20,0x20,0x10,0x0F,0x00,//D 36
        0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x20,0x23,0x20,0x18,0x00,//E 37
        0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x00,0x03,0x00,0x00,0x00,//F 38
        0xC0,0x30,0x08,0x08,0x08,0x38,0x00,0x00,0x07,0x18,0x20,0x20,0x22,0x1E,0x02,0x00,//G 39
        0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x20,0x3F,0x21,0x01,0x01,0x21,0x3F,0x20,//H 40
        0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//I 41
        0x00,0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,0x00,//J 42
        0x08,0xF8,0x88,0xC0,0x28,0x18,0x08,0x00,0x20,0x3F,0x20,0x01,0x26,0x38,0x20,0x00,//K 43
        0x08,0xF8,0x08,0x00,0x00,0x00,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x20,0x30,0x00,//L 44
        0x08,0xF8,0xF8,0x00,0xF8,0xF8,0x08,0x00,0x20,0x3F,0x00,0x3F,0x00,0x3F,0x20,0x00,//M 45
        0x08,0xF8,0x30,0xC0,0x00,0x08,0xF8,0x08,0x20,0x3F,0x20,0x00,0x07,0x18,0x3F,0x00,//N 46
        0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x10,0x20,0x20,0x20,0x10,0x0F,0x00,//O 47
        0x08,0xF8,0x08,0x08,0x08,0x08,0xF0,0x00,0x20,0x3F,0x21,0x01,0x01,0x01,0x00,0x00,//P 48
        0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x18,0x24,0x24,0x38,0x50,0x4F,0x00,//Q 49
        0x08,0xF8,0x88,0x88,0x88,0x88,0x70,0x00,0x20,0x3F,0x20,0x00,0x03,0x0C,0x30,0x20,//R 50
        0x00,0x70,0x88,0x08,0x08,0x08,0x38,0x00,0x00,0x38,0x20,0x21,0x21,0x22,0x1C,0x00,//S 51
        0x18,0x08,0x08,0xF8,0x08,0x08,0x18,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//T 52
        0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//U 53
        0x08,0x78,0x88,0x00,0x00,0xC8,0x38,0x08,0x00,0x00,0x07,0x38,0x0E,0x01,0x00,0x00,//V 54
        0xF8,0x08,0x00,0xF8,0x00,0x08,0xF8,0x00,0x03,0x3C,0x07,0x00,0x07,0x3C,0x03,0x00,//W 55
        0x08,0x18,0x68,0x80,0x80,0x68,0x18,0x08,0x20,0x30,0x2C,0x03,0x03,0x2C,0x30,0x20,//X 56
        0x08,0x38,0xC8,0x00,0xC8,0x38,0x08,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//Y 57
        0x10,0x08,0x08,0x08,0xC8,0x38,0x08,0x00,0x20,0x38,0x26,0x21,0x20,0x20,0x18,0x00,//Z 58
        0x00,0x00,0x00,0xFE,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x7F,0x40,0x40,0x40,0x00,//[ 59
        0x00,0x0C,0x30,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x06,0x38,0xC0,0x00,//\ 60
        0x00,0x02,0x02,0x02,0xFE,0x00,0x00,0x00,0x00,0x40,0x40,0x40,0x7F,0x00,0x00,0x00,//] 61
        0x00,0x00,0x04,0x02,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//^ 62
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,//_ 63
        0x00,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//` 64
        0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,//a 65
        0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,//b 66
        0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,//c 67
        0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,//d 68
        0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,//e 69
        0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//f 70
        0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x6B,0x94,0x94,0x94,0x93,0x60,0x00,//g 71
        0x08,0xF8,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//h 72
        0x00,0x80,0x98,0x98,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//i 73
        0x00,0x00,0x00,0x80,0x98,0x98,0x00,0x00,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,//j 74
        0x08,0xF8,0x00,0x00,0x80,0x80,0x80,0x00,0x20,0x3F,0x24,0x02,0x2D,0x30,0x20,0x00,//k 75
        0x00,0x08,0x08,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//l 76
        0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x20,0x3F,0x20,0x00,0x3F,0x20,0x00,0x3F,//m 77
        0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//n 78
        0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//o 79
        0x80,0x80,0x00,0x80,0x80,0x00,0x00,0x00,0x80,0xFF,0xA1,0x20,0x20,0x11,0x0E,0x00,//p 80
        0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x0E,0x11,0x20,0x20,0xA0,0xFF,0x80,//q 81
        0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x20,0x20,0x3F,0x21,0x20,0x00,0x01,0x00,//r 82
        0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x33,0x24,0x24,0x24,0x24,0x19,0x00,//s 83
        0x00,0x80,0x80,0xE0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x1F,0x20,0x20,0x00,0x00,//t 84
        0x80,0x80,0x00,0x00,0x00,0x80,0x80,0x00,0x00,0x1F,0x20,0x20,0x20,0x10,0x3F,0x20,//u 85
        0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x00,0x01,0x0E,0x30,0x08,0x06,0x01,0x00,//v 86
        0x80,0x80,0x00,0x80,0x00,0x80,0x80,0x80,0x0F,0x30,0x0C,0x03,0x0C,0x30,0x0F,0x00,//w 87
        0x00,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x31,0x2E,0x0E,0x31,0x20,0x00,//x 88
        0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x80,0x81,0x8E,0x70,0x18,0x06,0x01,0x00,//y 89
        0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x21,0x30,0x2C,0x22,0x21,0x30,0x00,//z 90
        0x00,0x00,0x00,0x00,0x80,0x7C,0x02,0x02,0x00,0x00,0x00,0x00,0x00,0x3F,0x40,0x40,//{ 91
        0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,//| 92
        0x00,0x02,0x02,0x7C,0x80,0x00,0x00,0x00,0x00,0x40,0x40,0x3F,0x00,0x00,0x00,0x00,//} 93
        0x00,0x06,0x01,0x01,0x02,0x02,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//~ 94
};

static uint8_t oled_buffer[OLED_WIDTH][OLED_HEIGHT / 8];
static int oled_pos_x = 0;
static int oled_pos_y = 0;

void oled_init(void) {
    rcc_periph_clock_enable(RCC_SPI1);

    gpio_mode_setup(OLED_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, OLED_D_C | OLED_RES | OLED_NSS);

    gpio_mode_setup(OLED_PORT, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO5 | GPIO7);
    gpio_set_af(GPIOA, GPIO_AF0, GPIO5 | GPIO7);

    spi_set_baudrate_prescaler(SPI1, SPI_CR1_BR_FPCLK_DIV_16);
    spi_set_clock_polarity_1(SPI1);
    spi_set_clock_phase_1(SPI1);
    spi_set_master_mode(SPI1);

    spi_set_data_size(SPI1, SPI_CR2_DS_8BIT);
    spi_enable_ss_output(SPI1);

    spi_fifo_reception_threshold_8bit(SPI1);
    spi_set_nss_high(SPI1);
    spi_enable(SPI1);
}

static void oled_write_data(const unsigned char dat) {
    gpio_set(OLED_PORT, OLED_NSS);
    gpio_set(OLED_PORT, OLED_D_C);
    gpio_clear(OLED_PORT, OLED_NSS);

    spi_send8(SPI1, dat);
    while ((SPI_SR(SPI1) & SPI_SR_BSY));

    gpio_set(OLED_PORT, OLED_NSS);

    oled_buffer[oled_pos_x][oled_pos_y / 8] = dat;
}

static void oled_write_cmd(unsigned char cmd) {
    gpio_set(OLED_PORT, OLED_NSS);
    gpio_clear(OLED_PORT, OLED_D_C);
    gpio_clear(OLED_PORT, OLED_NSS);

    spi_send8(SPI1, cmd);
    while ((SPI_SR(SPI1) & SPI_SR_BSY));

    gpio_set(OLED_PORT, OLED_NSS);
}

static void oled_set_pos_for_text(int x, int y) {
    y = y/8 + y%8;
    oled_write_cmd(0xb0 + y);
    oled_write_cmd(((x & 0xf0) >> 4) | 0x10);
    oled_write_cmd((x & 0x0f));
} 

static void oled_set_pos_for_point(int x, int y) {
    oled_pos_x = x;
    oled_pos_y = y;

    y = y/8;
    oled_write_cmd(0xb0 + y);
    oled_write_cmd(((x & 0xf0) >> 4) | 0x10);
    oled_write_cmd((x & 0x0f));
}

static void oled_reset(void) {
    gpio_set(OLED_PORT, OLED_RES);
    for (volatile int d = 0; d < 99; d++);
    gpio_clear(OLED_PORT, OLED_RES);
    for (volatile int d = 0; d < 99; d++);
    gpio_set(OLED_PORT, OLED_RES);
}

void oled_setup(void) {
    oled_init();
    oled_reset();

    oled_write_cmd(0xae);//--turn off oled panel
    oled_write_cmd(0x00);//---set low column address
    oled_write_cmd(0x10);//---set high column address
    oled_write_cmd(0x40);//--set start line address  Set Mapping RAM Display       Start Line (0x00~0x3F)
    oled_write_cmd(0x81);//--set contrast control register
    oled_write_cmd(0xcf); // Set SEG Output Current Brightness
    oled_write_cmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
    oled_write_cmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
    oled_write_cmd(0xa6);//--set normal display
    oled_write_cmd(0xa8);//--set multiplex ratio(1 to 64)
    oled_write_cmd(0x1f);//--1/64 duty
    oled_write_cmd(0xd3);//-set display offset Shift Mapping RAM Counter (0x00~0x3F)
    oled_write_cmd(0x00);//-not offset
    oled_write_cmd(0xd5);//--set display clock divide ratio/oscillator frequency
    oled_write_cmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
    oled_write_cmd(0xd9);//--set pre-charge period
    oled_write_cmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
    oled_write_cmd(0xda);//--set com pins hardware configuration
    oled_write_cmd(0x02);
    oled_write_cmd(0xdb);//--set vcomh
    oled_write_cmd(0x40);//Set VCOM Deselect Level
    oled_write_cmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
    oled_write_cmd(0x02);//
    oled_write_cmd(0x8d);//--set Charge Pump enable/disable
    oled_write_cmd(0x14);//--set(0x10) disable
    oled_write_cmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
    oled_write_cmd(0xa6);// Disable Inverse Display On (0xa6/a7)
    oled_write_cmd(0xaf);//--turn on oled panel

    oled_clean_screen();
}

void oled_display_char(int x, int y, char ch, oled_color color) {
    int i = 0;
    int index = ch - 32;

    if (x < 0 || x > (OLED_WIDTH - 8) || y < 0 || y > (OLED_HEIGHT - 16)) {
        return;
    }

    oled_set_pos_for_text(x, y);
    oled_pos_x = x;
    oled_pos_y = y * 8;

    for (i = 0; i < 8; i++) {
        uint8_t current_data = oled_buffer[oled_pos_x][oled_pos_y / 8];
        uint8_t new_data = 0;
        int char_idx = index * 16 + i;
        switch (color) {
          case OC_clean:    new_data =                 OLEDCharMap[char_idx]; break;
          case OC_on:       new_data = current_data |  OLEDCharMap[char_idx]; break;
          case OC_off:      new_data = current_data & ~OLEDCharMap[char_idx]; break;
          case OC_inverse:  new_data = current_data ^  OLEDCharMap[char_idx]; break;
        }
        oled_write_data(new_data);
        oled_pos_x++;
    }

    oled_set_pos_for_text(x, y + 8);
    oled_pos_x = x;
    oled_pos_y += 8;

    for (i = 0; i < 8; i++) {
        uint8_t current_data = oled_buffer[oled_pos_x][oled_pos_y / 8];
        uint8_t new_data = 0;
        int char_idx = index * 16 + i + 8;
        switch (color) {
          case OC_clean:    new_data =                 OLEDCharMap[char_idx]; break;
          case OC_on:       new_data = current_data |  OLEDCharMap[char_idx]; break;
          case OC_off:      new_data = current_data & ~OLEDCharMap[char_idx]; break;
          case OC_inverse:  new_data = current_data ^  OLEDCharMap[char_idx]; break;
        }
        oled_write_data(new_data);
        oled_pos_x++;
    }
}

void oled_display_string(int x, int y, char ch[], oled_color color) {
    int i = 0;
    while (ch[i] != '\0') {
        oled_display_char(x, y, ch[i], color);
        x += 8;
        i++;
    }
}

void oled_clean_screen(void) {
    int x,y;
    unsigned char data = 0x00;
    for (y = 0; y < 8; y++) {
        // set pos (y, 0)
        oled_write_cmd(0xb0 + y);
        oled_write_cmd(0x00);
        oled_write_cmd(0x10);
        for (x = 0; x < OLED_WIDTH; x++) {
            oled_write_data(data);
        }
    }
    memset(oled_buffer, 0, sizeof(oled_buffer));
} 

void oled_draw_point(int x, int y, oled_color color) {
    oled_set_pos_for_point(x, y);
    uint8_t current_data = oled_buffer[oled_pos_x][oled_pos_y / 8];
    uint8_t new_data = 0;
    switch (color) {
      case OC_clean:
      case OC_on:       new_data = current_data |  (1 << (y & 7)); break;
      case OC_off:      new_data = current_data & ~(1 << (y & 7)); break;
      case OC_inverse:  new_data = current_data ^  (1 << (y & 7)); break;
    }
    oled_write_data(new_data);
}

void oled_draw_line(int x1, int y1, int x2, int y2, oled_color color) {
    int CurrentX, CurrentY, Xinc, Yinc, Dx, Dy, TwoDx, TwoDy, TwoDxAccumulatedError, TwoDyAccumulatedError;

    Dx = (x2 - x1);
    Dy = (y2 - y1);

    TwoDx = Dx + Dx;
    TwoDy = Dy + Dy;

    CurrentX = x1;
    CurrentY = y1;

    Xinc = 1;
    Yinc = 1;

    if (Dx < 0) {
        Xinc = -1;
        Dx = -Dx;
        TwoDx = -TwoDx;
    }

    if (Dy < 0) {
        Yinc = -1;
        Dy = -Dy;
        TwoDy = -TwoDy;
    }

    oled_draw_point(x1, y1, color);

    if ((Dx != 0) || (Dy != 0)) {
        if (Dy <= Dx) {
            TwoDxAccumulatedError = 0;
            do {
                CurrentX += Xinc;
                TwoDxAccumulatedError += TwoDy;
                if (TwoDxAccumulatedError > Dx) {
                    CurrentY += Yinc;
                    TwoDxAccumulatedError -= TwoDx;
                }
                oled_draw_point(CurrentX, CurrentY, color);
            } while (CurrentX != x2);
        } else {
            TwoDyAccumulatedError = 0;
            do {
                CurrentY += Yinc;
                TwoDyAccumulatedError += TwoDx;
                if (TwoDyAccumulatedError > Dy) {
                    CurrentX += Xinc;
                    TwoDyAccumulatedError -= TwoDy;
                }
                oled_draw_point(CurrentX, CurrentY, color);
            } while (CurrentY != y2);
        }
    }
}

void oled_draw_circle(int cx,int cy, int radius, oled_color color) {
    int x, y, xchange, ychange, radiusError;
    x = radius;
    y = 0;
    xchange = 1 - 2 * radius;
    ychange = 1;
    radiusError = 0;
    while (x >= y) {
        oled_draw_point(cx + x, cy + y, color);
        oled_draw_point(cx - x, cy + y, color);
        oled_draw_point(cx - x, cy - y, color);
        oled_draw_point(cx + x, cy - y, color);
        oled_draw_point(cx + y, cy + x, color);
        oled_draw_point(cx - y, cy + x, color);
        oled_draw_point(cx - y, cy - x, color);
        oled_draw_point(cx + y, cy - x, color);
        y++;
        radiusError += ychange;
        ychange += 2;
        if (2 * radiusError + xchange > 0) {
            x--;
            radiusError += xchange;
            xchange += 2;
        }
    }
}

void oled_draw_rectangle(int x, int y, int width, int height, oled_color color) {
    unsigned char j;

    for (j = 0; j < height; j++) {
        oled_draw_point(x, y + j, color);
        oled_draw_point(x + width - 1, y + j, color);
    }

    for (j = 0; j < width; j++) {
        oled_draw_point(x + j, y, color);
        oled_draw_point(x + j, y + height - 1, color);
    }
}

oled_color oled_color_from_string(char *string) {
    if (strcmp(string, "off") == 0) return OC_off;
    if (strcmp(string, "inv") == 0) return OC_inverse;
    if (strcmp(string, "clean") == 0) return OC_clean;

    return OC_on;
}
