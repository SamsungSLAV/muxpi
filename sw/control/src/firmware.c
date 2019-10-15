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
 * @file        firmware.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       Main source file
 */

#include <stdio.h>
#include <errno.h>

#include <libopencm3/stm32/rcc.h>

#include <FreeRTOS.h>
#include <task.h>

#include <uart.h>
#include <tasks.h>
#include <leds.h>
#include <cmd.h>
#include <control.h>
#include <oled.h>
#include <keys.h>
#include <adc.h>
#include <hdmi.h>
#include <state.h>

#include <firmware.h>

char* getVersion(void) {
    return "1.0";
}

static void clock_setup(void) {
    rcc_clock_setup_in_hsi_out_48mhz();
    rcc_periph_clock_enable(RCC_GPIOA);
    rcc_periph_clock_enable(RCC_GPIOB);
    rcc_periph_clock_enable(RCC_GPIOC);
    rcc_periph_clock_enable(RCC_USART1);
    rcc_periph_clock_enable(RCC_ADC);
    rcc_periph_clock_enable(RCC_SYSCFG_COMP);
    rcc_periph_clock_enable(RCC_TIM3);
    rcc_periph_clock_enable(RCC_TIM17);
    rcc_periph_clock_enable(RCC_DMA);
}

int main(void) {
    clock_setup();

    state_setup();

    leds_setup();
    uart_setup();
    control_setup();
    keys_setup();
    adc_setup();
    oled_setup();
    hdmi_setup();
    cmd_setup();

    create_tasks();

    vTaskStartScheduler();

    return 0;
}

