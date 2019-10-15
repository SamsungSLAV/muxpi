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
	.file	"uart.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.uart_putc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_putc
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	uart_putc, %function
uart_putc:
.LVL0:
.LFB6:
	.file 1 "uart.c"
	.loc 1 119 27 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 120 5 view .LVU1
	.loc 1 119 27 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 120 5 view .LVU3
	uxth	r1, r0
	ldr	r0, .L3
.LVL1:
	.loc 1 120 5 view .LVU4
	bl	usart_send_blocking
.LVL2:
	.loc 1 121 1 view .LVU5
	@ sp needed
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	1073821696
	.cfi_endproc
.LFE6:
	.size	uart_putc, .-uart_putc
	.section	.text.usart1_isr,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	usart1_isr
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	usart1_isr, %function
usart1_isr:
.LFB0:
	.loc 1 43 23 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 44 5 view .LVU7
	.loc 1 44 10 is_stmt 0 view .LVU8
	movs	r3, #0
	.loc 1 43 23 view .LVU9
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 45 12 view .LVU10
	ldr	r0, .L16
	.loc 1 43 23 view .LVU11
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 44 10 view .LVU12
	str	r3, [sp, #4]
	.loc 1 45 5 is_stmt 1 view .LVU13
	.loc 1 45 12 is_stmt 0 view .LVU14
	ldr	r2, [r0]
	.loc 1 45 87 view .LVU15
	adds	r3, r3, #32
	.loc 1 45 8 view .LVU16
	tst	r3, r2
	beq	.L5
	.loc 1 46 12 discriminator 1 view .LVU17
	ldr	r2, .L16+4
	ldr	r2, [r2]
	.loc 1 45 105 discriminator 1 view .LVU18
	tst	r3, r2
	bne	.L15
.L5:
	.loc 1 51 1 view .LVU19
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.L15:
.LBB2:
	.loc 1 47 9 is_stmt 1 view .LVU20
	.loc 1 47 24 is_stmt 0 view .LVU21
	bl	usart_recv
.LVL3:
	.loc 1 47 17 view .LVU22
	mov	r3, sp
	adds	r1, r3, #3
	.loc 1 48 9 view .LVU23
	ldr	r3, .L16+8
	.loc 1 47 17 view .LVU24
	strb	r0, [r1]
	.loc 1 48 9 is_stmt 1 view .LVU25
	add	r2, sp, #4
	ldr	r0, [r3]
	movs	r3, #0
	bl	xQueueGenericSendFromISR
.LVL4:
.LBE2:
	.loc 1 50 5 view .LVU26
	.loc 1 50 7 is_stmt 0 view .LVU27
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L5
	.loc 1 50 36 is_stmt 1 discriminator 1 view .LVU28
	.loc 1 50 81 is_stmt 0 discriminator 1 view .LVU29
	movs	r2, #128
	ldr	r3, .L16+12
	lsls	r2, r2, #21
	str	r2, [r3]
	.loc 1 51 1 discriminator 1 view .LVU30
	b	.L5
.L17:
	.align	2
.L16:
	.word	1073821696
	.word	1073821724
	.word	.LANCHOR0
	.word	-536810236
	.cfi_endproc
.LFE0:
	.size	usart1_isr, .-usart1_isr
	.global	__aeabi_idiv
	.section	.text.uart_set_voltage,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_set_voltage
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	uart_set_voltage, %function
uart_set_voltage:
.LVL5:
.LFB2:
	.loc 1 74 35 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 76 5 view .LVU32
	.loc 1 77 5 view .LVU33
	.loc 1 76 31 is_stmt 0 view .LVU34
	movs	r1, #50
	.loc 1 74 35 view .LVU35
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 76 31 view .LVU36
	rsbs	r1, r1, #0
	bl	__aeabi_idiv
.LVL6:
	.loc 1 76 9 view .LVU37
	movs	r2, r0
	.loc 1 77 5 view .LVU38
	movs	r1, #0
	.loc 1 76 9 view .LVU39
	adds	r2, r2, #100
	.loc 1 77 5 view .LVU40
	ldr	r0, .L19
	bl	timer_set_oc_value
.LVL7:
	.loc 1 78 1 view .LVU41
	@ sp needed
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	1073825792
	.cfi_endproc
.LFE2:
	.size	uart_set_voltage, .-uart_set_voltage
	.section	.text.uart_get_voltage,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_get_voltage
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	uart_get_voltage, %function
uart_get_voltage:
.LFB3:
	.loc 1 80 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 81 5 view .LVU43
	.loc 1 82 27 is_stmt 0 view .LVU44
	movs	r0, #50
	.loc 1 81 17 view .LVU45
	ldr	r3, .L22
	.loc 1 83 1 view .LVU46
	@ sp needed
	.loc 1 81 17 view .LVU47
	ldr	r3, [r3]
.LVL8:
	.loc 1 82 5 is_stmt 1 view .LVU48
	.loc 1 82 27 is_stmt 0 view .LVU49
	muls	r0, r3
	.loc 1 83 1 view .LVU50
	bx	lr
.L23:
	.align	2
.L22:
	.word	1073825844
	.cfi_endproc
.LFE3:
	.size	uart_get_voltage, .-uart_get_voltage
	.section	.text.uart_setup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_setup
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	uart_setup, %function
uart_setup:
.LFB4:
	.loc 1 85 23 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 89 5 view .LVU52
	.loc 1 85 23 is_stmt 0 view .LVU53
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 89 28 view .LVU54
	movs	r1, #1
	movs	r2, #0
	movs	r0, #32
	bl	xQueueGenericCreate
.LVL9:
	.loc 1 98 5 view .LVU55
	movs	r5, #192
	movs	r4, #144
	.loc 1 89 26 view .LVU56
	ldr	r3, .L25
	.loc 1 94 15 view .LVU57
	ldr	r2, .L25+4
	.loc 1 89 26 view .LVU58
	str	r0, [r3]
	.loc 1 94 5 is_stmt 1 view .LVU59
	.loc 1 94 15 is_stmt 0 view .LVU60
	ldr	r3, .L25+8
	.loc 1 98 5 view .LVU61
	lsls	r5, r5, #3
	lsls	r4, r4, #23
	.loc 1 96 5 view .LVU62
	movs	r0, #27
	.loc 1 94 15 view .LVU63
	str	r2, [r3]
	.loc 1 96 5 is_stmt 1 view .LVU64
	bl	nvic_enable_irq
.LVL10:
	.loc 1 98 5 view .LVU65
	movs	r3, r5
	movs	r0, r4
	movs	r2, #0
	movs	r1, #2
	bl	gpio_mode_setup
.LVL11:
	.loc 1 99 5 view .LVU66
	movs	r2, r5
	movs	r0, r4
	movs	r1, #1
	bl	gpio_set_af
.LVL12:
	.loc 1 101 5 view .LVU67
	movs	r1, #225
.LBB5:
.LBB6:
	.loc 1 56 5 is_stmt 0 view .LVU68
	movs	r5, #128
.LBE6:
.LBE5:
	.loc 1 101 5 view .LVU69
	ldr	r4, .L25+12
	lsls	r1, r1, #9
	movs	r0, r4
	bl	usart_set_baudrate
.LVL13:
	.loc 1 102 5 is_stmt 1 view .LVU70
	movs	r0, r4
	movs	r1, #8
	bl	usart_set_databits
.LVL14:
	.loc 1 103 5 view .LVU71
	movs	r0, r4
	movs	r1, #0
	bl	usart_set_stopbits
.LVL15:
	.loc 1 104 5 view .LVU72
	movs	r0, r4
	movs	r1, #0
	bl	usart_set_parity
.LVL16:
	.loc 1 105 5 view .LVU73
	movs	r0, r4
	movs	r1, #0
	bl	usart_set_flow_control
.LVL17:
	.loc 1 106 5 view .LVU74
	movs	r1, #12
	movs	r0, r4
	bl	usart_set_mode
.LVL18:
	.loc 1 108 5 view .LVU75
	movs	r0, r4
	bl	usart_enable_rx_interrupt
.LVL19:
	.loc 1 110 5 view .LVU76
	movs	r0, r4
.LBB10:
.LBB7:
	.loc 1 56 5 is_stmt 0 view .LVU77
	ldr	r4, .L25+16
	lsls	r5, r5, #2
.LBE7:
.LBE10:
	.loc 1 110 5 view .LVU78
	bl	usart_enable
.LVL20:
	.loc 1 112 5 is_stmt 1 view .LVU79
.LBB11:
.LBI5:
	.loc 1 55 13 view .LVU80
.LBB8:
	.loc 1 56 5 view .LVU81
	movs	r3, r5
	movs	r0, r4
	movs	r2, #0
	movs	r1, #2
	bl	gpio_mode_setup
.LVL21:
	.loc 1 57 5 view .LVU82
	movs	r2, r5
	movs	r1, #2
	movs	r0, r4
	bl	gpio_set_af
.LVL22:
	.loc 1 59 5 view .LVU83
	movs	r0, #201
	.loc 1 61 5 is_stmt 0 view .LVU84
	ldr	r4, .L25+20
	.loc 1 59 5 view .LVU85
	lsls	r0, r0, #1
	bl	rcc_periph_reset_pulse
.LVL23:
	.loc 1 61 5 is_stmt 1 view .LVU86
	movs	r3, #0
	movs	r2, #0
	movs	r1, r5
	movs	r0, r4
	bl	timer_set_mode
.LVL24:
	.loc 1 62 5 view .LVU87
	movs	r0, r4
	movs	r1, #0
	bl	timer_set_prescaler
.LVL25:
	.loc 1 63 5 view .LVU88
	movs	r0, r4
	movs	r1, #99
	bl	timer_set_period
.LVL26:
	.loc 1 64 5 view .LVU89
	movs	r0, r4
	movs	r2, #100
	movs	r1, #0
	bl	timer_set_oc_value
.LVL27:
	.loc 1 65 5 view .LVU90
	.loc 1 65 81 is_stmt 0 view .LVU91
	movs	r1, #112
	ldr	r2, .L25+24
	.loc 1 67 5 view .LVU92
	movs	r0, r4
	.loc 1 65 81 view .LVU93
	ldr	r3, [r2]
.LBE8:
.LBE11:
	.loc 1 113 1 view .LVU94
	@ sp needed
.LBB12:
.LBB9:
	.loc 1 65 81 view .LVU95
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 67 5 is_stmt 1 view .LVU96
	movs	r1, #0
	bl	timer_enable_oc_output
.LVL28:
	.loc 1 68 5 view .LVU97
	.loc 1 68 81 is_stmt 0 view .LVU98
	movs	r3, #128
	ldr	r2, .L25+28
	lsls	r3, r3, #8
	ldr	r1, [r2]
	.loc 1 70 5 view .LVU99
	movs	r0, r4
	.loc 1 68 81 view .LVU100
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 70 5 is_stmt 1 view .LVU101
	movs	r1, #1
	bl	timer_generate_event
.LVL29:
	.loc 1 71 5 view .LVU102
	movs	r0, r4
	bl	timer_enable_counter
.LVL30:
.LBE9:
.LBE12:
	.loc 1 113 1 is_stmt 0 view .LVU103
	pop	{r4, r5, r6, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.word	uart_putc
	.word	xfunc_out
	.word	1073821696
	.word	1207960576
	.word	1073825792
	.word	1073825816
	.word	1073825860
	.cfi_endproc
.LFE4:
	.size	uart_setup, .-uart_setup
	.section	.text.uart_send,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uart_send
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	uart_send, %function
uart_send:
.LVL31:
.LFB5:
	.loc 1 115 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 116 5 view .LVU105
	.loc 1 117 1 is_stmt 0 view .LVU106
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE5:
	.size	uart_send, .-uart_send
	.global	usart_incoming_queue
	.section	.bss.usart_incoming_queue,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	usart_incoming_queue, %object
	.size	usart_incoming_queue, 4
usart_incoming_queue:
	.space	4
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../libopencm3/include/libopencm3/stm32/f0/rcc.h"
	.file 5 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h"
	.file 6 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
	.file 7 "../include/xprintf.h"
	.file 8 "../FreeRTOS/Source/include/queue.h"
	.file 9 "../include/uart.h"
	.file 10 "../libopencm3/include/libopencm3/stm32/common/usart_common_all.h"
	.file 11 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
	.file 12 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h"
	.file 13 "../libopencm3/include/libopencm3/cm3/nvic.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x795
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
	.4byte	.Ldebug_ranges0+0x28
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
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.2byte	0x442
	.byte	0x6
	.4byte	0xd9
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x190
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x191
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x7
	.byte	0x2
	.4byte	0x54
	.byte	0x4
	.2byte	0x1d7
	.byte	0x6
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF24
	.2byte	0x180
	.uleb128 0x8
	.4byte	.LASF25
	.2byte	0x189
	.uleb128 0x8
	.4byte	.LASF26
	.2byte	0x189
	.uleb128 0x8
	.4byte	.LASF27
	.2byte	0x18b
	.uleb128 0x8
	.4byte	.LASF28
	.2byte	0x18c
	.uleb128 0x8
	.4byte	.LASF29
	.2byte	0x18e
	.uleb128 0x8
	.4byte	.LASF30
	.2byte	0x190
	.uleb128 0x8
	.4byte	.LASF31
	.2byte	0x191
	.uleb128 0x8
	.4byte	.LASF32
	.2byte	0x192
	.uleb128 0x8
	.4byte	.LASF33
	.2byte	0x196
	.uleb128 0x8
	.4byte	.LASF34
	.2byte	0x200
	.uleb128 0x8
	.4byte	.LASF35
	.2byte	0x201
	.uleb128 0x8
	.4byte	.LASF36
	.2byte	0x204
	.uleb128 0x8
	.4byte	.LASF37
	.2byte	0x205
	.uleb128 0x8
	.4byte	.LASF38
	.2byte	0x208
	.uleb128 0x8
	.4byte	.LASF39
	.2byte	0x20b
	.uleb128 0x8
	.4byte	.LASF40
	.2byte	0x20e
	.uleb128 0x8
	.4byte	.LASF41
	.2byte	0x211
	.uleb128 0x8
	.4byte	.LASF42
	.2byte	0x212
	.uleb128 0x8
	.4byte	.LASF43
	.2byte	0x213
	.uleb128 0x8
	.4byte	.LASF44
	.2byte	0x215
	.uleb128 0x8
	.4byte	.LASF45
	.2byte	0x216
	.uleb128 0x8
	.4byte	.LASF46
	.2byte	0x217
	.uleb128 0x8
	.4byte	.LASF47
	.2byte	0x219
	.uleb128 0x8
	.4byte	.LASF48
	.2byte	0x219
	.uleb128 0x8
	.4byte	.LASF49
	.2byte	0x21b
	.uleb128 0x8
	.4byte	.LASF50
	.2byte	0x21c
	.uleb128 0x8
	.4byte	.LASF51
	.2byte	0x21d
	.uleb128 0x8
	.4byte	.LASF52
	.2byte	0x21d
	.uleb128 0x8
	.4byte	.LASF53
	.2byte	0x21e
	.uleb128 0x8
	.4byte	.LASF54
	.2byte	0x410
	.uleb128 0x8
	.4byte	.LASF55
	.2byte	0x511
	.uleb128 0x8
	.4byte	.LASF56
	.2byte	0x512
	.uleb128 0x8
	.4byte	.LASF57
	.2byte	0x513
	.uleb128 0x8
	.4byte	.LASF58
	.2byte	0x514
	.uleb128 0x8
	.4byte	.LASF59
	.2byte	0x515
	.uleb128 0x8
	.4byte	.LASF60
	.2byte	0x516
	.uleb128 0x8
	.4byte	.LASF61
	.2byte	0x518
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0x5b
	.uleb128 0x9
	.4byte	0x228
	.uleb128 0xa
	.4byte	0x46
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0x11
	.byte	0xf
	.4byte	0x234
	.uleb128 0xc
	.byte	0x4
	.4byte	0x21d
	.uleb128 0xd
	.4byte	0x46
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.4byte	0x24b
	.uleb128 0xc
	.byte	0x4
	.4byte	0x23a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF65
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x8
	.byte	0x30
	.byte	0x22
	.4byte	0x264
	.uleb128 0xc
	.byte	0x4
	.4byte	0x26a
	.uleb128 0xe
	.4byte	.LASF107
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x8
	.byte	0x37
	.byte	0x22
	.4byte	0x264
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x9
	.byte	0x23
	.byte	0x16
	.4byte	0x258
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x9
	.byte	0x24
	.byte	0x16
	.4byte	0x258
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x9
	.byte	0x25
	.byte	0x19
	.4byte	0x26f
	.uleb128 0xf
	.4byte	0x27b
	.byte	0x1
	.byte	0x27
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.4byte	usart_incoming_queue
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2eb
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.byte	0x77
	.byte	0x15
	.4byte	0x251
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x679
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40013800
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x73
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x310
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x73
	.byte	0x16
	.4byte	0x310
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x251
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x587
	.uleb128 0x15
	.4byte	0x60d
	.4byte	.LBI5
	.byte	.LVU80
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x70
	.byte	0x5
	.4byte	0x452
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x685
	.4byte	0x365
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0x692
	.4byte	0x384
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x69f
	.4byte	0x399
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x192
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x6ab
	.4byte	0x3bd
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x6b8
	.4byte	0x3d6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x6c5
	.4byte	0x3f0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0x6d2
	.4byte	0x40f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0x6df
	.4byte	0x428
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0x6ec
	.4byte	0x441
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL30
	.4byte	0x6f9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL9
	.4byte	0x706
	.4byte	0x470
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x713
	.4byte	0x483
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4b
	.byte	0
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x685
	.4byte	0x4a7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x692
	.4byte	0x4c6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x71f
	.4byte	0x4e2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x8
	.byte	0xe1
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x72b
	.4byte	0x4fb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x737
	.4byte	0x514
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0x743
	.4byte	0x52d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0x74f
	.4byte	0x546
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x75b
	.4byte	0x55f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x767
	.4byte	0x573
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0x773
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40013800
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b6
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60d
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4a
	.byte	0x1b
	.4byte	0x25
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x6d2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40014800
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x679
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x2c
	.byte	0xa
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2f
	.byte	0x11
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0x77f
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x78b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xa
	.byte	0x71
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x102
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xb
	.2byte	0x106
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xc
	.byte	0x30
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x4a0
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x4bb
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x4bd
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x4cf
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x4c9
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x4df
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x4ae
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x5d8
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xd
	.byte	0x8b
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xa
	.byte	0x65
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xa
	.byte	0x66
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xa
	.byte	0x67
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xa
	.byte	0x68
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xa
	.byte	0x6a
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xa
	.byte	0x69
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xa
	.byte	0x77
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xa
	.byte	0x6b
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xa
	.byte	0x6e
	.byte	0xa
	.uleb128 0x1f
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x50f
	.byte	0xc
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU48
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0xce
	.byte	0x1b
	.byte	0x23
	.uleb128 0x64
	.byte	0x9f
	.4byte	.LVL6-1
	.4byte	.LFE2
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9
	.byte	0xce
	.byte	0x1b
	.byte	0x23
	.uleb128 0x64
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF103:
	.ascii	"xQueueGenericSendFromISR\000"
.LASF54:
	.ascii	"RST_BACKUPDOMAIN\000"
.LASF95:
	.ascii	"usart_set_databits\000"
.LASF99:
	.ascii	"usart_set_mode\000"
.LASF68:
	.ascii	"usart_incoming_queue\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF78:
	.ascii	"period\000"
.LASF21:
	.ascii	"rcc_apb1_frequency\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF39:
	.ascii	"RST_WWDG\000"
.LASF27:
	.ascii	"RST_TIM1\000"
.LASF34:
	.ascii	"RST_TIM2\000"
.LASF35:
	.ascii	"RST_TIM3\000"
.LASF66:
	.ascii	"QueueHandle_t\000"
.LASF36:
	.ascii	"RST_TIM6\000"
.LASF37:
	.ascii	"RST_TIM7\000"
.LASF9:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF44:
	.ascii	"RST_I2C1\000"
.LASF45:
	.ascii	"RST_I2C2\000"
.LASF82:
	.ascii	"gpio_mode_setup\000"
.LASF25:
	.ascii	"RST_ADC\000"
.LASF5:
	.ascii	"long int\000"
.LASF108:
	.ascii	"uart_get_voltage\000"
.LASF72:
	.ascii	"uart_send\000"
.LASF105:
	.ascii	"uart.c\000"
.LASF62:
	.ascii	"BaseType_t\000"
.LASF29:
	.ascii	"RST_USART1\000"
.LASF41:
	.ascii	"RST_USART2\000"
.LASF42:
	.ascii	"RST_USART3\000"
.LASF43:
	.ascii	"RST_USART4\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF85:
	.ascii	"timer_set_mode\000"
.LASF84:
	.ascii	"rcc_periph_reset_pulse\000"
.LASF94:
	.ascii	"usart_set_baudrate\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF100:
	.ascii	"usart_enable_rx_interrupt\000"
.LASF102:
	.ascii	"usart_recv\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF70:
	.ascii	"usart_queue_set\000"
.LASF51:
	.ascii	"RST_DAC\000"
.LASF76:
	.ascii	"data\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF88:
	.ascii	"timer_set_oc_value\000"
.LASF24:
	.ascii	"RST_SYSCFG\000"
.LASF96:
	.ascii	"usart_set_stopbits\000"
.LASF20:
	.ascii	"rcc_ahb_frequency\000"
.LASF73:
	.ascii	"uart_setup\000"
.LASF28:
	.ascii	"RST_SPI1\000"
.LASF40:
	.ascii	"RST_SPI2\000"
.LASF47:
	.ascii	"RST_CAN\000"
.LASF71:
	.ascii	"uart_putc\000"
.LASF75:
	.ascii	"uart_set_voltage\000"
.LASF101:
	.ascii	"usart_enable\000"
.LASF90:
	.ascii	"timer_generate_event\000"
.LASF46:
	.ascii	"RST_USB\000"
.LASF109:
	.ascii	"pwm_setup\000"
.LASF23:
	.ascii	"rcc_periph_rst\000"
.LASF48:
	.ascii	"RST_CAN1\000"
.LASF91:
	.ascii	"timer_enable_counter\000"
.LASF77:
	.ascii	"mvolts\000"
.LASF55:
	.ascii	"RST_GPIOA\000"
.LASF56:
	.ascii	"RST_GPIOB\000"
.LASF57:
	.ascii	"RST_GPIOC\000"
.LASF58:
	.ascii	"RST_GPIOD\000"
.LASF104:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF60:
	.ascii	"RST_GPIOF\000"
.LASF14:
	.ascii	"TIM_OC1N\000"
.LASF97:
	.ascii	"usart_set_parity\000"
.LASF63:
	.ascii	"xfunc_out\000"
.LASF107:
	.ascii	"QueueDefinition\000"
.LASF67:
	.ascii	"QueueSetHandle_t\000"
.LASF80:
	.ascii	"xHigherPriorityTaskWoken\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"short int\000"
.LASF89:
	.ascii	"timer_enable_oc_output\000"
.LASF49:
	.ascii	"RST_CRS\000"
.LASF92:
	.ascii	"xQueueGenericCreate\000"
.LASF59:
	.ascii	"RST_GPIOE\000"
.LASF61:
	.ascii	"RST_TSC\000"
.LASF98:
	.ascii	"usart_set_flow_control\000"
.LASF106:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF16:
	.ascii	"TIM_OC2N\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF33:
	.ascii	"RST_DBGMCU\000"
.LASF65:
	.ascii	"char\000"
.LASF86:
	.ascii	"timer_set_prescaler\000"
.LASF26:
	.ascii	"RST_ADC1\000"
.LASF81:
	.ascii	"usart_send_blocking\000"
.LASF74:
	.ascii	"duty\000"
.LASF38:
	.ascii	"RST_TIM14\000"
.LASF30:
	.ascii	"RST_TIM15\000"
.LASF31:
	.ascii	"RST_TIM16\000"
.LASF32:
	.ascii	"RST_TIM17\000"
.LASF64:
	.ascii	"xfunc_in\000"
.LASF69:
	.ascii	"usart_outgoing_queue\000"
.LASF18:
	.ascii	"TIM_OC3N\000"
.LASF87:
	.ascii	"timer_set_period\000"
.LASF79:
	.ascii	"usart1_isr\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF53:
	.ascii	"RST_CEC\000"
.LASF83:
	.ascii	"gpio_set_af\000"
.LASF22:
	.ascii	"tim_oc_id\000"
.LASF13:
	.ascii	"TIM_OC1\000"
.LASF15:
	.ascii	"TIM_OC2\000"
.LASF17:
	.ascii	"TIM_OC3\000"
.LASF19:
	.ascii	"TIM_OC4\000"
.LASF93:
	.ascii	"nvic_enable_irq\000"
.LASF50:
	.ascii	"RST_PWR\000"
.LASF52:
	.ascii	"RST_DAC1\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
