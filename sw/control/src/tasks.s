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
	.file	"tasks.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utilsTask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	utilsTask
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	utilsTask, %function
utilsTask:
.LFB5:
	.file 1 "tasks.c"
	.loc 1 94 30 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 94 30 is_stmt 0 view .LVU1
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL1:
.L2:
	.loc 1 95 5 is_stmt 1 discriminator 1 view .LVU2
	.loc 1 103 5 discriminator 1 view .LVU3
	.loc 1 104 9 discriminator 1 view .LVU4
	movs	r0, #10
	bl	vTaskDelay
.LVL2:
	b	.L2
	.cfi_endproc
.LFE5:
	.size	utilsTask, .-utilsTask
	.section	.text.usartTask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usartTask
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	usartTask, %function
usartTask:
.LVL3:
.LFB3:
	.loc 1 60 30 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 61 5 view .LVU6
	.loc 1 63 5 view .LVU7
	.loc 1 60 30 is_stmt 0 view .LVU8
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 63 5 view .LVU9
	movs	r0, #100
.LVL4:
	.loc 1 63 5 view .LVU10
	bl	vTaskDelay
.LVL5:
	ldr	r4, .L8
	ldr	r5, .L8+4
.L7:
	.loc 1 66 16 view .LVU11
	movs	r2, #1
	movs	r1, r4
	rsbs	r2, r2, #0
	ldr	r0, [r5]
	bl	xQueueReceive
.LVL6:
	.loc 1 66 15 view .LVU12
	cmp	r0, #1
	bne	.L7
	.loc 1 67 12 is_stmt 1 view .LVU13
	ldrb	r0, [r4]
	bl	cmd_process_data
.LVL7:
	b	.L7
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.word	usart_incoming_queue
	.cfi_endproc
