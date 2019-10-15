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
	.file	"keys.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.keys_setup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	keys_setup
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	keys_setup, %function
keys_setup:
.LFB0:
	.file 1 "keys.c"
	.loc 1 33 23 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 34 5 view .LVU1
	.loc 1 33 23 is_stmt 0 view .LVU2
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 34 5 view .LVU3
	movs	r0, #7
	bl	nvic_enable_irq
.LVL0:
	.loc 1 36 5 is_stmt 1 view .LVU4
	.loc 1 38 5 is_stmt 0 view .LVU5
	movs	r5, #128
	.loc 1 36 5 view .LVU6
	movs	r3, #192
	.loc 1 39 5 view .LVU7
	movs	r4, #128
	.loc 1 36 5 view .LVU8
	ldr	r6, .L3
	lsls	r3, r3, #6
	movs	r2, #0
	.loc 1 38 5 view .LVU9
	lsls	r5, r5, #5
	.loc 1 36 5 view .LVU10
	movs	r0, r6
	movs	r1, #0
	bl	gpio_mode_setup
.LVL1:
	.loc 1 38 5 is_stmt 1 view .LVU11
	.loc 1 39 5 is_stmt 0 view .LVU12
	lsls	r4, r4, #6
	.loc 1 38 5 view .LVU13
	movs	r1, r6
	movs	r0, r5
	bl	exti_select_source
.LVL2:
	.loc 1 39 5 is_stmt 1 view .LVU14
	movs	r1, r6
	movs	r0, r4
	bl	exti_select_source
.LVL3:
	.loc 1 40 5 view .LVU15
	movs	r0, r5
	movs	r1, #1
	bl	exti_set_trigger
.LVL4:
	.loc 1 41 5 view .LVU16
	movs	r1, #1
	movs	r0, r4
	bl	exti_set_trigger
.LVL5:
	.loc 1 42 5 view .LVU17
	movs	r0, r5
	bl	exti_enable_request
.LVL6:
	.loc 1 43 5 view .LVU18
	movs	r0, r4
	bl	exti_enable_request
.LVL7:
	.loc 1 44 1 is_stmt 0 view .LVU19
	@ sp needed
	pop	{r4, r5, r6, pc}
.L4:
	.align	2
.L3:
	.word	1207960576
	.cfi_endproc
.LFE0:
	.size	keys_setup, .-keys_setup
	.section	.text.exti4_15_isr,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	exti4_15_isr
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	exti4_15_isr, %function
exti4_15_isr:
.LFB2:
	.loc 1 54 25 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 55 5 view .LVU21
	.loc 1 55 9 is_stmt 0 view .LVU22
	movs	r0, #128
	.loc 1 54 25 view .LVU23
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 55 9 view .LVU24
	lsls	r0, r0, #5
	bl	exti_get_flag_status
.LVL8:
	.loc 1 59 5 is_stmt 1 view .LVU25
	.loc 1 59 9 is_stmt 0 view .LVU26
	movs	r0, #128
	lsls	r0, r0, #6
	bl	exti_get_flag_status
.LVL9:
	.loc 1 63 5 is_stmt 1 view .LVU27
	movs	r0, #192
	lsls	r0, r0, #6
	bl	exti_reset_request
.LVL10:
	.loc 1 64 1 is_stmt 0 view .LVU28
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE2:
	.size	exti4_15_isr, .-exti4_15_isr
	.section	.text.keys_is_1_pressed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	keys_is_1_pressed
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	keys_is_1_pressed, %function
keys_is_1_pressed:
.LFB3:
	.loc 1 66 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 67 5 view .LVU30
	.loc 1 67 13 is_stmt 0 view .LVU31
	movs	r1, #128
	.loc 1 66 29 view .LVU32
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 67 13 view .LVU33
	lsls	r1, r1, #5
	ldr	r0, .L7
	bl	gpio_get
.LVL11:
	.loc 1 67 12 view .LVU34
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	.loc 1 68 1 view .LVU35
	@ sp needed
	.loc 1 67 12 view .LVU36
	uxtb	r0, r0
	.loc 1 68 1 view .LVU37
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	1207960576
	.cfi_endproc
.LFE3:
	.size	keys_is_1_pressed, .-keys_is_1_pressed
	.section	.text.keys_is_2_pressed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	keys_is_2_pressed
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	keys_is_2_pressed, %function
keys_is_2_pressed:
.LFB4:
	.loc 1 70 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 71 5 view .LVU39
	.loc 1 71 13 is_stmt 0 view .LVU40
	movs	r1, #128
	.loc 1 70 29 view .LVU41
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 71 13 view .LVU42
	lsls	r1, r1, #6
	ldr	r0, .L10
	bl	gpio_get
