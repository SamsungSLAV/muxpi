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
 * @file        control.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       control include file
 */

#ifndef INCLUDE_CONTROL_H_
#define INCLUDE_CONTROL_H_

#include <stdbool.h>

#include <libopencm3/stm32/gpio.h>

#define PWR_PORT        GPIOB
#define HDMI_PORT       GPIOB
#define SD_CTRL_PORT    GPIOB
#define WD_PORT         GPIOB
#define DYPER_PORT      GPIOA
#define LTHOR_PORT      GPIOC

#define PWR_SW_ON       GPIO1
#define HDMI_HOTPLUG    GPIO2
#define SD_CD_TS        GPIO6
#define SOCKET_SEL      GPIO7
#define WD_RESET        GPIO8
#define DYPER_1         GPIO11
#define DYPER_2         GPIO12

#define LTHOR_SWITCH    GPIO13
#define LTHOR_ID        GPIO14
#define LTHOR_VBUS      GPIO15

#define TICK_DELAY_DEFAULT   1000

typedef enum {
    Mux_DUT,
    Mux_TS,
    Mux_IVNALID
} mux_state;

typedef enum {
    Power_Off,
    Power_On,
    Power_Invalid
} power_state;

typedef enum {
    Lthor_USB,
    Lthor_UART,
    Lthor_Invalid
} lthor_state;

void control_setup(void);

power_state power_state_from_string(char *string);
char* power_state_to_string(power_state state);

void power_set_state(power_state state);
power_state power_get_state(void);
void power_tick(uint32_t delay_ms);

void hdmi_set_state(bool state);

bool dyper_set_state(uint8_t dyper_num, bool state);

void mux_set_state(mux_state state);
mux_state mux_get_state(void);
void dut(void);
void ts(void);

lthor_state lthor_state_from_string(char *string);
char* lthor_state_to_string(lthor_state state);

lthor_state lthor_switch_get_state(void);
void lthor_switch_set_state(lthor_state state);
lthor_state lthor_id_get_state(void);
void lthor_id_set_state(lthor_state state);
power_state lthor_vbus_get_state(void);
void lthor_vbus_set_state(power_state state);
void lthor_do_combo(lthor_state state);

#endif /* INCLUDE_CONTROL_H_ */
