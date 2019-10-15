	.cpu cortex-m0
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"firmware.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.getVersion,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	getVersion
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	getVersion, %function
getVersion:
.LFB3:
	.file 1 "firmware.c"
	.loc 1 44 24 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 45 5 view .LVU1
	.loc 1 46 1 is_stmt 0 view .LVU2
	ldr	r0, .L3
	@ sp needed
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.cfi_endproc
.LFE3:
	.size	getVersion, .-getVersion
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB5:
	.loc 1 61 16 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 5 view .LVU4
.LBB4:
.LBI4:
	.loc 1 48 13 view .LVU5
.LBB5:
	.loc 1 49 5 view .LVU6
.LBE5:
.LBE4:
	.loc 1 61 16 is_stmt 0 view .LVU7
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB7:
.LBB6:
	.loc 1 49 5 view .LVU8
	bl	rcc_clock_setup_in_hsi_out_48mhz
.LVL0:
	.loc 1 50 5 is_stmt 1 view .LVU9
	ldr	r0, .L6
	bl	rcc_periph_clock_enable
.LVL1:
	.loc 1 51 5 view .LVU10
	ldr	r0, .L6+4
	bl	rcc_periph_clock_enable
.LVL2:
	.loc 1 52 5 view .LVU11
	ldr	r0, .L6+8
	bl	rcc_periph_clock_enable
.LVL3:
	.loc 1 53 5 view .LVU12
	ldr	r0, .L6+12
	bl	rcc_periph_clock_enable
.LVL4:
	.loc 1 54 5 view .LVU13
	ldr	r0, .L6+16
	bl	rcc_periph_clock_enable
.LVL5:
	.loc 1 55 5 view .LVU14
	movs	r0, #192
	lsls	r0, r0, #2
	bl	rcc_periph_clock_enable
.LVL6:
	.loc 1 56 5 view .LVU15
	ldr	r0, .L6+20
	bl	rcc_periph_clock_enable
.LVL7:
	.loc 1 57 5 view .LVU16
	ldr	r0, .L6+24
	bl	rcc_periph_clock_enable
.LVL8:
	.loc 1 58 5 view .LVU17
	movs	r0, #160
	lsls	r0, r0, #2
	bl	rcc_periph_clock_enable
.LVL9:
.LBE6:
.LBE7:
	.loc 1 64 5 view .LVU18
	.loc 1 80 1 is_stmt 0 view .LVU19
	@ sp needed
	.loc 1 64 5 view .LVU20
	bl	state_setup
.LVL10:
	.loc 1 66 5 is_stmt 1 view .LVU21
	bl	leds_setup
.LVL11:
	.loc 1 67 5 view .LVU22
	bl	uart_setup
.LVL12:
	.loc 1 68 5 view .LVU23
	bl	control_setup
.LVL13:
	.loc 1 69 5 view .LVU24
	bl	keys_setup
.LVL14:
	.loc 1 70 5 view .LVU25
	bl	adc_setup
.LVL15:
	.loc 1 71 5 view .LVU26
	bl	oled_setup
.LVL16:
	.loc 1 72 5 view .LVU27
	bl	hdmi_setup
.LVL17:
	.loc 1 73 5 view .LVU28
	bl	cmd_setup
.LVL18:
	.loc 1 75 5 view .LVU29
	bl	create_tasks
.LVL19:
	.loc 1 77 5 view .LVU30
	bl	vTaskStartScheduler
