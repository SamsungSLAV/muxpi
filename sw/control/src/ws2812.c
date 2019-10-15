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
 * @file        ws2812.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       ws2812 source file
 */

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/dma.h>

#include <leds.h>
#include <ws2812.h>

/* Variables -----------------------------------------------*/
static uint8_t LEDbuffer[LED_BUFFER_SIZE];
static LedColor LEDColor[LED_NUMBER];
/* Functions -----------------------------------------------*/

static void dma_setup(void) {
    timer_set_dma_on_update_event(TIM3);

    dma_channel_reset(DMA1, DMA_CHANNEL2);

    dma_set_peripheral_address(DMA1, DMA_CHANNEL2, (uint32_t) & TIM3_CCR3);
    dma_set_peripheral_size(DMA1, DMA_CHANNEL2, DMA_CCR_PSIZE_32BIT);
    dma_set_memory_address(DMA1, DMA_CHANNEL2, (uint32_t) LEDbuffer);
    dma_set_memory_size(DMA1, DMA_CHANNEL2, DMA_CCR_MSIZE_8BIT);
    dma_set_number_of_data(DMA1, DMA_CHANNEL2, LED_BUFFER_SIZE);
    dma_set_read_from_memory(DMA1, DMA_CHANNEL2);
    dma_enable_memory_increment_mode(DMA1, DMA_CHANNEL2);
    dma_disable_peripheral_increment_mode(DMA1, DMA_CHANNEL2);
    dma_set_priority(DMA1, DMA_CHANNEL2, DMA_CCR_PL_HIGH);

    dma_enable_channel(DMA1, DMA_CHANNEL2);

    dma_enable_circular_mode(DMA1, DMA_CHANNEL2);

    nvic_enable_irq(NVIC_DMA1_CHANNEL2_3_IRQ);
    nvic_set_priority(NVIC_DMA1_CHANNEL2_3_IRQ, 0);
}

void ws2812_init(void) {
    fillBufferBlack();
    ws2812_set_led_color(0, 255, 0, 0);
    ws2812_set_led_color(1, 0, 127, 0);
    ws2812_set_led_color(0, 20, 20, 20);

    gpio_mode_setup(WS_PORT, GPIO_MODE_AF, GPIO_PUPD_NONE, WS_DATA);
    gpio_set_output_options(WS_PORT, GPIO_OTYPE_OD, GPIO_OSPEED_HIGH, WS_DATA);

    gpio_set_af(WS_PORT, GPIO_AF1, WS_DATA);

    rcc_periph_reset_pulse(RST_TIM3);

    timer_set_mode(TIM3, TIM_CR1_CKD_CK_INT_MUL_4, TIM_CR1_CMS_EDGE,
            TIM_CR1_DIR_UP);

    timer_set_prescaler(TIM3, 0);
    timer_set_repetition_counter(TIM3, 0);
    timer_enable_preload(TIM3);

    timer_set_period(TIM3, TIMER_PERIOD - 1);

    timer_disable_oc_output(TIM3, TIM_OC3);
    timer_disable_oc_output(TIM3, TIM_OC3N);

    timer_disable_oc_clear(TIM3, TIM_OC3);
    timer_enable_oc_preload(TIM3, TIM_OC3);
    timer_set_oc_slow_mode(TIM3, TIM_OC3);
    timer_set_oc_mode(TIM3, TIM_OC3, TIM_OCM_PWM1);

    timer_set_oc_polarity_high(TIM3, TIM_OC3);
    timer_set_oc_idle_state_set(TIM3, TIM_OC3);

    timer_set_oc_value(TIM3, TIM_OC3, WS2812_0);

    timer_enable_oc_output(TIM3, TIM_OC3);

    timer_enable_preload(TIM3);
    timer_generate_event(TIM3, TIM_EGR_UG);

    timer_enable_irq(TIM3, TIM_DIER_CC3DE);

    dma_setup();

    timer_enable_counter(TIM3);
}

void ws2812_set_led_color(uint32_t LEDnumber, uint8_t RED, uint8_t GREEN,
        uint8_t BLUE) {
    uint8_t tempBuffer[24];
    uint32_t i;
    uint32_t LEDindex;
    LEDindex = LEDnumber % LED_NUMBER;

    LEDColor[LEDnumber].red = RED;
    LEDColor[LEDnumber].green = GREEN;
    LEDColor[LEDnumber].blue = BLUE;

    for (i = 0; i < 8; i++) // GREEN data
        tempBuffer[i] = ((GREEN << i) & 0x80) ? WS2812_1 : WS2812_0;
    for (i = 0; i < 8; i++) // RED
        tempBuffer[8 + i] = ((RED << i) & 0x80) ? WS2812_1 : WS2812_0;
    for (i = 0; i < 8; i++) // BLUE
        tempBuffer[16 + i] = ((BLUE << i) & 0x80) ? WS2812_1 : WS2812_0;

    for (i = 0; i < 24; i++)
        LEDbuffer[RESET_SLOTS_BEGIN + LEDindex * 24 + i] = tempBuffer[i];
}

LedColor ws2812_get_led_color(uint32_t led_number) {
    return LEDColor[led_number > LED_NUMBER ? 0 : led_number]; // In case of invalid LED number return color of first LED
}

void setWHOLEcolor(uint8_t RED, uint8_t GREEN, uint8_t BLUE) {
    uint32_t index;

    for (index = 0; index < LED_NUMBER; index++)
        ws2812_set_led_color(index, RED, GREEN, BLUE);
}

void fillBufferBlack(void) {
    uint32_t index, buffIndex;
    buffIndex = 0;

    for (index = 0; index < RESET_SLOTS_BEGIN; index++) {
        LEDbuffer[buffIndex] = WS2812_RESET;
        buffIndex++;
    }
    for (index = 0; index < LED_DATA_SIZE; index++) {
        LEDbuffer[buffIndex] = WS2812_0;
        buffIndex++;
    }
    LEDbuffer[buffIndex] = WS2812_0;
    buffIndex++;
    for (index = 0; index < RESET_SLOTS_END; index++) {
        LEDbuffer[buffIndex] = 0;
        buffIndex++;
    }
}

void fillBufferWhite(void) {
    uint32_t index, buffIndex;
    buffIndex = 0;

    for (index = 0; index < RESET_SLOTS_BEGIN; index++) {
        LEDbuffer[buffIndex] = WS2812_RESET;
        buffIndex++;
    }
    for (index = 0; index < LED_DATA_SIZE; index++) {
        LEDbuffer[buffIndex] = WS2812_1;
        buffIndex++;
    }
    LEDbuffer[buffIndex] = WS2812_0;
    buffIndex++;
    for (index = 0; index < RESET_SLOTS_END; index++) {
        LEDbuffer[buffIndex] = 0;
        buffIndex++;
    }
}

void dma1_channel2_3_isr(void) {
    if (dma_get_interrupt_flag(DMA1, DMA_CHANNEL2, DMA_TCIF)) {
        dma_clear_interrupt_flags(DMA1, DMA_CHANNEL2, DMA_TCIF);
        /* Toggle PC1 just to keep aware of activity and frequency. */
        led_toggle(AO_LED1);
    }
}
