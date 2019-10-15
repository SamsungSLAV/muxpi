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
 * @file        keys.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       keys include file
 */

#ifndef SRC_KEYS_H_
#define SRC_KEYS_H_

#include <stdbool.h>

#include <libopencm3/stm32/gpio.h>

#define KEYS_PORT   GPIOB
#define KEY_1_GPIO  GPIO12
#define KEY_2_GPIO  GPIO13

#define KEY_1   1
#define KEY_2   2

void keys_setup(void);
bool keys_is_1_pressed(void);
bool keys_is_2_pressed(void);

#endif /* SRC_KEYS_H_ */