.LVL20:
	.loc 1 79 5 view .LVU31
	.loc 1 80 1 is_stmt 0 view .LVU32
	movs	r0, #0
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	657
	.word	658
	.word	659
	.word	782
	.word	777
	.word	897
	.word	786
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata.getVersion.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"1.0\000"
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h"
	.file 6 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/errno.h"
	.file 9 "../libopencm3/include/libopencm3/stm32/f0/rcc.h"
	.file 10 "../FreeRTOS/Source/include/queue.h"
	.file 11 "../include/uart.h"
	.file 12 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h"
	.file 13 "./state.h"
	.file 14 "../include/leds.h"
	.file 15 "../include/control.h"
	.file 16 "./keys.h"
	.file 17 "./adc.h"
	.file 18 "./oled.h"
	.file 19 "./hdmi.h"
	.file 20 "../include/cmd.h"
	.file 21 "../include/tasks.h"
	.file 22 "../FreeRTOS/Source/include/task.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd27
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0xc
	.4byte	.LASF194
	.4byte	.LASF195
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x22
	.byte	0x19
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x7
	.4byte	.LASF117
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x70
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd7
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa8
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd7
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0xe7
	.uleb128 0xc
	.4byte	0x70
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x10b
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x69
	.byte	0
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe7
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x11
	.4byte	0x79
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x54
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x189
	.byte	0
	.uleb128 0x10
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x69
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x69
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x69
	.byte	0x10
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x18f
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12f
	.uleb128 0xb
	.4byte	0x123
	.4byte	0x19f
	.uleb128 0xc
	.4byte	0x70
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x222
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x69
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x69
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x69
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x69
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x69
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x69
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x69
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x267
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x267
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x267
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x123
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x123
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x77
	.4byte	0x277
	.uleb128 0xc
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.byte	0x8
	.4byte	0x2ba
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x6
	.byte	0x5e
	.byte	0x12
	.4byte	0x2ba
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x5f
	.byte	0x6
	.4byte	0x69
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x61
	.byte	0x9
	.4byte	0x2c0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x62
	.byte	0x1e
	.4byte	0x222
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x277
	.uleb128 0xb
	.4byte	0x2d0
	.4byte	0x2d0
	.uleb128 0xc
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2d6
	.uleb128 0x13
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x2ff
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x2ff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x69
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x448
	.uleb128 0x10
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x2ff
	.byte	0
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.uleb128 0x10
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x69
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0x10
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2d7
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x69
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x77
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x5cc
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x5fb
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x61f
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x639
	.byte	0x2c
	.uleb128 0x10
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2d7
	.byte	0x30
	.uleb128 0x10
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x2ff
	.byte	0x38
	.uleb128 0x10
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x69
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x63f
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x64f
	.byte	0x43
	.uleb128 0x10
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2d7
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x69
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x90
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.byte	0xde
	.byte	0x12
	.4byte	0x466
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x117
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x10b
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x69
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.4byte	0x69
	.4byte	0x466
	.uleb128 0x15
	.4byte	0x466
	.uleb128 0x15
	.4byte	0x77
	.uleb128 0x15
	.4byte	0x5ba
	.uleb128 0x15
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x471
	.uleb128 0x16
	.4byte	0x466
	.uleb128 0x17
	.4byte	.LASF64
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.byte	0x8
	.4byte	0x5ba
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x262
	.byte	0x7
	.4byte	0x69
	.byte	0
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x267
	.byte	0xb
	.4byte	0x6ab
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x267
	.byte	0x14
	.4byte	0x6ab
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x267
	.byte	0x1e
	.4byte	0x6ab
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x269
	.byte	0x7
	.4byte	0x69
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26a
	.byte	0x8
	.4byte	0x8ab
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26d
	.byte	0x7
	.4byte	0x69
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26e
	.byte	0x16
	.4byte	0x8c0
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x270
	.byte	0x7
	.4byte	0x69
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x272
	.byte	0xa
	.4byte	0x8d1
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x275
	.byte	0x13
	.4byte	0x189
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x276
	.byte	0x7
	.4byte	0x69
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x277
	.byte	0x13
	.4byte	0x189
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x278
	.byte	0x14
	.4byte	0x8d7
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x69
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27c
	.byte	0x9
	.4byte	0x5ba
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x29f
	.byte	0x7
	.4byte	0x886
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2a3
	.byte	0x13
	.4byte	0x2ba
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x2a4
	.byte	0x12
	.4byte	0x277
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x2a8
	.byte	0xc
	.4byte	0x8e8
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x2ad
	.byte	0x10
	.4byte	0x66c
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2af
	.byte	0xa
	.4byte	0x8f4
	.2byte	0x2ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.uleb128 0x16
	.4byte	0x5c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x448
	.uleb128 0x14
	.4byte	0x69
	.4byte	0x5f0
	.uleb128 0x15
	.4byte	0x466
	.uleb128 0x15
	.4byte	0x77
	.uleb128 0x15
	.4byte	0x5f0
	.uleb128 0x15
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0x16
	.4byte	0x5f0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d2
	.uleb128 0x14
	.4byte	0x9c
	.4byte	0x61f
	.uleb128 0x15
	.4byte	0x466
	.uleb128 0x15
	.4byte	0x77
	.uleb128 0x15
	.4byte	0x9c
	.uleb128 0x15
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x601
	.uleb128 0x14
	.4byte	0x69
	.4byte	0x639
	.uleb128 0x15
	.4byte	0x466
	.uleb128 0x15
	.4byte	0x77
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x625
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x64f
	.uleb128 0xc
	.4byte	0x70
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x65f
	.uleb128 0xc
	.4byte	0x70
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x305
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x6a5
	.uleb128 0x18
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x6a5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x6ab
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x65f
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x6ea
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x6ea
	.byte	0
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x6ea
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x6fa
	.uleb128 0xc
	.4byte	0x70
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x80f
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x282
	.byte	0x18
	.4byte	0x70
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x283
	.byte	0x12
	.4byte	0x5ba
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x284
	.byte	0x10
	.4byte	0x80f
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x285
	.byte	0x17
	.4byte	0x19f
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x286
	.byte	0xf
	.4byte	0x69
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x287
	.byte	0x2c
	.4byte	0x62
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x288
	.byte	0x1a
	.4byte	0x6b1
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x289
	.byte	0x16
	.4byte	0x10b
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28a
	.byte	0x16
	.4byte	0x10b
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28b
	.byte	0x16
	.4byte	0x10b
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28c
	.byte	0x10
	.4byte	0x81f
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28d
	.byte	0x10
	.4byte	0x82f
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28e
	.byte	0xf
	.4byte	0x69
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x10b
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x10b
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x291
	.byte	0x16
	.4byte	0x10b
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x292
	.byte	0x16
	.4byte	0x10b
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x293
	.byte	0x16
	.4byte	0x10b
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x294
	.byte	0x8
	.4byte	0x69
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.4byte	0x5c0
	.4byte	0x81f
	.uleb128 0xc
	.4byte	0x70
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x5c0
	.4byte	0x82f
	.uleb128 0xc
	.4byte	0x70
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x5c0
	.4byte	0x83f
	.uleb128 0xc
	.4byte	0x70
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.byte	0x7
	.4byte	0x866
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x29c
	.byte	0x1b
	.4byte	0x866
	.byte	0
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x29d
	.byte	0x18
	.4byte	0x876
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x2ff
	.4byte	0x876
	.uleb128 0xc
	.4byte	0x70
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x70
	.4byte	0x886
	.uleb128 0xc
	.4byte	0x70
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.byte	0x3
	.4byte	0x8ab
	.uleb128 0x1d
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x295
	.byte	0xb
	.4byte	0x6fa
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x29e
	.byte	0xb
	.4byte	0x83f
	.byte	0
	.uleb128 0xb
	.4byte	0x5c0
	.4byte	0x8bb
	.uleb128 0xc
	.4byte	0x70
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF118
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8bb
	.uleb128 0x1e
	.4byte	0x8d1
	.uleb128 0x15
	.4byte	0x466
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x189
	.uleb128 0x1e
	.4byte	0x8e8
	.uleb128 0x15
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ee
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8dd
	.uleb128 0xb
	.4byte	0x65f
	.4byte	0x904
	.uleb128 0xc
	.4byte	0x70
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x32e
	.byte	0x17
	.4byte	0x466
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x32f
	.byte	0x1d
	.4byte	0x46c
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.uleb128 0xb
	.4byte	0x5f6
	.4byte	0x935
	.uleb128 0x20
	.byte	0
	.uleb128 0x16
	.4byte	0x92a
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x8
	.byte	0x14
	.byte	0x1b
	.4byte	0x935
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x8
	.byte	0x15
	.byte	0xc
	.4byte	0x69
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x190
	.byte	0x11
	.4byte	0x91e
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x191
	.byte	0x11
	.4byte	0x91e
	.uleb128 0x22
	.4byte	.LASF196
	.byte	0x7
	.byte	0x2
	.4byte	0x3a
	.byte	0x9
	.2byte	0x19d
	.byte	0x6
	.4byte	0xad0
	.uleb128 0x23
	.4byte	.LASF126
	.2byte	0x280
	.uleb128 0x23
	.4byte	.LASF127
	.2byte	0x280
	.uleb128 0x23
	.4byte	.LASF128
	.2byte	0x281
	.uleb128 0x23
	.4byte	.LASF129
	.2byte	0x282
	.uleb128 0x23
	.4byte	.LASF130
	.2byte	0x284
	.uleb128 0x23
	.4byte	.LASF131
	.2byte	0x286
	.uleb128 0x23
	.4byte	.LASF132
	.2byte	0x291
	.uleb128 0x23
	.4byte	.LASF133
	.2byte	0x292
	.uleb128 0x23
	.4byte	.LASF134
	.2byte	0x293
	.uleb128 0x23
	.4byte	.LASF135
	.2byte	0x294
	.uleb128 0x23
	.4byte	.LASF136
	.2byte	0x295
	.uleb128 0x23
	.4byte	.LASF137
	.2byte	0x296
	.uleb128 0x23
	.4byte	.LASF138
	.2byte	0x298
	.uleb128 0x23
	.4byte	.LASF139
	.2byte	0x300
	.uleb128 0x23
	.4byte	.LASF140
	.2byte	0x305
	.uleb128 0x23
	.4byte	.LASF141
	.2byte	0x306
	.uleb128 0x23
	.4byte	.LASF142
	.2byte	0x307
	.uleb128 0x23
	.4byte	.LASF143
	.2byte	0x309
	.uleb128 0x23
	.4byte	.LASF144
	.2byte	0x309
	.uleb128 0x23
	.4byte	.LASF145
	.2byte	0x30b
	.uleb128 0x23
	.4byte	.LASF146
	.2byte	0x30c
	.uleb128 0x23
	.4byte	.LASF147
	.2byte	0x30e
	.uleb128 0x23
	.4byte	.LASF148
	.2byte	0x310
	.uleb128 0x23
	.4byte	.LASF149
	.2byte	0x311
	.uleb128 0x23
	.4byte	.LASF150
	.2byte	0x312
	.uleb128 0x23
	.4byte	.LASF151
	.2byte	0x316
	.uleb128 0x23
	.4byte	.LASF152
	.2byte	0x380
	.uleb128 0x23
	.4byte	.LASF153
	.2byte	0x381
	.uleb128 0x23
	.4byte	.LASF154
	.2byte	0x384
	.uleb128 0x23
	.4byte	.LASF155
	.2byte	0x385
	.uleb128 0x23
	.4byte	.LASF156
	.2byte	0x388
	.uleb128 0x23
	.4byte	.LASF157
	.2byte	0x38b
	.uleb128 0x23
	.4byte	.LASF158
	.2byte	0x38e
	.uleb128 0x23
	.4byte	.LASF159
	.2byte	0x391
	.uleb128 0x23
	.4byte	.LASF160
	.2byte	0x392
	.uleb128 0x23
	.4byte	.LASF161
	.2byte	0x393
	.uleb128 0x23
	.4byte	.LASF162
	.2byte	0x394
	.uleb128 0x23
	.4byte	.LASF163
	.2byte	0x395
	.uleb128 0x23
	.4byte	.LASF164
	.2byte	0x396
	.uleb128 0x23
	.4byte	.LASF165
	.2byte	0x397
	.uleb128 0x23
	.4byte	.LASF166
	.2byte	0x399
	.uleb128 0x23
	.4byte	.LASF167
	.2byte	0x399
	.uleb128 0x23
	.4byte	.LASF168
	.2byte	0x39b
	.uleb128 0x23
	.4byte	.LASF169
	.2byte	0x39c
	.uleb128 0x23
	.4byte	.LASF170
	.2byte	0x39d
	.uleb128 0x23
	.4byte	.LASF171
	.2byte	0x39d
	.uleb128 0x23
	.4byte	.LASF172
	.2byte	0x39e
	.uleb128 0x23
	.4byte	.LASF173
	.2byte	0x40f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0xa
	.byte	0x30
	.byte	0x22
	.4byte	0xadc
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae2
	.uleb128 0x7
	.4byte	.LASF175
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0xa
	.byte	0x37
	.byte	0x22
	.4byte	0xadc
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0xb
	.byte	0x23
	.byte	0x16
	.4byte	0xad0
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0xb
	.byte	0x24
	.byte	0x16
	.4byte	0xad0
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0xb
	.byte	0x25
	.byte	0x19
	.4byte	0xae7
	.uleb128 0x24
	.4byte	.LASF197
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6d
	.uleb128 0x25
	.4byte	0xc6d
	.4byte	.LBI4
	.byte	.LVU5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0xc09
	.uleb128 0x26
	.4byte	.LVL0
	.4byte	0xc8c
	.uleb128 0x27
	.4byte	.LVL1
	.4byte	0xc99
	.4byte	0xb64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x291
	.byte	0
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0xc99
	.4byte	0xb79
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x292
	.byte	0
	.uleb128 0x27
	.4byte	.LVL3
	.4byte	0xc99
	.4byte	0xb8e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x293
	.byte	0
	.uleb128 0x27
	.4byte	.LVL4
	.4byte	0xc99
	.4byte	0xba3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x30e
	.byte	0
	.uleb128 0x27
	.4byte	.LVL5
	.4byte	0xc99
	.4byte	0xbb8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x309
	.byte	0
	.uleb128 0x27
	.4byte	.LVL6
	.4byte	0xc99
	.4byte	0xbcd
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x300
	.byte	0
	.uleb128 0x27
	.4byte	.LVL7
	.4byte	0xc99
	.4byte	0xbe2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x381
	.byte	0
	.uleb128 0x27
	.4byte	.LVL8
	.4byte	0xc99
	.4byte	0xbf7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x312
	.byte	0
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xc99
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL10
	.4byte	0xca5
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0xcb1
	.uleb128 0x26
	.4byte	.LVL12
	.4byte	0xcbd
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0xcc9
	.uleb128 0x26
	.4byte	.LVL14
	.4byte	0xcd5
	.uleb128 0x26
	.4byte	.LVL15
	.4byte	0xce1
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0xced
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0xcf9
	.uleb128 0x26
	.4byte	.LVL18
	.4byte	0xd05
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0xd11
	.uleb128 0x26
	.4byte	.LVL20
	.4byte	0xd1d
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF198
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF199
	.byte	0x1
	.byte	0x2c
	.byte	0x7
	.4byte	0x5ba
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x22b
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xc
	.byte	0x2e
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xd
	.byte	0x1d
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xe
	.byte	0x2d
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xb
	.byte	0x27
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xf
	.byte	0x45
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x10
	.byte	0x25
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x11
	.byte	0x2e
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x12
	.byte	0x2b
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x13
	.byte	0x1a
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x14
	.byte	0x1d
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x15
	.byte	0x1c
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x16
	.2byte	0x48f
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF144:
	.ascii	"RCC_ADC1\000"
