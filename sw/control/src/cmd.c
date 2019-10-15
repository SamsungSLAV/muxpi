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
 * @file        cmd.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       cmd source file
 */

#include <stdint.h>
#include <string.h>

#include <leds.h>
#include <uart.h>
#include <xprintf.h>
#include <commands.h>
#include <state.h>

#include <cmd.h>

#define BUFLEN 64


struct {
    uint8_t rxBuffer[BUFLEN + 1];
    uint8_t position;
    uint8_t hasData;
} USQueue;


static void rx_buffer_put(uint8_t data) {
    if (USQueue.position < BUFLEN) {
        USQueue.rxBuffer[USQueue.position] = data;
        USQueue.hasData = 1;
        USQueue.position++;
    }
}

static char* rx_buffer_take(int *len) {
    *len = USQueue.hasData ? USQueue.position : 0;
    USQueue.rxBuffer[USQueue.position] = 0;
    USQueue.position = 0;
    USQueue.hasData = 0;
    return (char *)USQueue.rxBuffer;
}

void cmd_process_data(uint8_t data) {
    char *cmd;
    int len;

    if (data == '\n' || data == '\r') {
        if (state_get_echo()) {
            uart_putc('\n');
            uart_putc('\r');
        }
        cmd = rx_buffer_take(&len);
        process_command(cmd);
    } else {
        rx_buffer_put(data);
        if (state_get_echo()) {
            uart_putc(data);
        }
    }
}

void cmd_setup(void) {
    state_set_echo(false);
}
