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
	.file	"leds.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.leds_setup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	leds_setup
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	leds_setup, %function
leds_setup:
.LFB3:
	.file 1 "leds.c"
	.loc 1 36 23 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 37 5 view .LVU1
	.loc 1 36 23 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 37 5 view .LVU3
	movs	r3, #56
	movs	r2, #0
	movs	r1, #1
	ldr	r0, .L3
	bl	gpio_mode_setup
.LVL0:
	.loc 1 38 5 is_stmt 1 view .LVU4
	.loc 1 39 1 is_stmt 0 view .LVU5
	@ sp needed
	.loc 1 38 5 view .LVU6
	bl	ws2812_init
.LVL1:
	.loc 1 39 1 view .LVU7
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	1207960576
	.cfi_endproc
.LFE3:
	.size	leds_setup, .-leds_setup
	.section	.text.led_toggle,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	led_toggle
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	led_toggle, %function
led_toggle:
.LVL2:
.LFB4:
	.loc 1 41 31 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 42 5 view .LVU9
	.loc 1 42 8 is_stmt 0 view .LVU10
	movs	r3, r0
	movs	r2, #8
	subs	r3, r3, #8
	.loc 1 41 31 view .LVU11
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 42 8 view .LVU12
	bics	r3, r2
	beq	.L6
	.loc 1 42 44 discriminator 2 view .LVU13
	cmp	r0, #32
	beq	.L6
.LVL3:
.L5:
	.loc 1 45 1 view .LVU14
	@ sp needed
	pop	{r4, pc}
.LVL4:
.L6:
	.loc 1 43 9 is_stmt 1 view .LVU15
	uxth	r1, r0
	ldr	r0, .L11
.LVL5:
	.loc 1 43 9 is_stmt 0 view .LVU16
	bl	gpio_toggle
.LVL6:
	.loc 1 45 1 view .LVU17
	b	.L5
.L12:
	.align	2
.L11:
	.word	1207960576
	.cfi_endproc
.LFE4:
	.size	led_toggle, .-led_toggle
	.section	.text.led_set_color,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	led_set_color
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	led_set_color, %function
led_set_color:
.LVL7:
.LFB5:
	.loc 1 47 53 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 5 view .LVU19
	.loc 1 47 53 is_stmt 0 view .LVU20
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 48 5 view .LVU21
	uxtb	r3, r3
.LVL8:
	.loc 1 48 5 view .LVU22
	uxtb	r2, r2
.LVL9:
	.loc 1 48 5 view .LVU23
	uxtb	r1, r1
.LVL10:
	.loc 1 48 5 view .LVU24
	bl	ws2812_set_led_color
.LVL11:
	.loc 1 49 1 view .LVU25
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE5:
	.size	led_set_color, .-led_set_color
	.section	.text.led_get_color,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	led_get_color
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	led_get_color, %function
led_get_color:
.LVL12:
.LFB6:
	.loc 1 51 36 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 52 5 view .LVU27
	.loc 1 51 36 is_stmt 0 view .LVU28
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 52 12 view .LVU29
	bl	ws2812_get_led_color
.LVL13:
	.loc 1 52 12 view .LVU30
	movs	r1, #255
	movs	r3, r0
	lsrs	r2, r0, #8
	ands	r2, r1
	ands	r3, r1
	lsls	r2, r2, #8
	orrs	r3, r2
	lsrs	r0, r0, #16
	ldr	r2, .L15
	ands	r0, r1
	ands	r3, r2
	lsls	r0, r0, #16
	orrs	r0, r3
	.loc 1 53 1 view .LVU31
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.L16:
	.align	2
.L15:
	.word	-16711681
	.cfi_endproc
