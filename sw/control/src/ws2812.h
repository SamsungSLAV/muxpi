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
 * @file        ws2812.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       ws2812 source file
 */
#ifndef SRC_WS2812_H_
#define SRC_WS2812_H_

#include <stdio.h>
#include <string.h>

/* Definition of TIM instance */
#define TIMx                                TIM2

/* Definition for TIMx clock resources */
#define TIMx_CLK_ENABLE                     __HAL_RCC_TIM2_CLK_ENABLE
#define DMAx_CLK_ENABLE                     __HAL_RCC_DMA1_CLK_ENABLE

/* Definition for TIMx Pins */
#define TIMx_CHANNEL1_GPIO_CLK_ENABLE       __HAL_RCC_GPIOA_CLK_ENABLE
#define TIMx_GPIO_CHANNEL1_PORT             GPIOA
#define GPIO_PIN_CHANNEL1                   GPIO_PIN_5
#define GPIO_AF_TIMx                        GPIO_AF1_TIM2

/* Definition for TIMx's DMA */
#define TIMx_CC1_DMA_REQUEST                DMA_REQUEST_4
#define TIMx_CC1_DMA_INST                   DMA1_Channel5

/* Definition for DMAx's NVIC */
#define TIMx_DMA_IRQn                       DMA1_Channel5_IRQn
#define TIMx_DMA_IRQHandler                 DMA1_Channel5_IRQHandler

//WS2812
#define WS2812_FREQ                         (800000)    // it is fixed: WS2812 require 800kHz
#define TIMER_CLOCK_FREQ                    (48000000)  // can be modified - multiples of 0.8MHz are suggested
#define TIMER_PERIOD                        (TIMER_CLOCK_FREQ / WS2812_FREQ)
#define LED_NUMBER                          (2)         // how many LEDs the MCU should control?
#define LED_DATA_SIZE                       (LED_NUMBER * 24)
#define RESET_SLOTS_BEGIN                   (50)
#define RESET_SLOTS_END                     (50)
#define WS2812_LAST_SLOT                    (1)
#define LED_BUFFER_SIZE                     (RESET_SLOTS_BEGIN + LED_DATA_SIZE + WS2812_LAST_SLOT + RESET_SLOTS_END)
#define WS2812_0                            (TIMER_PERIOD / 3)      // WS2812's zero high time is bout one third of the period
#define WS2812_1                            (TIMER_PERIOD * 2 / 3)  // WS2812's one high time is about two thirds of the period
#define WS2812_RESET                        (0)

void ws2812_init(void);
void ws2812_update(void);
void ws2812_set_led_color(uint32_t LEDnumber, uint8_t RED, uint8_t GREEN,
        uint8_t BLUE);
LedColor ws2812_get_led_color(uint32_t led_number);
void setWHOLEcolor(uint8_t RED, uint8_t GREEN, uint8_t BLUE);
void fillBufferBlack(void);
void fillBufferWhite(void);

#endif // SRC_WS2812_H_
