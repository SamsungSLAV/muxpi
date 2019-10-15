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
 * @file        adc.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       adc source file
 */

#include <stdlib.h>

#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/adc.h>
#include <libopencm3/stm32/dma.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/cm3/nvic.h>

#include <adc.h>

#define MEASUREMENT_RESISTANCE  1000.0

uint8_t channel_array[] = { 0, 1, 2, ADC_CHANNEL_TEMP, ADC_CHANNEL_VREF};

uint16_t channel_data[ADC_CHANNEL_COUNT * ADC_SAMPLES_COUNT];

double V33mV = 3.3; // FIXME: this value should be measured and written permanently into the microcontroller's FLASH memory.
                    // Currently it's value is calculated automatically form dedicated calibration register
                    // but as turned out the value is not always corresponding to the measured value.

static void dma_setup(void) {
    rcc_periph_clock_enable(RCC_DMA);

    dma_channel_reset(DMA1, DMA_CHANNEL1);
    dma_set_peripheral_address(DMA1, DMA_CHANNEL1, (uint32_t) &ADC1_DR);
    dma_set_peripheral_size(DMA1, DMA_CHANNEL1, DMA_CCR_PSIZE_16BIT);
    dma_set_memory_address(DMA1, DMA_CHANNEL1, (uint32_t) channel_data);
    dma_set_memory_size(DMA1, DMA_CHANNEL1, DMA_CCR_MSIZE_16BIT);
    dma_set_number_of_data(DMA1, DMA_CHANNEL1, sizeof(channel_data)/sizeof(channel_data[0]));
    dma_set_read_from_peripheral(DMA1, DMA_CHANNEL1);
    dma_enable_memory_increment_mode(DMA1, DMA_CHANNEL1);
    dma_disable_peripheral_increment_mode(DMA1, DMA_CHANNEL1);
    dma_set_priority(DMA1, DMA_CHANNEL1, DMA_CCR_PL_HIGH);
    dma_enable_channel(DMA1, DMA_CHANNEL1);
    dma_enable_circular_mode(DMA1, DMA_CHANNEL1);

    nvic_enable_irq(NVIC_DMA1_CHANNEL1_IRQ);
    nvic_set_priority(NVIC_DMA1_CHANNEL1_IRQ, 0);
}

void adc_setup(void) {
    dma_setup();

    gpio_mode_setup(GPIOA, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, GPIO0 | GPIO1 | GPIO2);

    adc_power_off(ADC1);
    adc_set_clk_source(ADC1, ADC_CLKSOURCE_ADC);
    adc_calibrate(ADC1);
    adc_set_operation_mode(ADC1, ADC_MODE_SCAN);
    adc_disable_external_trigger_regular(ADC1);
    adc_set_right_aligned(ADC1);
    adc_enable_temperature_sensor();
    adc_enable_vrefint();
    adc_set_sample_time_on_all_channels(ADC1, ADC_SMPTIME_071DOT5);
    adc_set_regular_sequence(ADC1, sizeof(channel_array)/sizeof(channel_array[0]), channel_array);
    adc_set_resolution(ADC1, ADC_RESOLUTION_12BIT);
    adc_disable_analog_watchdog(ADC1);

    adc_enable_dma(ADC1);
    ADC_CFGR1(ADC1) |= ADC_CFGR1_DMACFG;
    adc_set_continuous_conversion_mode(ADC1);

    adc_power_on(ADC1);
    ADC_CR(ADC1) |= ADC_CR_ADSTART;
}

int adc_get_value(int channel) {
    channel--;
    int sum = 0;
    for (int s = 0; s < ADC_SAMPLES_COUNT; s++) {
        sum += channel_data[s * ADC_CHANNEL_COUNT + channel];
    }
    return sum / ADC_SAMPLES_COUNT;
}

int adc_get_voltage(int channel) {
    double vref = adc_get_value(ADC_CHANNEL_VREFINT);
    double adc = adc_get_value(channel);
    V33mV = 3300.0 * (double)ST_VREFINT_CAL / vref;
//    V33mV = 3261.0;
    return (adc * V33mV) / (double)ADC_12BIT;
}

int adc_get_current(void) {
    int curV = adc_get_voltage(ADC_CHANNEL_CURRENT);
    return 1000.0 * (double)(curV / CURRENT_SENSE_GAIN) / (double)ACS712_1A_VOLTAGE;
}

int adc_get_resistance(void) {
    double ratio = (double)adc_get_calibrated(ADC_CHANNEL_POT) / V33mV;
    double ret = (ratio * MEASUREMENT_RESISTANCE) / (1.0 - ratio);
    ret = ret > 1000 ? 1000 : ret;
    return ret;
//    return (POT_KOHMS * adc_get_calibrated(ADC_CHANNEL_POT)) / V33mV;
    // POT_KOHMS is real resistance (kilo ohms) of 1M potentiometer
    // FIXME: It should be some calibration parameter as this value might differ form one pot to another.
}

void adc_grab_channel1_and_set_to_zero(void) {
    gpio_mode_setup(GPIOA, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO1);
    gpio_clear(GPIOA, GPIO1);
}

void adc_release_channel1(void) {
    gpio_mode_setup(GPIOA, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, GPIO1);
}

typedef struct {
    int a, b;
} calib_point;

int adc_get_calibrated(int channel) {
    int value = adc_get_voltage(channel);
    int correction = 0;
#if 0
    static calib_point calib[] = {
            {0, 0}, {336, 339}, {661, 671}, {981, 1001}, {1306, 1337}, {1630, 1668}, {1951, 1997}, {2645, 2684}, {2977, 3003}
    };

    for (unsigned int i = 1; i < sizeof(calib)/sizeof(calib[0]); i++) {
        if (calib[i].b >= value) {
            int cor1 = calib[i - 1].b - calib[i - 1].a;
            int cor2 = calib[i].b - calib[i].a;

            int norm = 100 * (value - calib[i - 1].b);
            int perc = norm / (calib[i].b - calib[i - 1].b);
            correction = (perc * (cor2 - cor1))/100 + cor1;
            break;
        }
    }
#endif
    return  value - correction;
}