.LFE6:
	.size	led_get_color, .-led_get_color
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../libopencm3/include/libopencm3/stm32/f0/rcc.h"
	.file 5 "../include/leds.h"
	.file 6 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h"
	.file 7 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 8 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h"
	.file 9 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h"
	.file 10 "./ws2812.h"
	.file 11 "../libopencm3/include/libopencm3/stm32/common/gpio_common_all.h"
	.file 12 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb1a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x190
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x191
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x9
	.byte	0x3
	.byte	0x5
	.byte	0x27
	.byte	0x9
	.4byte	0xfa
	.uleb128 0xa
	.ascii	"red\000"
	.byte	0x5
	.byte	0x28
	.byte	0xd
	.4byte	0x83
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x5
	.byte	0x29
	.byte	0xd
	.4byte	0x83
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2a
	.byte	0xd
	.4byte	0x83
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2b
	.byte	0x3
	.4byte	0xc9
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x22
	.byte	0x19
	.4byte	0x112
	.uleb128 0x6
	.byte	0x4
	.4byte	0x118
	.uleb128 0xc
	.4byte	.LASF125
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x2c
	.byte	0xe
	.4byte	0x5b
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x72
	.byte	0xe
	.4byte	0x5b
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x8
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.byte	0x3
	.4byte	0x164
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.byte	0xa8
	.byte	0xc
	.4byte	0x135
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa9
	.byte	0x13
	.4byte	0x164
	.byte	0
	.uleb128 0x10
	.4byte	0x46
	.4byte	0x174
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.byte	0x9
	.4byte	0x198
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0xaa
	.byte	0x5
	.4byte	0x142
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x174
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.4byte	0x106
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x9
	.byte	0x16
	.byte	0x17
	.4byte	0x6e
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x18
	.byte	0x9
	.byte	0x2f
	.byte	0x8
	.4byte	0x216
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x31
	.byte	0x13
	.4byte	0x216
	.byte	0
	.uleb128 0xa
	.ascii	"_k\000"
	.byte	0x9
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x9
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0xa
	.ascii	"_x\000"
	.byte	0x9
	.byte	0x33
	.byte	0xb
	.4byte	0x21c
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0x10
	.4byte	0x1b0
	.4byte	0x22c
	.uleb128 0x11
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x24
	.byte	0x9
	.byte	0x37
	.byte	0x8
	.4byte	0x2af
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x9
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF45
	.2byte	0x108
	.byte	0x9
	.byte	0x4a
	.byte	0x8
	.4byte	0x2f4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4b
	.byte	0x9
	.4byte	0x2f4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x4c
	.byte	0x9
	.4byte	0x2f4
	.byte	0x80
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x9
	.byte	0x4e
	.byte	0xa
	.4byte	0x1b0
	.2byte	0x100
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x9
	.byte	0x51
	.byte	0xa
	.4byte	0x1b0
	.2byte	0x104
	.byte	0
	.uleb128 0x10
	.4byte	0x9b
	.4byte	0x304
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF50
	.2byte	0x190
	.byte	0x9
	.byte	0x5d
	.byte	0x8
	.4byte	0x347
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x5e
	.byte	0x12
	.4byte	0x347
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x5f
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x61
	.byte	0x9
	.4byte	0x34d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x62
	.byte	0x1e
	.4byte	0x2af
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x304
	.uleb128 0x10
	.4byte	0x35d
	.4byte	0x35d
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x363
	.uleb128 0x15
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x8
	.byte	0x9
	.byte	0x75
	.byte	0x8
	.4byte	0x38c
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x76
	.byte	0x11
	.4byte	0x38c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x9
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x68
	.byte	0x9
	.byte	0xb5
	.byte	0x8
	.4byte	0x4d5
	.uleb128 0xa
	.ascii	"_p\000"
	.byte	0x9
	.byte	0xb6
	.byte	0x12
	.4byte	0x38c
	.byte	0
	.uleb128 0xa
	.ascii	"_r\000"
	.byte	0x9
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xa
	.ascii	"_w\000"
	.byte	0x9
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0xb9
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x9
	.byte	0xba
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0xa
	.ascii	"_bf\000"
	.byte	0x9
	.byte	0xbb
	.byte	0x11
	.4byte	0x364
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x9
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x9
	.byte	0xc3
	.byte	0xa
	.4byte	0x9b
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x9
	.byte	0xc5
	.byte	0x9
	.4byte	0x64d
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x9
	.byte	0xc7
	.byte	0x9
	.4byte	0x671
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x9
	.byte	0xca
	.byte	0xd
	.4byte	0x695
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x9
	.byte	0xcb
	.byte	0x9
	.4byte	0x6af
	.byte	0x2c
	.uleb128 0xa
	.ascii	"_ub\000"
	.byte	0x9
	.byte	0xce
	.byte	0x11
	.4byte	0x364
	.byte	0x30
	.uleb128 0xa
	.ascii	"_up\000"
	.byte	0x9
	.byte	0xcf
	.byte	0x12
	.4byte	0x38c
	.byte	0x38
	.uleb128 0xa
	.ascii	"_ur\000"
	.byte	0x9
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x9
	.byte	0xd3
	.byte	0x11
	.4byte	0x6b5
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x9
	.byte	0xd4
	.byte	0x11
	.4byte	0x6c5
	.byte	0x43
	.uleb128 0xa
	.ascii	"_lb\000"
	.byte	0x9
	.byte	0xd7
	.byte	0x11
	.4byte	0x364
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x9
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x9
	.byte	0xdb
	.byte	0xa
	.4byte	0x11d
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x9
	.byte	0xde
	.byte	0x12
	.4byte	0x4f3
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x9
	.byte	0xe2
	.byte	0xc
	.4byte	0x1a4
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x9
	.byte	0xe4
	.byte	0xe
	.4byte	0x198
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x9
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x25
	.4byte	0x4f3
	.uleb128 0x17
	.4byte	0x4f3
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x647
	.uleb128 0x17
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fe
	.uleb128 0x7
	.4byte	0x4f3
	.uleb128 0x18
	.4byte	.LASF73
	.2byte	0x428
	.byte	0x9
	.2byte	0x260
	.byte	0x8
	.4byte	0x647
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x262
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x267
	.byte	0xb
	.4byte	0x721
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x267
	.byte	0x14
	.4byte	0x721
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x267
	.byte	0x1e
	.4byte	0x721
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x269
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x26a
	.byte	0x8
	.4byte	0x921
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x26d
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x26e
	.byte	0x16
	.4byte	0x936
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x270
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x272
	.byte	0xa
	.4byte	0x947
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x275
	.byte	0x13
	.4byte	0x216
	.byte	0x40
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x276
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x277
	.byte	0x13
	.4byte	0x216
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x278
	.byte	0x14
	.4byte	0x94d
	.byte	0x4c
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x27c
	.byte	0x9
	.4byte	0x647
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x29f
	.byte	0x7
	.4byte	0x8fc
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF50
	.byte	0x9
	.2byte	0x2a3
	.byte	0x13
	.4byte	0x347
	.2byte	0x148
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x2a4
	.byte	0x12
	.4byte	0x304
	.2byte	0x14c
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x2a8
	.byte	0xc
	.4byte	0x95e
	.2byte	0x2dc
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x2ad
	.byte	0x10
	.4byte	0x6e2
	.2byte	0x2e0
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x2af
	.byte	0xa
	.4byte	0x96a
	.2byte	0x2ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d5
	.uleb128 0x16
	.4byte	0x25
	.4byte	0x671
	.uleb128 0x17
	.4byte	0x4f3
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x9d
	.uleb128 0x17
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x653
	.uleb128 0x16
	.4byte	0x129
	.4byte	0x695
	.uleb128 0x17
	.4byte	0x4f3
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x129
	.uleb128 0x17
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x677
	.uleb128 0x16
	.4byte	0x25
	.4byte	0x6af
	.uleb128 0x17
	.4byte	0x4f3
	.uleb128 0x17
	.4byte	0x9b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69b
	.uleb128 0x10
	.4byte	0x46
	.4byte	0x6c5
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x46
	.4byte	0x6d5
	.uleb128 0x11
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x11f
	.byte	0x18
	.4byte	0x392
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0xc
	.byte	0x9
	.2byte	0x123
	.byte	0x8
	.4byte	0x71b
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x125
	.byte	0x11
	.4byte	0x71b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x127
	.byte	0xb
	.4byte	0x721
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6d5
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0xe
	.byte	0x9
	.2byte	0x13f
	.byte	0x8
	.4byte	0x760
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x140
	.byte	0x12
	.4byte	0x760
	.byte	0
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x141
	.byte	0x12
	.4byte	0x760
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x142
	.byte	0x12
	.4byte	0x54
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.4byte	0x54
	.4byte	0x770
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.byte	0xd0
	.byte	0x9
	.2byte	0x280
	.byte	0x7
	.4byte	0x885
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x282
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x283
	.byte	0x12
	.4byte	0x647
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x284
	.byte	0x10
	.4byte	0x885
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x285
	.byte	0x17
	.4byte	0x22c
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x286
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x287
	.byte	0x2c
	.4byte	0x7c
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x288
	.byte	0x1a
	.4byte	0x727
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x289
	.byte	0x16
	.4byte	0x198
	.byte	0x68
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x28a
	.byte	0x16
	.4byte	0x198
	.byte	0x70
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x28b
	.byte	0x16
	.4byte	0x198
	.byte	0x78
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x28c
	.byte	0x10
	.4byte	0x895
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x28d
	.byte	0x10
	.4byte	0x8a5
	.byte	0x88
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x28e
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x28f
	.byte	0x16
	.4byte	0x198
	.byte	0xa4
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x290
	.byte	0x16
	.4byte	0x198
	.byte	0xac
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x291
	.byte	0x16
	.4byte	0x198
	.byte	0xb4
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x292
	.byte	0x16
	.4byte	0x198
	.byte	0xbc
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x293
	.byte	0x16
	.4byte	0x198
	.byte	0xc4
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x294
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.uleb128 0x10
	.4byte	0xa3
	.4byte	0x895
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.4byte	0xa3
	.4byte	0x8a5
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	0xa3
	.4byte	0x8b5
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x9
	.2byte	0x299
	.byte	0x7
	.4byte	0x8dc
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x29c
	.byte	0x1b
	.4byte	0x8dc
	.byte	0
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x29d
	.byte	0x18
	.4byte	0x8ec
	.byte	0x78
	.byte	0
	.uleb128 0x10
	.4byte	0x38c
	.4byte	0x8ec
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	0x2c
	.4byte	0x8fc
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.byte	0xf0
	.byte	0x9
	.2byte	0x27e
	.byte	0x3
	.4byte	0x921
	.uleb128 0x1e
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x295
	.byte	0xb
	.4byte	0x770
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x29e
	.byte	0xb
	.4byte	0x8b5
	.byte	0
	.uleb128 0x10
	.4byte	0xa3
	.4byte	0x931
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF126
	.uleb128 0x6
	.byte	0x4
	.4byte	0x931
	.uleb128 0x1f
	.4byte	0x947
	.uleb128 0x17
	.4byte	0x4f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x216
	.uleb128 0x1f
	.4byte	0x95e
	.uleb128 0x17
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x964
	.uleb128 0x6
	.byte	0x4
	.4byte	0x953
	.uleb128 0x10
	.4byte	0x6d5
	.4byte	0x97a
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x32e
	.byte	0x17
	.4byte	0x4f3
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x32f
	.byte	0x1d
	.4byte	0x4f9
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0x1
	.byte	0x33
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d4
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.byte	0x33
	.byte	0x1c
	.4byte	0x25
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.4byte	.LVL13
	.4byte	0xae0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5b
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.byte	0x2f
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x25
	.ascii	"r\000"
	.byte	0x1
	.byte	0x2f
	.byte	0x24
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x25
	.ascii	"g\000"
	.byte	0x1
	.byte	0x2f
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x25
	.ascii	"b\000"
	.byte	0x1
	.byte	0x2f
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0xaec
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa99
	.uleb128 0x25
	.ascii	"led\000"
	.byte	0x1
	.byte	0x29
	.byte	0x1a
	.4byte	0x8f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0xaf8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x48000400
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF132
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae0
	.uleb128 0x26
	.4byte	.LVL0
	.4byte	0xb04
	.4byte	0xad6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x48000400
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x27
	.4byte	.LVL1
	.4byte	0xb11
	.byte	0
	.uleb128 0x28
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xa
	.byte	0x43
	.byte	0xa
	.uleb128 0x28
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xa
	.byte	0x41
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xb
	.byte	0x4d
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xc
	.2byte	0x102
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xa
	.byte	0x3f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS5:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF45:
	.ascii	"_on_exit_args\000"
