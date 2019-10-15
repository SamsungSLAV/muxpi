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
 * @file        adc.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       adc include file
 */

#ifndef SRC_ADC_H_
#define SRC_ADC_H_

#define ADC_CHANNEL_COUNT   5       // Number of ADC channels being measured.
#define ADC_SAMPLES_COUNT   10      // Number of samples per channel for averager.

#define ADC_CHANNEL_CURRENT 1       // Channel number of current measurement.
#define ADC_CHANNEL_POT     3       // Channel number of potentiometer measurement.
#define ADC_CHANNEL_VREFINT 5       // Channel number of internal voltage reference

#define ADC_12BIT           4095    // Max value of ADC converter
//#define V33mV               3311    // Supply voltage - in theory it should be exactly 3300 but this is real, measured
                                    // value on sample MuxPi board.

#define ACS712_0A_VOLTAGE   2500    // 0A absolute value of voltage of ACS712-05 IC. 2.5V means no power is being consumed.
#define ACS712_1A_VOLTAGE   186     // 1A incremental value of voltage of ACS712-05 IC. 2.5V + 186mV is equal to 1A of current.

#define POT_KOHMS           1058    // Resistance of 1M potentiometer. It should be exactly 1000 ohms in theory but in
                                    // real life it's not. 1058 is the value of one, randomly selected pot.

#define CURRENT_SENSE_GAIN  3.3     // Gain of current amplifier.

// Initialize and turn on ADC converter.
void adc_setup(void);
// Get current ADC value of given channel.
int adc_get_value(int channel);
// Get current ADC voltage ( millivolts ) of given channel.
int adc_get_voltage(int channel);
// Get calibrated voltage (millivolts) of given channel.
int adc_get_calibrated(int channel);
// Get current value of DUT current consumption.
int adc_get_current(void);
// Get current resistance of potentiometer.
int adc_get_resistance(void);
// Take over pin associated to channel 1 and configure it as GPIO.
void adc_grab_channel1_and_set_to_zero(void);
// Release pin associated to channel 1 and configure it as ADC input.
void adc_release_channel1(void);

#endif /* SRC_ADC_H_ */
