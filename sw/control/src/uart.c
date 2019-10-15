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
 * @file        uart.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       uart source file
 */

#include <stddef.h>

#include <libopencm3/stm32/gpio.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/rcc.h>
#include <FreeRTOS.h>

#include <xprintf.h>

#include <uart.h>

#define USART_INCOMING_QUEUE_LENGTH 32
#define USART_OUTGOING_QUEUE_LENGTH 2
#define USART_COMBINED_QUEUE_LENGTH (USART_INCOMING_QUEUE_LENGTH + USART_OUTGOING_QUEUE_LENGTH)

xQueueHandle usart_incoming_queue;
//xQueueHandle usart_outgoing_queue;
//QueueSetHandle_t usart_queue_set;

void usart1_isr(void) {
    long xHigherPriorityTaskWoken = pdFALSE;
    if (((USART_CR1(USART1) & USART_CR1_RXNEIE) != 0) &&
        ((USART_ISR(USART1) & USART_ISR_RXNE) != 0)) {
        uint8_t data = usart_recv(USART1);
        xQueueSendToBackFromISR(usart_incoming_queue, &data, &xHigherPriorityTaskWoken);
    }
    portEND_SWITCHING_ISR(xHigherPriorityTaskWoken);
}

#define ONE_HUNDRED_PERCENT  100

static void pwm_setup(void) {
    gpio_mode_setup(UART_PWM_PORT, GPIO_MODE_AF, GPIO_PUPD_NONE, UART_PWM);
    gpio_set_af(UART_PWM_PORT, GPIO_AF2, UART_PWM);

    rcc_periph_reset_pulse(RST_TIM17);

    timer_set_mode(TIM17, TIM_CR1_CKD_CK_INT_MUL_4, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);
    timer_set_prescaler(TIM17, 0);
    timer_set_period(TIM17, ONE_HUNDRED_PERCENT - 1);
    timer_set_oc_value(TIM17, TIM_OC1, ONE_HUNDRED_PERCENT);
    TIM_CCMR1(TIM17) |= TIM_CCMR1_OC1M_PWM1 | TIM_CCMR1_OC1M_ACTIVE; // Operating directly on registers because of
                                                                     // incorrect implementation of the above function
    timer_enable_oc_output(TIM17, TIM_OC1);
    TIM_BDTR(TIM17) |= TIM_BDTR_MOE;    // Operating directly on registers because of
                                        // incorrect implementation of the above function
    timer_generate_event(TIM17, TIM_EGR_UG);
    timer_enable_counter(TIM17);
}

void uart_set_voltage(int mvolts) {
#define MAX_VOLTAGE 50 // 5000 millivolts divided by 100 to ease calculations
    int period = ONE_HUNDRED_PERCENT - mvolts / MAX_VOLTAGE;
    timer_set_oc_value(TIM17, TIM_OC1, period);
}

int uart_get_voltage(void) {
    int duty =  TIM_CCR1(TIM17);
    return 100 * MAX_VOLTAGE / ONE_HUNDRED_PERCENT * duty;
}

void uart_setup(void) {

	// FIXME: Get rid of queue set by using only one queue with items containing message type info.
//    usart_queue_set = xQueueCreateSet(USART_COMBINED_QUEUE_LENGTH);
    usart_incoming_queue = xQueueCreate(USART_INCOMING_QUEUE_LENGTH, sizeof(char));
//    usart_outgoing_queue = xQueueCreate(USART_OUTGOING_QUEUE_LENGTH, sizeof(char));
//    xQueueAddToSet(usart_incoming_queue, usart_queue_set);
//    xQueueAddToSet(usart_outgoing_queue, usart_queue_set);

    xdev_out(uart_putc);

    nvic_enable_irq(NVIC_USART1_IRQ);

    gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO9 | GPIO10);
    gpio_set_af(GPIOA, GPIO_AF1, GPIO9 | GPIO10);

    usart_set_baudrate(USART1, 115200);
    usart_set_databits(USART1, 8);
    usart_set_stopbits(USART1, USART_CR2_STOPBITS_1);
    usart_set_parity(USART1, USART_PARITY_NONE);
    usart_set_flow_control(USART1, USART_FLOWCONTROL_NONE);
    usart_set_mode(USART1, USART_MODE_TX_RX);

    usart_enable_rx_interrupt(USART1);

    usart_enable(USART1);

    pwm_setup();
}

void uart_send(char *data) {
    (void)data;
}

void uart_putc(char data) {
    usart_send_blocking(USART1, data);
}
