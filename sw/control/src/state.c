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
 * @file        state.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       state source file
 */

#include <string.h>

#include <state.h>

typedef struct {
    int idleCurrent;
    bool echoState;
} ControllerState;

static ControllerState cState;

void state_setup(void) {
    memset(&cState, 0, sizeof(cState));
}

int state_get_idle_current(void) {
    return cState.idleCurrent;
}

void state_set_idle_current(int mA) {
    cState.idleCurrent = mA;
}

bool state_get_echo(void) {
    return true;//cState.echoState;
}

void state_set_echo(bool state) {
    cState.echoState = state;
}
