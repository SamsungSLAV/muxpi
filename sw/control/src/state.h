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
 * @file        state.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       state include file
 */

#include <stdbool.h>

#ifndef SRC_STATE_H_
#define SRC_STATE_H_

// Initialize state of controller.
void state_setup(void);

// Get current (mA) when power of DUT is OFF. This 'idle' current is an offset
// which is subtracted from measured current when DUT power is ON.
int state_get_idle_current(void);

// Set idle current (mA).
void state_set_idle_current(int mA);

// Get 'cmd' echo state.
bool state_get_echo(void);

// Set 'cmd' echo state.
void state_set_echo(bool state);

#endif /* SRC_STATE_H_ */