.LASF36:
	.ascii	"_on_exit_args\000"
.LASF104:
	.ascii	"_wctomb_state\000"
.LASF101:
	.ascii	"_r48\000"
.LASF106:
	.ascii	"_signal_buf\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF142:
	.ascii	"RCC_USART8\000"
.LASF50:
	.ascii	"_lbfsize\000"
.LASF48:
	.ascii	"_flags\000"
.LASF65:
	.ascii	"_errno\000"
.LASF189:
	.ascii	"hdmi_setup\000"
.LASF123:
	.ascii	"_sys_nerr\000"
.LASF62:
	.ascii	"_mbstate\000"
.LASF191:
	.ascii	"create_tasks\000"
.LASF182:
	.ascii	"state_setup\000"
.LASF52:
	.ascii	"_read\000"
.LASF108:
	.ascii	"_mbrlen_state\000"
.LASF67:
	.ascii	"_stdout\000"
.LASF166:
	.ascii	"RCC_CAN\000"
.LASF12:
	.ascii	"_fpos_t\000"
.LASF43:
	.ascii	"_fns\000"
.LASF51:
	.ascii	"_cookie\000"
.LASF25:
	.ascii	"_Bigint\000"
.LASF33:
	.ascii	"__tm_wday\000"
.LASF186:
	.ascii	"keys_setup\000"