.LASF112:
	.ascii	"_wctomb_state\000"
.LASF109:
	.ascii	"_r48\000"
.LASF133:
	.ascii	"ws2812_get_led_color\000"
.LASF114:
	.ascii	"_signal_buf\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF139:
	.ascii	"leds.c\000"
.LASF59:
	.ascii	"_lbfsize\000"
.LASF57:
	.ascii	"_flags\000"
.LASF74:
	.ascii	"_errno\000"
.LASF136:
	.ascii	"gpio_mode_setup\000"
.LASF71:
	.ascii	"_mbstate\000"
.LASF61:
	.ascii	"_read\000"
.LASF131:
	.ascii	"led_toggle\000"
.LASF116:
	.ascii	"_mbrlen_state\000"
.LASF76:
	.ascii	"_stdout\000"
.LASF21:
	.ascii	"_fpos_t\000"
.LASF52:
	.ascii	"_fns\000"
.LASF60:
	.ascii	"_cookie\000"
.LASF128:
	.ascii	"_global_impure_ptr\000"
.LASF34:
	.ascii	"_Bigint\000"
.LASF42:
	.ascii	"__tm_wday\000"
.LASF84:
	.ascii	"_result\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF38:
	.ascii	"__tm_hour\000"
.LASF25:
	.ascii	"__count\000"
