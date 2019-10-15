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
 * @file        control.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       control source file
 */

#include <string.h>
#include <strings.h>

#include <FreeRTOS.h>
#include <task.h>
#include <xprintf.h>

#include <control.h>

void control_setup(void) {
    gpio_mode_setup(PWR_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, PWR_SW_ON);
    gpio_mode_setup(HDMI_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, HDMI_HOTPLUG);
    gpio_mode_setup(SD_CTRL_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, SD_CD_TS | SOCKET_SEL);
    gpio_mode_setup(WD_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, WD_RESET);
    gpio_mode_setup(DYPER_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, DYPER_1 | DYPER_2);
    gpio_mode_setup(LTHOR_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, LTHOR_SWITCH | LTHOR_ID | LTHOR_VBUS);

    ts();
}

#define POWER_STATE_ON_STRING       "ON"
#define POWER_STATE_OFF_STRING      "OFF"
#define POWER_STATE_INVALID_STRING  "OFF"

power_state power_state_from_string(char *string) {
    if (strncasecmp(string, POWER_STATE_ON_STRING, strlen(POWER_STATE_ON_STRING)) == 0) return Power_On;
    if (strncasecmp(string, POWER_STATE_OFF_STRING, strlen(POWER_STATE_OFF_STRING)) == 0) return Power_Off;

    return Power_Invalid;
}

char* power_state_to_string(power_state state) {
    switch (state) {
    case Power_On:
        return POWER_STATE_ON_STRING;
    case Power_Off:
        return POWER_STATE_OFF_STRING;
    case Power_Invalid:
        return POWER_STATE_INVALID_STRING;
    }

    return POWER_STATE_INVALID_STRING;
}

void power_set_state(power_state state) {
    if (state == Power_On) {
        gpio_set(PWR_PORT, PWR_SW_ON);
    } else {
        gpio_clear(PWR_PORT, PWR_SW_ON);
    }
}

power_state power_get_state(void) {
    return gpio_get(PWR_PORT, PWR_SW_ON) ? Power_On : Power_Off;
}

void power_tick(uint32_t delay_ms) {
    delay_ms = delay_ms > 0 ? delay_ms : TICK_DELAY_DEFAULT;
    power_set_state(Power_Off);
    vTaskDelay(delay_ms);
    power_set_state(Power_On);
}

void hdmi_set_state(bool state) {
    if (state) {
        gpio_set(HDMI_PORT, HDMI_HOTPLUG);
    } else {
        gpio_clear(HDMI_PORT, HDMI_HOTPLUG);
    }
}

bool dyper_set_state(uint8_t dyper_num, bool state) {
    if ((dyper_num - 1) > 1) { // DyPers are enumerated starting at 1
        return false;
    }

    uint16_t dyper_gpio = dyper_num == 1 ? DYPER_1 : DYPER_2;

    if (state) {
        gpio_set(DYPER_PORT, dyper_gpio);
    } else {
        gpio_clear(DYPER_PORT, dyper_gpio);
    }

    return true;
}

void mux_set_state(mux_state state) {
    if (state == Mux_TS) {
        gpio_set(SD_CTRL_PORT, SOCKET_SEL);
        gpio_clear(SD_CTRL_PORT, SD_CD_TS);
    } else {
        gpio_set(SD_CTRL_PORT, SD_CD_TS);
        gpio_clear(SD_CTRL_PORT, SOCKET_SEL);
    }
}

mux_state mux_get_state(void) {
    mux_state sel_state = gpio_get(SD_CTRL_PORT, SOCKET_SEL) ? Mux_TS : Mux_DUT;
    mux_state cd_state = gpio_get(SD_CTRL_PORT, SD_CD_TS) ? Mux_DUT : Mux_TS;

    if (sel_state == Mux_TS && cd_state == Mux_TS) {
        return Mux_TS;
    }

    if (sel_state == Mux_DUT && cd_state == Mux_DUT) {
        return Mux_DUT;
    }

    return Mux_IVNALID;
}

void dut(void) {
    mux_set_state(Mux_DUT);
    power_set_state(Power_On);
}

void ts(void) {
    mux_set_state(Mux_TS);
    power_set_state(Power_Off);
}

#define LTHOR_USB_STRING        "USB"
#define LTHOR_UART_STRING       "UART"
#define LTHOR_INVALID_STRING    "INVALID"

lthor_state lthor_state_from_string(char *string) {
    if (strncasecmp(string, LTHOR_USB_STRING, strlen(LTHOR_USB_STRING)) == 0) return Lthor_USB;
    if (strncasecmp(string, LTHOR_UART_STRING, strlen(LTHOR_USB_STRING)) == 0) return Lthor_UART;

    return Lthor_Invalid;
}

char* lthor_state_to_string(lthor_state state) {
    switch (state) {
    case Lthor_USB:
        return LTHOR_USB_STRING;
    case Lthor_UART:
        return LTHOR_UART_STRING;
    case Lthor_Invalid:
        return LTHOR_INVALID_STRING;
    }

    return LTHOR_INVALID_STRING;
}

lthor_state lthor_switch_get_state(void) {
    return gpio_get(LTHOR_PORT, LTHOR_SWITCH) ? Lthor_UART : Lthor_USB;
}

void lthor_switch_set_state(lthor_state state) {
    if (state == Lthor_USB) {
        gpio_clear(LTHOR_PORT, LTHOR_SWITCH);
    } else {
        gpio_set(LTHOR_PORT, LTHOR_SWITCH);
    }
}

lthor_state lthor_id_get_state(void) {
    return gpio_get(LTHOR_PORT, LTHOR_ID) ? Lthor_UART : Lthor_USB;
}

void lthor_id_set_state(lthor_state state) {
    if (state == Lthor_USB) {
        gpio_clear(LTHOR_PORT, LTHOR_ID);
    } else {
        gpio_set(LTHOR_PORT, LTHOR_ID);
    }
}

power_state lthor_vbus_get_state(void) {
    return gpio_get(LTHOR_PORT, LTHOR_VBUS) ? Power_On : Power_Off;
}

void lthor_vbus_set_state(power_state state) {
    if (state == Power_Off) {
        gpio_clear(LTHOR_PORT, LTHOR_VBUS);
    } else {
        gpio_set(LTHOR_PORT, LTHOR_VBUS);
    }
}

void lthor_do_combo(lthor_state state) {
    (void)state;
    // TODO: Just do it!
}