.LASF75:
	.ascii	"_result\000"
.LASF121:
	.ascii	"uint32_t\000"
.LASF128:
	.ascii	"RCC_DMA2\000"
.LASF29:
	.ascii	"__tm_hour\000"
.LASF132:
	.ascii	"RCC_GPIOA\000"
.LASF16:
	.ascii	"__count\000"
.LASF28:
	.ascii	"__tm_min\000"
.LASF119:
	.ascii	"_impure_ptr\000"
.LASF175:
	.ascii	"QueueDefinition\000"
.LASF190:
	.ascii	"cmd_setup\000"
.LASF114:
	.ascii	"_nextf\000"
.LASF198:
	.ascii	"clock_setup\000"
.LASF91:
	.ascii	"_rand48\000"
.LASF138:
	.ascii	"RCC_TSC\000"
.LASF76:
	.ascii	"_result_k\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF97:
	.ascii	"_asctime_buf\000"
.LASF47:
	.ascii	"__sFILE\000"
.LASF24:
	.ascii	"_wds\000"
.LASF139:
	.ascii	"RCC_SYSCFG_COMP\000"
.LASF131:
	.ascii	"RCC_CRC\000"
.LASF87:
	.ascii	"__FILE\000"
.LASF59:
	.ascii	"_offset\000"