.LFE3:
	.size	usartTask, .-usartTask
	.section	.text.create_tasks,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	create_tasks
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	create_tasks, %function
create_tasks:
.LFB6:
	.loc 1 135 25 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 137 5 view .LVU15
	.loc 1 135 25 is_stmt 0 view .LVU16
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 137 5 view .LVU17
	movs	r4, #1
	ldr	r3, .L11
	.loc 1 135 25 view .LVU18
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 137 5 view .LVU19
	str	r3, [sp, #4]
	str	r4, [sp]
	movs	r3, #0
	movs	r2, #128
	ldr	r1, .L11+4
	ldr	r0, .L11+8
	bl	xTaskCreate
.LVL8:
	.loc 1 138 5 is_stmt 1 view .LVU20
	ldr	r3, .L11+12
	str	r4, [sp]
	str	r3, [sp, #4]
	movs	r2, #64
	movs	r3, #0
	ldr	r1, .L11+16
	ldr	r0, .L11+20
	bl	xTaskCreate
.LVL9:
	.loc 1 140 1 is_stmt 0 view .LVU21
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR1
	.word	.LC2
	.word	usartTask
	.word	.LANCHOR2
	.word	.LC6
	.word	utilsTask
	.cfi_endproc
.LFE6:
	.size	create_tasks, .-create_tasks
	.global	th_utils
	.global	th_usart
	.global	key2_pressed_time
	.global	key1_pressed_time
	.global	activated_queue
	.global	data
	.global	general_buffer
	.global	colors
	.section	.bss.activated_queue,"aw",%nobits
	.align	2
	.type	activated_queue, %object
	.size	activated_queue, 4
activated_queue:
	.space	4
	.section	.bss.data,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	data, %object
	.size	data, 1
data:
	.space	1
	.section	.bss.general_buffer,"aw",%nobits
	.align	2
	.type	general_buffer, %object
	.size	general_buffer, 32
general_buffer:
	.space	32
	.section	.bss.key1_pressed_time,"aw",%nobits
	.align	2
	.type	key1_pressed_time, %object
	.size	key1_pressed_time, 4
key1_pressed_time:
	.space	4
	.section	.bss.key2_pressed_time,"aw",%nobits
	.align	2
	.type	key2_pressed_time, %object
	.size	key2_pressed_time, 4
key2_pressed_time:
	.space	4
	.section	.bss.th_usart,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	th_usart, %object
	.size	th_usart, 4
th_usart:
	.space	4
	.section	.bss.th_utils,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	th_utils, %object
	.size	th_utils, 4
th_utils:
	.space	4
	.section	.rodata.colors,"a"
	.align	2
	.type	colors, %object
	.size	colors, 15
colors:
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.rodata.create_tasks.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"USRT\000"
	.space	3
.LC6:
	.ascii	"UTIL\000"
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h"
	.file 6 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
	.file 9 "../FreeRTOS/Source/include/task.h"
	.file 10 "../FreeRTOS/Source/include/queue.h"
	.file 11 "../include/xprintf.h"
	.file 12 "../include/uart.h"
	.file 13 "../include/cmd.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc16
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x22
	.byte	0x19
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	.LASF118
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x4d
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x7c
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xe3
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xb4
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xe3
	.byte	0
	.uleb128 0xb
	.4byte	0x38
	.4byte	0xf3
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x117
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x75
	.byte	0
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xc1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xf3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaf
	.byte	0x11
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x60
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x195
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x195
	.byte	0
	.uleb128 0x10
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x75
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x75
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x75
	.byte	0x10
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x19b
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13b
	.uleb128 0xb
	.4byte	0x12f
	.4byte	0x1ab
	.uleb128 0xc
	.4byte	0x7c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x22e
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x75
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x75
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x75
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x75
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x273
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x273
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x273
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x12f
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x12f
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x83
	.4byte	0x283
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.byte	0x8
	.4byte	0x2c6
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x6
	.byte	0x5e
	.byte	0x12
	.4byte	0x2c6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x5f
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0x61
	.byte	0x9
	.4byte	0x2cc
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x62
	.byte	0x1e
	.4byte	0x22e
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x283
	.uleb128 0xb
	.4byte	0x2dc
	.4byte	0x2dc
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0x13
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x30b
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x30b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x454
	.uleb128 0x10
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x30b
	.byte	0
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0x10
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e3
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x83
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x5d8
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x602
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x626
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x640
	.byte	0x2c
	.uleb128 0x10
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2e3
	.byte	0x30
	.uleb128 0x10
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x30b
	.byte	0x38
	.uleb128 0x10
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x75
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x646
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x656
	.byte	0x43
	.uleb128 0x10
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e3
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x75
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x9c
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.byte	0xde
	.byte	0x12
	.4byte	0x472
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x123
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x117
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x75
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.4byte	0x75
	.4byte	0x472
	.uleb128 0x15
	.4byte	0x472
	.uleb128 0x15
	.4byte	0x83
	.uleb128 0x15
	.4byte	0x5c6
	.uleb128 0x15
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x16
	.4byte	0x472
	.uleb128 0x17
	.4byte	.LASF65
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.byte	0x8
	.4byte	0x5c6
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x262
	.byte	0x7
	.4byte	0x75
	.byte	0
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x267
	.byte	0xb
	.4byte	0x6b2
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x267
	.byte	0x14
	.4byte	0x6b2
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x267
	.byte	0x1e
	.4byte	0x6b2
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x269
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26a
	.byte	0x8
	.4byte	0x8b2
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26d
	.byte	0x7
	.4byte	0x75
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26e
	.byte	0x16
	.4byte	0x8c7
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x270
	.byte	0x7
	.4byte	0x75
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x272
	.byte	0xa
	.4byte	0x8d8
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x275
	.byte	0x13
	.4byte	0x195
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x276
	.byte	0x7
	.4byte	0x75
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x277
	.byte	0x13
	.4byte	0x195
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x278
	.byte	0x14
	.4byte	0x8de
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x75
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27c
	.byte	0x9
	.4byte	0x5c6
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x29f
	.byte	0x7
	.4byte	0x88d
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2a3
	.byte	0x13
	.4byte	0x2c6
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x2a4
	.byte	0x12
	.4byte	0x283
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x2a8
	.byte	0xc
	.4byte	0x8ef
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2ad
	.byte	0x10
	.4byte	0x673
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2af
	.byte	0xa
	.4byte	0x8fb
	.2byte	0x2ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5cc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF87
	.uleb128 0x16
	.4byte	0x5cc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x454
	.uleb128 0x14
	.4byte	0x75
	.4byte	0x5fc
	.uleb128 0x15
	.4byte	0x472
	.uleb128 0x15
	.4byte	0x83
	.uleb128 0x15
	.4byte	0x5fc
	.uleb128 0x15
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x14
	.4byte	0xa8
	.4byte	0x626
	.uleb128 0x15
	.4byte	0x472
	.uleb128 0x15
	.4byte	0x83
	.uleb128 0x15
	.4byte	0xa8
	.uleb128 0x15
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x608
	.uleb128 0x14
	.4byte	0x75
	.4byte	0x640
	.uleb128 0x15
	.4byte	0x472
	.uleb128 0x15
	.4byte	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62c
	.uleb128 0xb
	.4byte	0x38
	.4byte	0x656
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x38
	.4byte	0x666
	.uleb128 0xc
	.4byte	0x7c
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x311
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x6ac
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x6ac
	.byte	0
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x6b2
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x673
	.uleb128 0x6
	.byte	0x4
	.4byte	0x666
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x6f1
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x6f1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x6f1
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x46
	.4byte	0x701
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x816
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x282
	.byte	0x18
	.4byte	0x7c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x283
	.byte	0x12
	.4byte	0x5c6
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x284
	.byte	0x10
	.4byte	0x816
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x285
	.byte	0x17
	.4byte	0x1ab
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x286
	.byte	0xf
	.4byte	0x75
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x287
	.byte	0x2c
	.4byte	0x6e
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x288
	.byte	0x1a
	.4byte	0x6b8
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x289
	.byte	0x16
	.4byte	0x117
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28a
	.byte	0x16
	.4byte	0x117
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28b
	.byte	0x16
	.4byte	0x117
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28c
	.byte	0x10
	.4byte	0x826
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28d
	.byte	0x10
	.4byte	0x836
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28e
	.byte	0xf
	.4byte	0x75
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x117
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x117
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x291
	.byte	0x16
	.4byte	0x117
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x292
	.byte	0x16
	.4byte	0x117
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x293
	.byte	0x16
	.4byte	0x117
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x294
	.byte	0x8
	.4byte	0x75
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.4byte	0x5cc
	.4byte	0x826
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x5cc
	.4byte	0x836
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x5cc
	.4byte	0x846
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.byte	0x7
	.4byte	0x86d
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x29c
	.byte	0x1b
	.4byte	0x86d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x29d
	.byte	0x18
	.4byte	0x87d
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x30b
	.4byte	0x87d
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x7c
	.4byte	0x88d
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.byte	0x3
	.4byte	0x8b2
	.uleb128 0x1d
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x295
	.byte	0xb
	.4byte	0x701
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x29e
	.byte	0xb
	.4byte	0x846
	.byte	0
	.uleb128 0xb
	.4byte	0x5cc
	.4byte	0x8c2
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF119
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c2
	.uleb128 0x1e
	.4byte	0x8d8
	.uleb128 0x15
	.4byte	0x472
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x195
	.uleb128 0x1e
	.4byte	0x8ef
	.uleb128 0x15
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8f5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8e4
	.uleb128 0xb
	.4byte	0x666
	.4byte	0x90b
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x32e
	.byte	0x17
	.4byte	0x472
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x32f
	.byte	0x1d
	.4byte	0x478
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x16
	.4byte	0x925
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x8
	.byte	0x38
	.byte	0xe
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x8
	.byte	0x39
	.byte	0x17
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x8
	.byte	0x3f
	.byte	0x13
	.4byte	0x936
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x9
	.byte	0x3e
	.byte	0x25
	.4byte	0x972
	.uleb128 0x6
	.byte	0x4
	.4byte	0x978
	.uleb128 0x7
	.4byte	.LASF128
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xa
	.byte	0x30
	.byte	0x22
	.4byte	0x989
	.uleb128 0x6
	.byte	0x4
	.4byte	0x98f
	.uleb128 0x7
	.4byte	.LASF130
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xa
	.byte	0x37
	.byte	0x22
	.4byte	0x989
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xa
	.byte	0x3e
	.byte	0x22
	.4byte	0x989
	.uleb128 0x1e
	.4byte	0x9b7
	.uleb128 0x15
	.4byte	0x38
	.byte	0
	.uleb128 0x20
	.4byte	.LASF133
	.byte	0xb
	.byte	0x11
	.byte	0xf
	.4byte	0x9c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ac
	.uleb128 0x21
	.4byte	0x38
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0xb
	.byte	0x20
	.byte	0x18
	.4byte	0x9da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0xc
	.byte	0x23
	.byte	0x16
	.4byte	0x97d
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0xc
	.byte	0x24
	.byte	0x16
	.4byte	0x97d
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0xc
	.byte	0x25
	.byte	0x19
	.4byte	0x994
	.uleb128 0xb
	.4byte	0x931
	.4byte	0xa1a
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x4
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	0xa04
	.uleb128 0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0xa1a
	.uleb128 0x5
	.byte	0x3
	.4byte	colors
	.uleb128 0xb
	.4byte	0x5cc
	.4byte	0xa41
	.uleb128 0xc
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	0xa31
	.uleb128 0x5
	.byte	0x3
	.4byte	general_buffer
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x925
	.uleb128 0x5
	.byte	0x3
	.4byte	data
	.uleb128 0x22
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3a
	.byte	0x18
	.4byte	0x9a0
	.uleb128 0x5
	.byte	0x3
	.4byte	activated_queue
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.4byte	0x75
	.uleb128 0x5
	.byte	0x3
	.4byte	key1_pressed_time
	.uleb128 0x22
	.4byte	.LASF143
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.4byte	0x75
	.uleb128 0x5
	.byte	0x3
	.4byte	key2_pressed_time
	.uleb128 0x22
	.4byte	.LASF144
	.byte	0x1
	.byte	0x86
	.byte	0xe
	.4byte	0x966
	.uleb128 0x5
	.byte	0x3
	.4byte	th_usart
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x1
	.byte	0x86
	.byte	0x18
	.4byte	0x966
	.uleb128 0x5
	.byte	0x3
	.4byte	th_utils
	.uleb128 0x23
	.4byte	.LASF146
	.byte	0x1
	.byte	0x87
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4a
	.uleb128 0x24
	.4byte	.LVL8
	.4byte	0xbe6
	.4byte	0xb11
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	usartTask
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0xbe6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	utilsTask
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb84
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x1
	.byte	0x5e
	.byte	0x16
	.4byte	0x83
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.4byte	.LVL2
	.4byte	0xbf3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe6
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x1
	.byte	0x3c
	.byte	0x16
	.4byte	0x83
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x24
	.4byte	.LVL5
	.4byte	0xbf3
	.4byte	0xbc2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x24
	.4byte	.LVL6
	.4byte	0xc00
	.4byte	0xbdc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0xc0d
	.byte	0
	.uleb128 0x29
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x142
	.byte	0xd
	.uleb128 0x29
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x364
	.byte	0xc
	.uleb128 0x2a
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xd
	.byte	0x1e
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU1
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF145:
	.ascii	"th_utils\000"
.LASF37:
	.ascii	"_on_exit_args\000"
.LASF105:
	.ascii	"_wctomb_state\000"
.LASF128:
	.ascii	"tskTaskControlBlock\000"
.LASF102:
	.ascii	"_r48\000"
.LASF152:
	.ascii	"xQueueReceive\000"
.LASF107:
	.ascii	"_signal_buf\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF51:
	.ascii	"_lbfsize\000"
.LASF49:
	.ascii	"_flags\000"
.LASF66:
	.ascii	"_errno\000"
.LASF139:
	.ascii	"general_buffer\000"
.LASF63:
	.ascii	"_mbstate\000"
.LASF146:
	.ascii	"create_tasks\000"
.LASF53:
	.ascii	"_read\000"
.LASF109:
	.ascii	"_mbrlen_state\000"
.LASF68:
	.ascii	"_stdout\000"
.LASF13:
	.ascii	"_fpos_t\000"
.LASF44:
	.ascii	"_fns\000"
.LASF52:
	.ascii	"_cookie\000"
.LASF134:
	.ascii	"xfunc_in\000"
.LASF26:
	.ascii	"_Bigint\000"
.LASF34:
	.ascii	"__tm_wday\000"
.LASF76:
	.ascii	"_result\000"
.LASF123:
	.ascii	"uint32_t\000"
.LASF30:
	.ascii	"__tm_hour\000"
.LASF17:
	.ascii	"__count\000"
.LASF29:
	.ascii	"__tm_min\000"
.LASF120:
	.ascii	"_impure_ptr\000"
.LASF130:
	.ascii	"QueueDefinition\000"
.LASF115:
	.ascii	"_nextf\000"
.LASF155:
	.ascii	"tasks.c\000"
.LASF92:
	.ascii	"_rand48\000"
.LASF77:
	.ascii	"_result_k\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF98:
	.ascii	"_asctime_buf\000"
.LASF143:
	.ascii	"key2_pressed_time\000"
.LASF48:
	.ascii	"__sFILE\000"
.LASF25:
	.ascii	"_wds\000"
.LASF88:
	.ascii	"__FILE\000"
.LASF60:
	.ascii	"_offset\000"
.LASF142:
	.ascii	"key1_pressed_time\000"
.LASF71:
	.ascii	"_emergency\000"
.LASF141:
	.ascii	"activated_queue\000"
.LASF28:
	.ascii	"__tm_sec\000"
.LASF132:
	.ascii	"QueueSetMemberHandle_t\000"
.LASF35:
	.ascii	"__tm_yday\000"
.LASF70:
	.ascii	"_inc\000"
.LASF43:
	.ascii	"_ind\000"
.LASF22:
	.ascii	"_next\000"
.LASF111:
	.ascii	"_mbsrtowcs_state\000"
.LASF151:
	.ascii	"vTaskDelay\000"
.LASF18:
	.ascii	"__value\000"
.LASF78:
	.ascii	"_p5s\000"
.LASF113:
	.ascii	"_wcsrtombs_state\000"
.LASF103:
	.ascii	"_mblen_state\000"
.LASF87:
	.ascii	"char\000"
.LASF31:
	.ascii	"__tm_mday\000"
.LASF84:
	.ascii	"_sig_func\000"
.LASF110:
	.ascii	"_mbrtowc_state\000"
.LASF83:
	.ascii	"_atexit0\000"
.LASF135:
	.ascii	"usart_incoming_queue\000"
.LASF125:
	.ascii	"UBaseType_t\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF129:
	.ascii	"QueueHandle_t\000"
.LASF150:
	.ascii	"xTaskCreate\000"
.LASF15:
	.ascii	"__wch\000"
.LASF91:
	.ascii	"_iobs\000"
.LASF122:
	.ascii	"uint8_t\000"
.LASF56:
	.ascii	"_close\000"
.LASF74:
	.ascii	"__sdidinit\000"
.LASF67:
	.ascii	"_stdin\000"
.LASF100:
	.ascii	"_gamma_signgam\000"
.LASF8:
	.ascii	"long long int\000"
.LASF46:
	.ascii	"_base\000"
.LASF79:
	.ascii	"_freelist\000"
.LASF94:
	.ascii	"_mult\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF133:
	.ascii	"xfunc_out\000"
.LASF112:
	.ascii	"_wcrtomb_state\000"
.LASF137:
	.ascii	"usart_queue_set\000"
.LASF124:
	.ascii	"BaseType_t\000"
.LASF50:
	.ascii	"_file\000"
.LASF75:
	.ascii	"__cleanup\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF36:
	.ascii	"__tm_isdst\000"
.LASF127:
	.ascii	"TaskHandle_t\000"
.LASF131:
	.ascii	"QueueSetHandle_t\000"
.LASF114:
	.ascii	"_h_errno\000"
.LASF149:
	.ascii	"pvData\000"
.LASF126:
	.ascii	"TickType_t\000"
.LASF136:
	.ascii	"usart_outgoing_queue\000"
.LASF140:
	.ascii	"data\000"
.LASF32:
	.ascii	"__tm_mon\000"
.LASF148:
	.ascii	"usartTask\000"
.LASF11:
	.ascii	"_LOCK_T\000"
.LASF54:
	.ascii	"_write\000"
.LASF156:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF42:
	.ascii	"_atexit\000"
.LASF144:
	.ascii	"th_usart\000"
.LASF2:
	.ascii	"short int\000"
.LASF138:
	.ascii	"colors\000"
.LASF4:
	.ascii	"long int\000"
.LASF86:
	.ascii	"__sf\000"
.LASF24:
	.ascii	"_sign\000"
.LASF61:
	.ascii	"_data\000"
.LASF16:
	.ascii	"__wchb\000"
.LASF121:
	.ascii	"_global_impure_ptr\000"
.LASF33:
	.ascii	"__tm_year\000"
.LASF99:
	.ascii	"_localtime_buf\000"
.LASF117:
	.ascii	"_unused\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF147:
	.ascii	"utilsTask\000"
.LASF82:
	.ascii	"_new\000"
.LASF80:
	.ascii	"_cvtlen\000"
.LASF23:
	.ascii	"_maxwds\000"
.LASF106:
	.ascii	"_l64a_buf\000"
.LASF153:
	.ascii	"cmd_process_data\000"
.LASF59:
	.ascii	"_blksize\000"
.LASF27:
	.ascii	"__tm\000"
.LASF62:
	.ascii	"_lock\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF90:
	.ascii	"_niobs\000"
.LASF14:
	.ascii	"wint_t\000"
.LASF39:
	.ascii	"_dso_handle\000"
.LASF118:
	.ascii	"__lock\000"
.LASF81:
	.ascii	"_cvtbuf\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF108:
	.ascii	"_getdate_err\000"
.LASF95:
	.ascii	"_add\000"
.LASF45:
	.ascii	"__sbuf\000"
.LASF89:
	.ascii	"_glue\000"
.LASF85:
	.ascii	"__sglue\000"
.LASF97:
	.ascii	"_strtok_last\000"
.LASF104:
	.ascii	"_mbtowc_state\000"
.LASF154:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF73:
	.ascii	"_locale\000"
.LASF38:
	.ascii	"_fnargs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF65:
	.ascii	"_reent\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"_fntypes\000"
.LASF47:
	.ascii	"_size\000"
.LASF12:
	.ascii	"_off_t\000"
.LASF58:
	.ascii	"_nbuf\000"
.LASF96:
	.ascii	"_unused_rand\000"
.LASF72:
	.ascii	"_unspecified_locale_info\000"
.LASF64:
	.ascii	"_flags2\000"
.LASF41:
	.ascii	"_is_cxa\000"
.LASF93:
	.ascii	"_seed\000"
.LASF101:
	.ascii	"_rand_next\000"
.LASF119:
	.ascii	"__locale_t\000"
.LASF55:
	.ascii	"_seek\000"
.LASF69:
	.ascii	"_stderr\000"
.LASF116:
	.ascii	"_nmalloc\000"
.LASF57:
	.ascii	"_ubuf\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