.LASF37:
	.ascii	"__tm_min\000"
.LASF127:
	.ascii	"_impure_ptr\000"
.LASF122:
	.ascii	"_nextf\000"
.LASF99:
	.ascii	"_rand48\000"
.LASF85:
	.ascii	"_result_k\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF105:
	.ascii	"_asctime_buf\000"
.LASF56:
	.ascii	"__sFILE\000"
.LASF33:
	.ascii	"_wds\000"
.LASF95:
	.ascii	"__FILE\000"
.LASF68:
	.ascii	"_offset\000"
.LASF79:
	.ascii	"_emergency\000"
.LASF36:
	.ascii	"__tm_sec\000"
.LASF43:
	.ascii	"__tm_yday\000"
.LASF26:
	.ascii	"__value\000"
.LASF78:
	.ascii	"_inc\000"
.LASF51:
	.ascii	"_ind\000"
.LASF30:
	.ascii	"_next\000"
.LASF118:
	.ascii	"_mbsrtowcs_state\000"
.LASF129:
	.ascii	"led_nr\000"
.LASF15:
	.ascii	"rcc_apb1_frequency\000"
.LASF86:
	.ascii	"_p5s\000"
.LASF14:
	.ascii	"rcc_ahb_frequency\000"
.LASF120:
	.ascii	"_wcsrtombs_state\000"