.LASF168:
	.ascii	"RCC_CRS\000"
.LASF70:
	.ascii	"_emergency\000"
.LASF27:
	.ascii	"__tm_sec\000"
.LASF126:
	.ascii	"RCC_DMA\000"
.LASF181:
	.ascii	"rcc_periph_clock_enable\000"
.LASF34:
	.ascii	"__tm_yday\000"
.LASF69:
	.ascii	"_inc\000"
.LASF42:
	.ascii	"_ind\000"
.LASF185:
	.ascii	"control_setup\000"
.LASF157:
	.ascii	"RCC_WWDG\000"
.LASF173:
	.ascii	"RCC_RTC\000"
.LASF147:
	.ascii	"RCC_USART1\000"
.LASF159:
	.ascii	"RCC_USART2\000"
.LASF160:
	.ascii	"RCC_USART3\000"
.LASF161:
	.ascii	"RCC_USART4\000"
.LASF162:
	.ascii	"RCC_USART5\000"
.LASF140:
	.ascii	"RCC_USART6\000"
.LASF141:
	.ascii	"RCC_USART7\000"
.LASF21:
	.ascii	"_next\000"
.LASF184:
	.ascii	"uart_setup\000"
.LASF110:
	.ascii	"_mbsrtowcs_state\000"