.LVL12:
	.loc 1 71 12 view .LVU43
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	.loc 1 72 1 view .LVU44
	@ sp needed
	.loc 1 71 12 view .LVU45
	uxtb	r0, r0
	.loc 1 72 1 view .LVU46
	pop	{r4, pc}
.L11:
	.align	2
.L10:
	.word	1207960576
	.cfi_endproc
.LFE4:
	.size	keys_is_2_pressed, .-keys_is_2_pressed
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
	.file 5 "../FreeRTOS/Source/include/queue.h"
	.file 6 "../include/uart.h"
	.file 7 "../libopencm3/include/libopencm3/stm32/common/gpio_common_all.h"
	.file 8 "../libopencm3/include/libopencm3/stm32/common/exti_common_all.h"
	.file 9 "../libopencm3/include/libopencm3/cm3/nvic.h"
	.file 10 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x346
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x38
	.byte	0xe
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0xba
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc0
	.uleb128 0x6
	.4byte	.LASF41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x22
	.4byte	0xba
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x8
	.byte	0x53
	.byte	0x6
	.4byte	0xf6
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x23
	.byte	0x16
	.4byte	0xae
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x24
	.byte	0x16
	.4byte	0xae
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x25
	.byte	0x19
	.4byte	0xc5
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x14f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f
	.uleb128 0xb
	.4byte	.LVL12
	.4byte	0x2e8
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x48000400
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x14f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18b
	.uleb128 0xb
	.4byte	.LVL11
	.4byte	0x2e8
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x48000400
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd
	.uleb128 0xe
	.4byte	.LVL8
	.4byte	0x2f4
	.4byte	0x1b6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x2f4
	.4byte	0x1cb
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.byte	0
	.uleb128 0xb
	.4byte	.LVL10
	.4byte	0x300
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3000
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.byte	0x1
	.4byte	0x20f
	.uleb128 0x10
	.ascii	"key\000"
	.byte	0x1
	.byte	0x2f
	.byte	0x28
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x30
	.byte	0xa
	.4byte	0x5b
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x83
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e8
	.uleb128 0xe
	.4byte	.LVL0
	.4byte	0x30c
	.4byte	0x238
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x318
	.4byte	0x25d
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3000
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x325
	.4byte	0x277
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x325
	.4byte	0x291
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x331
	.4byte	0x2aa
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x331
	.4byte	0x2c3
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0x33d
	.4byte	0x2d7
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL7
	.4byte	0x33d
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4c
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x8
	.byte	0x60
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5e
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x9
	.byte	0x8b
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0xa
	.2byte	0x102
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x5f
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x8
	.byte	0x5b
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x8
	.byte	0x5c
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF21:
	.ascii	"usart_outgoing_queue\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF16:
	.ascii	"QueueSetHandle_t\000"
.LASF42:
	.ascii	"exti_trigger_type\000"
.LASF39:
	.ascii	"keys.c\000"
.LASF15:
	.ascii	"QueueHandle_t\000"
.LASF3:
	.ascii	"short int\000"
.LASF37:
	.ascii	"exti_enable_request\000"
.LASF30:
	.ascii	"gpio_get\000"
.LASF40:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF41:
	.ascii	"QueueDefinition\000"
.LASF27:
	.ascii	"data\000"
.LASF34:
	.ascii	"gpio_mode_setup\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF29:
	.ascii	"keys_setup\000"
.LASF31:
	.ascii	"exti_get_flag_status\000"
.LASF32:
	.ascii	"exti_reset_request\000"
.LASF22:
	.ascii	"usart_queue_set\000"
.LASF38:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF25:
	.ascii	"keys_is_1_pressed\000"
.LASF36:
	.ascii	"exti_set_trigger\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF24:
	.ascii	"keys_is_2_pressed\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF18:
	.ascii	"EXTI_TRIGGER_FALLING\000"
.LASF17:
	.ascii	"EXTI_TRIGGER_RISING\000"
.LASF20:
	.ascii	"usart_incoming_queue\000"
.LASF9:
	.ascii	"long long int\000"
.LASF28:
	.ascii	"exti4_15_isr\000"
.LASF43:
	.ascii	"send_key_pressed_event\000"
.LASF26:
	.ascii	"xHigherPriorityTaskWoken\000"
.LASF19:
	.ascii	"EXTI_TRIGGER_BOTH\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF5:
	.ascii	"long int\000"
.LASF14:
	.ascii	"char\000"
.LASF33:
	.ascii	"nvic_enable_irq\000"
.LASF1:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"exti_select_source\000"
.LASF23:
	.ascii	"_Bool\000"
.LASF13:
	.ascii	"BaseType_t\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