.LASF110:
	.ascii	"_mblen_state\000"
.LASF13:
	.ascii	"char\000"
.LASF39:
	.ascii	"__tm_mday\000"
.LASF92:
	.ascii	"_sig_func\000"
.LASF117:
	.ascii	"_mbrtowc_state\000"
.LASF91:
	.ascii	"_atexit0\000"
.LASF28:
	.ascii	"_flock_t\000"
.LASF23:
	.ascii	"__wch\000"
.LASF98:
	.ascii	"_iobs\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF64:
	.ascii	"_close\000"
.LASF82:
	.ascii	"__sdidinit\000"
.LASF75:
	.ascii	"_stdin\000"
.LASF107:
	.ascii	"_gamma_signgam\000"
.LASF9:
	.ascii	"long long int\000"
.LASF54:
	.ascii	"_base\000"
.LASF87:
	.ascii	"_freelist\000"
.LASF101:
	.ascii	"_mult\000"
.LASF29:
	.ascii	"__ULong\000"
.LASF119:
	.ascii	"_wcrtomb_state\000"
.LASF58:
	.ascii	"_file\000"
.LASF141:
	.ascii	"led_get_color\000"
.LASF83:
	.ascii	"__cleanup\000"
.LASF27:
	.ascii	"_mbstate_t\000"