.LASF17:
	.ascii	"__value\000"
.LASF77:
	.ascii	"_p5s\000"
.LASF124:
	.ascii	"rcc_ahb_frequency\000"
.LASF112:
	.ascii	"_wcsrtombs_state\000"
.LASF102:
	.ascii	"_mblen_state\000"
.LASF86:
	.ascii	"char\000"
.LASF30:
	.ascii	"__tm_mday\000"
.LASF83:
	.ascii	"_sig_func\000"
.LASF109:
	.ascii	"_mbrtowc_state\000"
.LASF82:
	.ascii	"_atexit0\000"
.LASF177:
	.ascii	"usart_incoming_queue\000"
.LASF19:
	.ascii	"_flock_t\000"
.LASF174:
	.ascii	"QueueHandle_t\000"
.LASF14:
	.ascii	"__wch\000"
.LASF90:
	.ascii	"_iobs\000"
.LASF133:
	.ascii	"RCC_GPIOB\000"
.LASF134:
	.ascii	"RCC_GPIOC\000"
.LASF135:
	.ascii	"RCC_GPIOD\000"
.LASF136:
	.ascii	"RCC_GPIOE\000"
.LASF137:
	.ascii	"RCC_GPIOF\000"
.LASF188:
	.ascii	"oled_setup\000"
