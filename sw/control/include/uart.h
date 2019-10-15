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
 * @file        uart.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       uart include file
 */

#ifndef INCLUDE_UART_H_
#define INCLUDE_UART_H_

#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>

#include <FreeRTOS.h>
#include <queue.h>

#define UART_PWM_PORT   GPIOB
#define UART_PWM        GPIO9

extern xQueueHandle usart_incoming_queue;
extern xQueueHandle usart_outgoing_queue;
extern QueueSetHandle_t usart_queue_set;

void uart_setup(void);
void uart_send(char *data);
void uart_printf(const char *fmt, ...);
void uart_putc(char data);

void uart_set_voltage(int mvolts);
int uart_get_voltage(void);

#endif /* INCLUDE_UART_H_ */