.LASF44:
	.ascii	"__tm_isdst\000"
.LASF121:
	.ascii	"_h_errno\000"
.LASF40:
	.ascii	"__tm_mon\000"
.LASF16:
	.ascii	"green\000"
.LASF19:
	.ascii	"_LOCK_T\000"
.LASF62:
	.ascii	"_write\000"
.LASF140:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF50:
	.ascii	"_atexit\000"
.LASF3:
	.ascii	"short int\000"
.LASF5:
	.ascii	"long int\000"
.LASF94:
	.ascii	"__sf\000"
.LASF32:
	.ascii	"_sign\000"
.LASF69:
	.ascii	"_data\000"
.LASF24:
	.ascii	"__wchb\000"
.LASF17:
	.ascii	"blue\000"
.LASF41:
	.ascii	"__tm_year\000"
.LASF106:
	.ascii	"_localtime_buf\000"
.LASF124:
	.ascii	"_unused\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF132:
	.ascii	"leds_setup\000"
.LASF90:
	.ascii	"_new\000"
.LASF88:
	.ascii	"_cvtlen\000"
.LASF31:
	.ascii	"_maxwds\000"
.LASF113:
	.ascii	"_l64a_buf\000"
.LASF67:
	.ascii	"_blksize\000"
.LASF35:
	.ascii	"__tm\000"
.LASF70:
	.ascii	"_lock\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF97:
	.ascii	"_niobs\000"
.LASF22:
	.ascii	"wint_t\000"
.LASF47:
	.ascii	"_dso_handle\000"
.LASF125:
	.ascii	"__lock\000"
.LASF137:
	.ascii	"ws2812_init\000"
.LASF89:
	.ascii	"_cvtbuf\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF115:
	.ascii	"_getdate_err\000"
.LASF102:
	.ascii	"_add\000"
.LASF53:
	.ascii	"__sbuf\000"
.LASF18:
	.ascii	"LedColor\000"
.LASF96:
	.ascii	"_glue\000"
.LASF93:
	.ascii	"__sglue\000"
.LASF104:
	.ascii	"_strtok_last\000"
.LASF111:
	.ascii	"_mbtowc_state\000"
.LASF138:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF134:
	.ascii	"ws2812_set_led_color\000"
.LASF81:
	.ascii	"_locale\000"
.LASF46:
	.ascii	"_fnargs\000"
.LASF1:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"_reent\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF48:
	.ascii	"_fntypes\000"
.LASF55:
	.ascii	"_size\000"
.LASF135:
	.ascii	"gpio_toggle\000"
.LASF20:
	.ascii	"_off_t\000"
.LASF66:
	.ascii	"_nbuf\000"
.LASF103:
	.ascii	"_unused_rand\000"
.LASF80:
	.ascii	"_unspecified_locale_info\000"
.LASF72:
	.ascii	"_flags2\000"
.LASF49:
	.ascii	"_is_cxa\000"
.LASF100:
	.ascii	"_seed\000"
.LASF108:
	.ascii	"_rand_next\000"
.LASF126:
	.ascii	"__locale_t\000"
.LASF130:
	.ascii	"led_set_color\000"
.LASF63:
	.ascii	"_seek\000"
.LASF77:
	.ascii	"_stderr\000"
.LASF123:
	.ascii	"_nmalloc\000"
.LASF65:
	.ascii	"_ubuf\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
