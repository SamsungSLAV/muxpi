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
 * @file        handlers.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       handlers source file
 */

#include <FreeRTOS.h>
#include <task.h>

void sv_call_handler(void);
void pend_sv_handler(void);
void sys_tick_handler(void);

void vPortSVCHandler(void);
void xPortSysTickHandler(void);
void xPortPendSVHandler(void);

void vApplicationMallocFailedHook(void);
void vApplicationIdleHook(void);
void vApplicationTickHook(void);
void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName);


void vApplicationMallocFailedHook( void ) {
    for ( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationIdleHook( void ) {
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName) {
    (void) pcTaskName;
    (void) pxTask;
}
/*-----------------------------------------------------------*/

void vApplicationTickHook( void ) {
}

void sv_call_handler(void) {
      vPortSVCHandler();
}
 void pend_sv_handler(void) {
      xPortPendSVHandler();
}
void sys_tick_handler(void) {
      xPortSysTickHandler();
}