.LASF55:
	.ascii	"_close\000"
.LASF130:
	.ascii	"RCC_FLTIF\000"
.LASF165:
	.ascii	"RCC_USB\000"
.LASF73:
	.ascii	"__sdidinit\000"
.LASF156:
	.ascii	"RCC_TIM14\000"
.LASF148:
	.ascii	"RCC_TIM15\000"
.LASF149:
	.ascii	"RCC_TIM16\000"
.LASF66:
	.ascii	"_stdin\000"
.LASF99:
	.ascii	"_gamma_signgam\000"
.LASF6:
	.ascii	"long long int\000"
.LASF45:
	.ascii	"_base\000"
.LASF164:
	.ascii	"RCC_I2C2\000"
.LASF78:
	.ascii	"_freelist\000"
.LASF93:
	.ascii	"_mult\000"
.LASF20:
	.ascii	"__ULong\000"
.LASF111:
	.ascii	"_wcrtomb_state\000"
.LASF179:
	.ascii	"usart_queue_set\000"
.LASF49:
	.ascii	"_file\000"
.LASF199:
	.ascii	"getVersion\000"
.LASF170:
	.ascii	"RCC_DAC\000"
.LASF74:
	.ascii	"__cleanup\000"
.LASF18:
	.ascii	"_mbstate_t\000"
.LASF143:
	.ascii	"RCC_ADC\000"
.LASF146:
	.ascii	"RCC_SPI1\000"
.LASF158:
	.ascii	"RCC_SPI2\000"
.LASF171:
	.ascii	"RCC_DAC1\000"
.LASF35:
	.ascii	"__tm_isdst\000"
.LASF176:
	.ascii	"QueueSetHandle_t\000"
.LASF113:
	.ascii	"_h_errno\000"
.LASF178:
	.ascii	"usart_outgoing_queue\000"
.LASF31:
	.ascii	"__tm_mon\000"
.LASF145:
	.ascii	"RCC_TIM1\000"
.LASF10:
	.ascii	"_LOCK_T\000"
.LASF153:
	.ascii	"RCC_TIM3\000"
.LASF154:
	.ascii	"RCC_TIM6\000"
.LASF155:
	.ascii	"RCC_TIM7\000"
.LASF197:
	.ascii	"main\000"
