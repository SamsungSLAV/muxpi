##
## This file is part of the libopencm3 project.
##
## Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>
##
## This library is free software: you can redistribute it and/or modify
## it under the terms of the GNU Lesser General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this library.  If not, see <http://www.gnu.org/licenses/>.
##

BINARY = firmware

OPENCM3_DIR=../libopencm3
FREERTOS_DIR=../FreeRTOS
FREERTOS_SRC_DIR=$(FREERTOS_DIR)/Source
FREERTOS_SRC_PORTABLE_DIR=$(FREERTOS_SRC_DIR)/portable/GCC/ARM_CM0
LDSCRIPT = $(OPENCM3_DIR)/lib/stm32/f0/stm32f03xz6.ld

INCLUDEDIR = -I.
INCLUDEDIR += -I../include
INCLUDEDIR += -I$(FREERTOS_SRC_DIR)/include
INCLUDEDIR += -I$(FREERTOS_SRC_PORTABLE_DIR)
INCLUDEDIR += -I$(OPENCM3_DIR)/include

OBJS =  uart.o handlers.o tasks.o leds.o cmd.o misc.o xprintf.o commands.o control.o oled.o ws2812.o keys.o adc.o hdmi.o state.o
OBJS += $(FREERTOS_SRC_DIR)/list.o
OBJS += $(FREERTOS_SRC_DIR)/queue.o
OBJS += $(FREERTOS_SRC_DIR)/tasks.o
OBJS += $(FREERTOS_SRC_DIR)/timers.o
OBJS += $(FREERTOS_SRC_DIR)/MemMang/heap_1.o
OBJS += $(FREERTOS_SRC_PORTABLE_DIR)/port.o

include ../target.mk