.LASF53:
	.ascii	"_write\000"
.LASF195:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF41:
	.ascii	"_atexit\000"
.LASF2:
	.ascii	"short int\000"
.LASF163:
	.ascii	"RCC_I2C1\000"
.LASF4:
	.ascii	"long int\000"
.LASF85:
	.ascii	"__sf\000"
.LASF23:
	.ascii	"_sign\000"
.LASF167:
	.ascii	"RCC_CAN1\000"
.LASF60:
	.ascii	"_data\000"
.LASF15:
	.ascii	"__wchb\000"
.LASF120:
	.ascii	"_global_impure_ptr\000"
.LASF32:
	.ascii	"__tm_year\000"
.LASF98:
	.ascii	"_localtime_buf\000"
.LASF116:
	.ascii	"_unused\000"
.LASF183:
	.ascii	"leds_setup\000"
.LASF81:
	.ascii	"_new\000"
.LASF79:
	.ascii	"_cvtlen\000"
.LASF22:
	.ascii	"_maxwds\000"
.LASF105:
	.ascii	"_l64a_buf\000"
.LASF169:
	.ascii	"RCC_PWR\000"
.LASF172:
	.ascii	"RCC_CEC\000"
.LASF58:
	.ascii	"_blksize\000"
.LASF26:
	.ascii	"__tm\000"
.LASF61:
	.ascii	"_lock\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF125:
	.ascii	"rcc_apb1_frequency\000"
.LASF89:
	.ascii	"_niobs\000"
.LASF13:
	.ascii	"wint_t\000"
.LASF180:
	.ascii	"rcc_clock_setup_in_hsi_out_48mhz\000"
.LASF38:
	.ascii	"_dso_handle\000"
.LASF192:
	.ascii	"vTaskStartScheduler\000"
.LASF117:
	.ascii	"__lock\000"
.LASF127:
	.ascii	"RCC_DMA1\000"
.LASF80:
	.ascii	"_cvtbuf\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF150:
	.ascii	"RCC_TIM17\000"
.LASF107:
	.ascii	"_getdate_err\000"
.LASF94:
	.ascii	"_add\000"
.LASF196:
	.ascii	"rcc_periph_clken\000"
.LASF129:
	.ascii	"RCC_SRAM\000"
.LASF44:
	.ascii	"__sbuf\000"
.LASF88:
	.ascii	"_glue\000"
.LASF84:
	.ascii	"__sglue\000"
.LASF96:
	.ascii	"_strtok_last\000"
.LASF103:
	.ascii	"_mbtowc_state\000"
.LASF193:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF152:
	.ascii	"RCC_TIM2\000"
.LASF72:
	.ascii	"_locale\000"
.LASF37:
	.ascii	"_fnargs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF64:
	.ascii	"_reent\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF187:
	.ascii	"adc_setup\000"
.LASF122:
	.ascii	"_sys_errlist\000"
.LASF194:
	.ascii	"firmware.c\000"
.LASF39:
	.ascii	"_fntypes\000"
.LASF46:
	.ascii	"_size\000"
.LASF11:
	.ascii	"_off_t\000"
.LASF57:
	.ascii	"_nbuf\000"
.LASF95:
	.ascii	"_unused_rand\000"
.LASF151:
	.ascii	"RCC_DBGMCU\000"
.LASF71:
	.ascii	"_unspecified_locale_info\000"
.LASF63:
	.ascii	"_flags2\000"
.LASF40:
	.ascii	"_is_cxa\000"
.LASF92:
	.ascii	"_seed\000"
.LASF100:
	.ascii	"_rand_next\000"
.LASF118:
	.ascii	"__locale_t\000"
.LASF54:
	.ascii	"_seek\000"
.LASF68:
	.ascii	"_stderr\000"
.LASF115:
	.ascii	"_nmalloc\000"
.LASF56:
	.ascii	"_ubuf\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
