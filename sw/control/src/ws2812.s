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
	.file	"ws2812.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ws2812_set_led_color,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ws2812_set_led_color
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ws2812_set_led_color, %function
ws2812_set_led_color:
.LVL0:
.LFB5:
	.file 1 "ws2812.c"
	.loc 1 108 23 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 109 5 view .LVU1
	.loc 1 110 5 view .LVU2
	.loc 1 111 5 view .LVU3
	.loc 1 112 5 view .LVU4
	.loc 1 108 23 is_stmt 0 view .LVU5
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 112 14 view .LVU6
	movs	r4, #1
	.loc 1 108 23 view .LVU7
	mov	lr, r8
	.loc 1 114 29 view .LVU8
	ldr	r5, .L17
	lsls	r6, r0, #1
	.loc 1 112 14 view .LVU9
	ands	r4, r0
	.loc 1 114 29 view .LVU10
	adds	r0, r6, r0
.LVL1:
	.loc 1 108 23 view .LVU11
	push	{lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	.loc 1 114 29 view .LVU12
	strb	r1, [r0, r5]
	.loc 1 115 31 view .LVU13
	adds	r5, r5, r0
	.loc 1 119 39 view .LVU14
	movs	r0, #128
	.loc 1 108 23 view .LVU15
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
	.loc 1 115 31 view .LVU16
	strb	r2, [r5, #1]
	.loc 1 116 30 view .LVU17
	strb	r3, [r5, #2]
	.loc 1 112 14 view .LVU18
	mov	ip, r4
.LVL2:
	.loc 1 114 5 is_stmt 1 view .LVU19
	.loc 1 115 5 view .LVU20
	.loc 1 116 5 view .LVU21
	.loc 1 118 5 view .LVU22
	.loc 1 118 5 is_stmt 0 view .LVU23
	mov	r6, sp
	.loc 1 118 12 view .LVU24
	movs	r5, #0
	.loc 1 119 39 view .LVU25
	mov	r8, r0
	.loc 1 119 23 view .LVU26
	movs	r7, #20
.LVL3:
.L3:
	.loc 1 119 9 is_stmt 1 view .LVU27
	.loc 1 119 33 is_stmt 0 view .LVU28
	movs	r0, r2
	.loc 1 119 39 view .LVU29
	mov	r4, r8
	.loc 1 119 33 view .LVU30
	lsls	r0, r0, r5
	.loc 1 119 39 view .LVU31
	ands	r0, r4
	.loc 1 119 23 view .LVU32
	subs	r4, r0, #1
	sbcs	r0, r0, r4
	rsbs	r0, r0, #0
	ands	r0, r7
	adds	r0, r0, #20
	.loc 1 118 25 view .LVU33
	adds	r5, r5, #1
.LVL4:
	.loc 1 119 23 view .LVU34
	strb	r0, [r6]
	adds	r6, r6, #1
	.loc 1 118 5 view .LVU35
	cmp	r5, #8
	bne	.L3
	.loc 1 120 12 view .LVU36
	movs	r0, #0
	.loc 1 121 41 view .LVU37
	movs	r7, #128
	.loc 1 121 27 view .LVU38
	movs	r6, #20
.LVL5:
.L5:
	.loc 1 121 9 is_stmt 1 view .LVU39
	.loc 1 121 35 is_stmt 0 view .LVU40
	movs	r2, r1
	lsls	r2, r2, r0
	.loc 1 121 41 view .LVU41
	ands	r2, r7
	.loc 1 121 27 view .LVU42
	subs	r5, r2, #1
	sbcs	r2, r2, r5
	movs	r5, r0
	rsbs	r2, r2, #0
	ands	r2, r6
	adds	r2, r2, #20
	add	r5, r5, sp
	.loc 1 120 25 view .LVU43
	adds	r0, r0, #1
.LVL6:
	.loc 1 121 27 view .LVU44
	strb	r2, [r5, #8]
	.loc 1 120 5 view .LVU45
	cmp	r0, #8
	bne	.L5
	.loc 1 122 12 view .LVU46
	movs	r1, #0
.LVL7:
	.loc 1 123 43 view .LVU47
	movs	r6, #128
	.loc 1 123 28 view .LVU48
	movs	r5, #20
.LVL8:
.L7:
	.loc 1 123 9 is_stmt 1 view .LVU49
	.loc 1 123 37 is_stmt 0 view .LVU50
	movs	r2, r3
	lsls	r2, r2, r1
	.loc 1 123 43 view .LVU51
	ands	r2, r6
	.loc 1 123 28 view .LVU52
	subs	r0, r2, #1
	sbcs	r2, r2, r0
	movs	r0, r1
	rsbs	r2, r2, #0
	ands	r2, r5
	adds	r2, r2, #20
	add	r0, r0, sp
	.loc 1 122 25 view .LVU53
	adds	r1, r1, #1
.LVL9:
	.loc 1 123 28 view .LVU54
	strb	r2, [r0, #16]
	.loc 1 122 5 view .LVU55
	cmp	r1, #8
	bne	.L7
	.loc 1 126 35 view .LVU56
	mov	r3, ip
.LVL10:
	.loc 1 126 35 view .LVU57
	lsls	r2, r3, #1
	add	r2, r2, ip
	lsls	r4, r2, #3
	movs	r2, r4
	mov	r1, sp
.LVL11:
	.loc 1 126 35 view .LVU58
	movs	r3, #1
	.loc 1 126 45 view .LVU59
	ldr	r4, .L17+4
	adds	r2, r2, #49
	subs	r1, r1, #1
	adds	r4, r4, r2
.L8:
.LVL12:
	.loc 1 126 9 is_stmt 1 discriminator 3 view .LVU60
	.loc 1 126 45 is_stmt 0 discriminator 3 view .LVU61
	ldrb	r2, [r1, r3]
	strb	r2, [r4, r3]
.LVL13:
	.loc 1 126 45 discriminator 3 view .LVU62
	adds	r3, r3, #1
.LVL14:
	.loc 1 125 5 discriminator 3 view .LVU63
	cmp	r3, #25
	bne	.L8
	.loc 1 127 1 view .LVU64
	add	sp, sp, #24
	@ sp needed
	pop	{r2}
	mov	r8, r2
	pop	{r4, r5, r6, r7, pc}
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.word	LEDbuffer
	.cfi_endproc
.LFE5:
	.size	ws2812_set_led_color, .-ws2812_set_led_color
	.section	.text.ws2812_get_led_color,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ws2812_get_led_color
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ws2812_get_led_color, %function
ws2812_get_led_color:
.LVL15:
.LFB6:
	.loc 1 129 52 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 130 5 view .LVU66
	.loc 1 130 42 is_stmt 0 view .LVU67
	movs	r2, #2
	movs	r3, #0
	cmp	r2, r0
	adcs	r3, r3, r3
	.loc 1 129 52 view .LVU68
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 130 42 view .LVU69
	rsbs	r3, r3, #0
	ands	r0, r3
.LVL16:
	.loc 1 130 20 view .LVU70
	lsls	r1, r0, #1
	.loc 1 129 52 view .LVU71
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 130 20 view .LVU72
	adds	r0, r1, r0
	ldr	r1, .L21
	add	r4, sp, #4
	adds	r1, r1, r0
	adds	r2, r2, #1
	movs	r0, r4
	bl	memcpy
.LVL17:
	ldrb	r2, [r4, #1]
	ldrb	r0, [r4]
	ldrb	r3, [r4, #2]
	lsls	r2, r2, #8
	lsls	r3, r3, #16
	orrs	r0, r2
	orrs	r0, r3
	.loc 1 131 1 view .LVU73
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.cfi_endproc
.LFE6:
	.size	ws2812_get_led_color, .-ws2812_get_led_color
	.section	.text.setWHOLEcolor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	setWHOLEcolor
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	setWHOLEcolor, %function
setWHOLEcolor:
.LVL18:
.LFB7:
	.loc 1 133 62 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 134 5 view .LVU75
	.loc 1 136 5 view .LVU76
	.loc 1 137 9 view .LVU77
	.loc 1 133 62 is_stmt 0 view .LVU78
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 133 62 view .LVU79
	movs	r5, r1
	movs	r6, r2
	movs	r4, r0
	.loc 1 137 9 view .LVU80
	movs	r3, r2
	movs	r2, r1
.LVL19:
	.loc 1 137 9 view .LVU81
	movs	r1, r0
.LVL20:
	.loc 1 137 9 view .LVU82
	movs	r0, #0
.LVL21:
	.loc 1 137 9 view .LVU83
	bl	ws2812_set_led_color
.LVL22:
	.loc 1 137 9 is_stmt 1 view .LVU84
	movs	r3, r6
	movs	r2, r5
	movs	r1, r4
	movs	r0, #1
	bl	ws2812_set_led_color
.LVL23:
	.loc 1 138 1 is_stmt 0 view .LVU85
	@ sp needed
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE7:
	.size	setWHOLEcolor, .-setWHOLEcolor
	.section	.text.fillBufferBlack,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	fillBufferBlack
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	fillBufferBlack, %function
fillBufferBlack:
.LFB8:
	.loc 1 140 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 141 5 view .LVU87
	.loc 1 142 5 view .LVU88
.LVL24:
	.loc 1 144 5 view .LVU89
	.loc 1 144 5 is_stmt 0 view .LVU90
	ldr	r2, .L31
	.loc 1 145 30 view .LVU91
	movs	r1, #0
	movs	r0, r2
	.loc 1 140 28 view .LVU92
	movs	r3, r2
	adds	r0, r0, #50
.LVL25:
.L25:
	.loc 1 145 9 is_stmt 1 discriminator 3 view .LVU93
	.loc 1 145 30 is_stmt 0 discriminator 3 view .LVU94
	strb	r1, [r3]
	.loc 1 146 9 is_stmt 1 discriminator 3 view .LVU95
.LVL26:
	.loc 1 146 9 is_stmt 0 discriminator 3 view .LVU96
	adds	r3, r3, #1
.LVL27:
	.loc 1 144 5 discriminator 3 view .LVU97
	cmp	r3, r0
	bne	.L25
	movs	r0, r2
	.loc 1 149 30 view .LVU98
	movs	r1, #20
	ldr	r3, .L31+4
.LVL28:
	.loc 1 149 30 view .LVU99
	adds	r0, r0, #98
.L26:
.LVL29:
	.loc 1 149 9 is_stmt 1 discriminator 3 view .LVU100
	.loc 1 149 30 is_stmt 0 discriminator 3 view .LVU101
	strb	r1, [r3]
	.loc 1 150 9 is_stmt 1 discriminator 3 view .LVU102
.LVL30:
	.loc 1 150 9 is_stmt 0 discriminator 3 view .LVU103
	adds	r3, r3, #1
.LVL31:
	.loc 1 148 5 discriminator 3 view .LVU104
	cmp	r0, r3
	bne	.L26
	.loc 1 152 5 is_stmt 1 view .LVU105
	.loc 1 152 26 is_stmt 0 view .LVU106
	movs	r3, #98
.LVL32:
	.loc 1 152 26 view .LVU107
	strb	r1, [r2, r3]
	.loc 1 153 5 is_stmt 1 view .LVU108
.LVL33:
	.loc 1 154 5 view .LVU109
	.loc 1 154 5 is_stmt 0 view .LVU110
	movs	r3, r2
	.loc 1 155 30 view .LVU111
	movs	r1, #0
	adds	r3, r3, #99
	adds	r2, r2, #149
.LVL34:
.L27:
	.loc 1 155 9 is_stmt 1 discriminator 3 view .LVU112
	.loc 1 155 30 is_stmt 0 discriminator 3 view .LVU113
	strb	r1, [r3]
	.loc 1 156 9 is_stmt 1 discriminator 3 view .LVU114
.LVL35:
	.loc 1 156 9 is_stmt 0 discriminator 3 view .LVU115
	adds	r3, r3, #1
.LVL36:
	.loc 1 154 5 discriminator 3 view .LVU116
	cmp	r3, r2
	bne	.L27
	.loc 1 158 1 view .LVU117
	@ sp needed
	bx	lr
.L32:
	.align	2
.L31:
	.word	LEDbuffer
	.word	LEDbuffer+50
	.cfi_endproc
.LFE8:
	.size	fillBufferBlack, .-fillBufferBlack
	.section	.text.ws2812_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ws2812_init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ws2812_init, %function
ws2812_init:
.LFB4:
	.loc 1 60 24 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 61 5 view .LVU119
	.loc 1 60 24 is_stmt 0 view .LVU120
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 73 5 view .LVU121
	movs	r6, #128
	.loc 1 61 5 view .LVU122
	bl	fillBufferBlack
.LVL37:
	.loc 1 62 5 is_stmt 1 view .LVU123
	movs	r3, #0
	movs	r2, #0
	movs	r1, #255
	movs	r0, #0
	bl	ws2812_set_led_color
.LVL38:
	.loc 1 63 5 view .LVU124
	.loc 1 66 5 is_stmt 0 view .LVU125
	ldr	r4, .L34
	.loc 1 63 5 view .LVU126
	movs	r3, #0
	movs	r2, #127
	movs	r1, #0
	movs	r0, #1
	bl	ws2812_set_led_color
.LVL39:
	.loc 1 64 5 is_stmt 1 view .LVU127
	movs	r3, #20
	movs	r2, #20
	movs	r1, #20
	movs	r0, #0
	bl	ws2812_set_led_color
.LVL40:
	.loc 1 66 5 view .LVU128
	movs	r0, r4
	movs	r3, #1
	movs	r2, #0
	movs	r1, #2
	bl	gpio_mode_setup
.LVL41:
	.loc 1 67 5 view .LVU129
	movs	r3, #1
	movs	r0, r4
	movs	r2, #3
	movs	r1, #1
	bl	gpio_set_output_options
.LVL42:
	.loc 1 69 5 view .LVU130
	movs	r2, #1
	movs	r1, #1
	movs	r0, r4
	.loc 1 73 5 is_stmt 0 view .LVU131
	ldr	r4, .L34+4
	.loc 1 69 5 view .LVU132
	bl	gpio_set_af
.LVL43:
	.loc 1 71 5 is_stmt 1 view .LVU133
	.loc 1 73 5 is_stmt 0 view .LVU134
	lsls	r6, r6, #2
	.loc 1 71 5 view .LVU135
	ldr	r0, .L34+8
	bl	rcc_periph_reset_pulse
.LVL44:
	.loc 1 73 5 is_stmt 1 view .LVU136
	movs	r3, #0
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	bl	timer_set_mode
.LVL45:
	.loc 1 76 5 view .LVU137
	movs	r0, r4
	movs	r1, #0
	bl	timer_set_prescaler
.LVL46:
	.loc 1 77 5 view .LVU138
	movs	r1, #0
	movs	r0, r4
	bl	timer_set_repetition_counter
.LVL47:
	.loc 1 78 5 view .LVU139
	movs	r0, r4
	bl	timer_enable_preload
.LVL48:
	.loc 1 80 5 view .LVU140
	movs	r0, r4
	movs	r1, #59
	bl	timer_set_period
.LVL49:
	.loc 1 82 5 view .LVU141
	movs	r0, r4
	movs	r1, #4
	bl	timer_disable_oc_output
.LVL50:
	.loc 1 83 5 view .LVU142
	movs	r0, r4
	movs	r1, #5
	bl	timer_disable_oc_output
.LVL51:
	.loc 1 85 5 view .LVU143
	movs	r0, r4
	movs	r1, #4
	bl	timer_disable_oc_clear
.LVL52:
	.loc 1 86 5 view .LVU144
	movs	r0, r4
	movs	r1, #4
	bl	timer_enable_oc_preload
.LVL53:
	.loc 1 87 5 view .LVU145
	movs	r0, r4
	movs	r1, #4
	bl	timer_set_oc_slow_mode
.LVL54:
	.loc 1 88 5 view .LVU146
	movs	r2, #6
	movs	r0, r4
	movs	r1, #4
	bl	timer_set_oc_mode
.LVL55:
	.loc 1 90 5 view .LVU147
	movs	r0, r4
	movs	r1, #4
	bl	timer_set_oc_polarity_high
.LVL56:
	.loc 1 91 5 view .LVU148
	movs	r0, r4
	movs	r1, #4
	bl	timer_set_oc_idle_state_set
.LVL57:
	.loc 1 93 5 view .LVU149
	movs	r2, #20
	movs	r0, r4
	movs	r1, #4
	bl	timer_set_oc_value
.LVL58:
	.loc 1 95 5 view .LVU150
	movs	r1, #4
	movs	r0, r4
	bl	timer_enable_oc_output
.LVL59:
	.loc 1 97 5 view .LVU151
	movs	r0, r4
	bl	timer_enable_preload
.LVL60:
	.loc 1 98 5 view .LVU152
	movs	r0, r4
	movs	r1, #1
	bl	timer_generate_event
.LVL61:
	.loc 1 100 5 view .LVU153
	movs	r1, #128
.LBB4:
.LBB5:
	.loc 1 40 5 is_stmt 0 view .LVU154
	ldr	r5, .L34+12
.LBE5:
.LBE4:
	.loc 1 100 5 view .LVU155
	lsls	r1, r1, #4
	movs	r0, r4
	bl	timer_enable_irq
.LVL62:
	.loc 1 102 5 is_stmt 1 view .LVU156
.LBB7:
.LBI4:
	.loc 1 37 13 view .LVU157
.LBB6:
	.loc 1 38 5 view .LVU158
	movs	r0, r4
	bl	timer_set_dma_on_update_event
.LVL63:
	.loc 1 40 5 view .LVU159
	movs	r0, r5
	movs	r1, #2
	bl	dma_channel_reset
.LVL64:
	.loc 1 42 5 view .LVU160
	movs	r0, r5
	ldr	r2, .L34+16
	movs	r1, #2
	bl	dma_set_peripheral_address
.LVL65:
	.loc 1 43 5 view .LVU161
	movs	r2, r6
	movs	r0, r5
	movs	r1, #2
	bl	dma_set_peripheral_size
.LVL66:
	.loc 1 44 5 view .LVU162
	movs	r0, r5
	ldr	r2, .L34+20
	movs	r1, #2
	bl	dma_set_memory_address
.LVL67:
	.loc 1 45 5 view .LVU163
	movs	r0, r5
	movs	r2, #0
	movs	r1, #2
	bl	dma_set_memory_size
.LVL68:
	.loc 1 46 5 view .LVU164
	movs	r2, #149
	movs	r0, r5
	movs	r1, #2
	bl	dma_set_number_of_data
.LVL69:
	.loc 1 47 5 view .LVU165
	movs	r0, r5
	movs	r1, #2
	bl	dma_set_read_from_memory
.LVL70:
	.loc 1 48 5 view .LVU166
	movs	r0, r5
	movs	r1, #2
	bl	dma_enable_memory_increment_mode
.LVL71:
	.loc 1 49 5 view .LVU167
	movs	r0, r5
	movs	r1, #2
	bl	dma_disable_peripheral_increment_mode
.LVL72:
	.loc 1 50 5 view .LVU168
	movs	r2, #128
	movs	r0, r5
	lsls	r2, r2, #6
	movs	r1, #2
	bl	dma_set_priority
.LVL73:
	.loc 1 52 5 view .LVU169
	movs	r0, r5
	movs	r1, #2
	bl	dma_enable_channel
.LVL74:
	.loc 1 54 5 view .LVU170
	movs	r0, r5
	movs	r1, #2
	bl	dma_enable_circular_mode
.LVL75:
	.loc 1 56 5 view .LVU171
	movs	r0, #10
	bl	nvic_enable_irq
.LVL76:
	.loc 1 57 5 view .LVU172
	movs	r1, #0
	movs	r0, #10
	bl	nvic_set_priority
.LVL77:
.LBE6:
.LBE7:
	.loc 1 104 5 view .LVU173
	movs	r0, r4
	bl	timer_enable_counter
.LVL78:
	.loc 1 105 1 is_stmt 0 view .LVU174
	@ sp needed
	pop	{r4, r5, r6, pc}
.L35:
	.align	2
.L34:
	.word	1207960576
	.word	1073742848
	.word	513
	.word	1073872896
	.word	1073742908
	.word	LEDbuffer
	.cfi_endproc
.LFE4:
	.size	ws2812_init, .-ws2812_init
	.section	.text.fillBufferWhite,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	fillBufferWhite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	fillBufferWhite, %function
fillBufferWhite:
.LFB9:
	.loc 1 160 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 161 5 view .LVU176
	.loc 1 162 5 view .LVU177
.LVL79:
	.loc 1 164 5 view .LVU178
	.loc 1 164 5 is_stmt 0 view .LVU179
	ldr	r2, .L43
	.loc 1 165 30 view .LVU180
	movs	r1, #0
	movs	r0, r2
	.loc 1 160 28 view .LVU181
	movs	r3, r2
	adds	r0, r0, #50
.LVL80:
.L37:
	.loc 1 165 9 is_stmt 1 discriminator 3 view .LVU182
	.loc 1 165 30 is_stmt 0 discriminator 3 view .LVU183
	strb	r1, [r3]
	.loc 1 166 9 is_stmt 1 discriminator 3 view .LVU184
.LVL81:
	.loc 1 166 9 is_stmt 0 discriminator 3 view .LVU185
	adds	r3, r3, #1
.LVL82:
	.loc 1 164 5 discriminator 3 view .LVU186
	cmp	r3, r0
	bne	.L37
	movs	r0, r2
	.loc 1 169 30 view .LVU187
	movs	r1, #40
	ldr	r3, .L43+4
.LVL83:
	.loc 1 169 30 view .LVU188
	adds	r0, r0, #98
.L38:
.LVL84:
	.loc 1 169 9 is_stmt 1 discriminator 3 view .LVU189
	.loc 1 169 30 is_stmt 0 discriminator 3 view .LVU190
	strb	r1, [r3]
	.loc 1 170 9 is_stmt 1 discriminator 3 view .LVU191
.LVL85:
	.loc 1 170 9 is_stmt 0 discriminator 3 view .LVU192
	adds	r3, r3, #1
.LVL86:
	.loc 1 168 5 discriminator 3 view .LVU193
	cmp	r0, r3
	bne	.L38
	.loc 1 172 5 is_stmt 1 view .LVU194
	.loc 1 172 26 is_stmt 0 view .LVU195
	movs	r3, #98
.LVL87:
	.loc 1 172 26 view .LVU196
	movs	r1, #20
	strb	r1, [r2, r3]
	.loc 1 173 5 is_stmt 1 view .LVU197
.LVL88:
	.loc 1 174 5 view .LVU198
	.loc 1 174 5 is_stmt 0 view .LVU199
	movs	r3, r2
	.loc 1 175 30 view .LVU200
	movs	r1, #0
	adds	r3, r3, #99
	adds	r2, r2, #149
.LVL89:
.L39:
	.loc 1 175 9 is_stmt 1 discriminator 3 view .LVU201
	.loc 1 175 30 is_stmt 0 discriminator 3 view .LVU202
	strb	r1, [r3]
	.loc 1 176 9 is_stmt 1 discriminator 3 view .LVU203
.LVL90:
	.loc 1 176 9 is_stmt 0 discriminator 3 view .LVU204
	adds	r3, r3, #1
.LVL91:
	.loc 1 174 5 discriminator 3 view .LVU205
	cmp	r3, r2
	bne	.L39
	.loc 1 178 1 view .LVU206
	@ sp needed
	bx	lr
.L44:
	.align	2
.L43:
	.word	LEDbuffer
	.word	LEDbuffer+50
	.cfi_endproc
.LFE9:
	.size	fillBufferWhite, .-fillBufferWhite
	.section	.text.dma1_channel2_3_isr,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dma1_channel2_3_isr
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	dma1_channel2_3_isr, %function
dma1_channel2_3_isr:
.LFB10:
	.loc 1 180 32 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 181 5 view .LVU208
	.loc 1 180 32 is_stmt 0 view .LVU209
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 181 9 view .LVU210
	movs	r2, #2
	movs	r1, #2
	ldr	r0, .L51
	bl	dma_get_interrupt_flag
.LVL92:
	.loc 1 181 8 view .LVU211
	cmp	r0, #0
	bne	.L50
.L45:
	.loc 1 186 1 view .LVU212
	@ sp needed
	pop	{r4, pc}
.L50:
	.loc 1 182 9 is_stmt 1 view .LVU213
	movs	r2, #2
	movs	r1, #2
	ldr	r0, .L51
	bl	dma_clear_interrupt_flags
.LVL93:
	.loc 1 184 9 view .LVU214
	movs	r0, #8
	bl	led_toggle
.LVL94:
	.loc 1 186 1 is_stmt 0 view .LVU215
	b	.L45
.L52:
	.align	2
.L51:
	.word	1073872896
	.cfi_endproc
.LFE10:
	.size	dma1_channel2_3_isr, .-dma1_channel2_3_isr
	.section	.bss.LEDColor,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	LEDColor, %object
	.size	LEDColor, 6
LEDColor:
	.space	6
	.section	.bss.LEDbuffer,"aw",%nobits
	.align	2
	.type	LEDbuffer, %object
	.size	LEDbuffer, 149
LEDbuffer:
	.space	149
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../libopencm3/include/libopencm3/stm32/f0/rcc.h"
	.file 5 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h"
	.file 6 "../include/leds.h"
	.file 7 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h"
	.file 8 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 9 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h"
	.file 10 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h"
	.file 11 "../libopencm3/include/libopencm3/stm32/common/dma_common_l1f013.h"
	.file 12 "../libopencm3/include/libopencm3/cm3/nvic.h"
	.file 13 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
	.file 14 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x14bf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF240
	.byte	0xc
	.4byte	.LASF241
	.4byte	.LASF242
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x190
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x191
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x2
	.4byte	0x46
	.byte	0x4
	.2byte	0x1d7
	.byte	0x6
	.4byte	0x1d3
	.uleb128 0x7
	.4byte	.LASF15
	.2byte	0x180
	.uleb128 0x7
	.4byte	.LASF16
	.2byte	0x189
	.uleb128 0x7
	.4byte	.LASF17
	.2byte	0x189
	.uleb128 0x7
	.4byte	.LASF18
	.2byte	0x18b
	.uleb128 0x7
	.4byte	.LASF19
	.2byte	0x18c
	.uleb128 0x7
	.4byte	.LASF20
	.2byte	0x18e
	.uleb128 0x7
	.4byte	.LASF21
	.2byte	0x190
	.uleb128 0x7
	.4byte	.LASF22
	.2byte	0x191
	.uleb128 0x7
	.4byte	.LASF23
	.2byte	0x192
	.uleb128 0x7
	.4byte	.LASF24
	.2byte	0x196
	.uleb128 0x7
	.4byte	.LASF25
	.2byte	0x200
	.uleb128 0x7
	.4byte	.LASF26
	.2byte	0x201
	.uleb128 0x7
	.4byte	.LASF27
	.2byte	0x204
	.uleb128 0x7
	.4byte	.LASF28
	.2byte	0x205
	.uleb128 0x7
	.4byte	.LASF29
	.2byte	0x208
	.uleb128 0x7
	.4byte	.LASF30
	.2byte	0x20b
	.uleb128 0x7
	.4byte	.LASF31
	.2byte	0x20e
	.uleb128 0x7
	.4byte	.LASF32
	.2byte	0x211
	.uleb128 0x7
	.4byte	.LASF33
	.2byte	0x212
	.uleb128 0x7
	.4byte	.LASF34
	.2byte	0x213
	.uleb128 0x7
	.4byte	.LASF35
	.2byte	0x215
	.uleb128 0x7
	.4byte	.LASF36
	.2byte	0x216
	.uleb128 0x7
	.4byte	.LASF37
	.2byte	0x217
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x219
	.uleb128 0x7
	.4byte	.LASF39
	.2byte	0x219
	.uleb128 0x7
	.4byte	.LASF40
	.2byte	0x21b
	.uleb128 0x7
	.4byte	.LASF41
	.2byte	0x21c
	.uleb128 0x7
	.4byte	.LASF42
	.2byte	0x21d
	.uleb128 0x7
	.4byte	.LASF43
	.2byte	0x21d
	.uleb128 0x7
	.4byte	.LASF44
	.2byte	0x21e
	.uleb128 0x7
	.4byte	.LASF45
	.2byte	0x410
	.uleb128 0x7
	.4byte	.LASF46
	.2byte	0x511
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x512
	.uleb128 0x7
	.4byte	.LASF48
	.2byte	0x513
	.uleb128 0x7
	.4byte	.LASF49
	.2byte	0x514
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x515
	.uleb128 0x7
	.4byte	.LASF51
	.2byte	0x516
	.uleb128 0x7
	.4byte	.LASF52
	.2byte	0x518
	.byte	0
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.2byte	0x442
	.byte	0x6
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.2byte	0x44d
	.byte	0x6
	.4byte	0x255
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x3
	.byte	0x6
	.byte	0x27
	.byte	0x9
	.4byte	0x286
	.uleb128 0xa
	.ascii	"red\000"
	.byte	0x6
	.byte	0x28
	.byte	0xd
	.4byte	0x83
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0x83
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x83
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x2b
	.byte	0x3
	.4byte	0x255
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x7
	.byte	0x22
	.byte	0x19
	.4byte	0x2a0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2a6
	.uleb128 0xe
	.4byte	.LASF181
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x2c
	.byte	0xe
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x8
	.byte	0x72
	.byte	0xe
	.4byte	0x4d
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x165
	.byte	0x16
	.4byte	0x7c
	.uleb128 0x10
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.byte	0x3
	.4byte	0x2f2
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa8
	.byte	0xc
	.4byte	0x2c3
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa9
	.byte	0x13
	.4byte	0x2f2
	.byte	0
	.uleb128 0x12
	.4byte	0x38
	.4byte	0x302
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.byte	0x9
	.4byte	0x326
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x8
	.byte	0xa5
	.byte	0x7
	.4byte	0x75
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x8
	.byte	0xaa
	.byte	0x5
	.4byte	0x2d0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x8
	.byte	0xab
	.byte	0x3
	.4byte	0x302
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x8
	.byte	0xaf
	.byte	0x11
	.4byte	0x294
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x16
	.byte	0x17
	.4byte	0x60
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x18
	.byte	0xa
	.byte	0x2f
	.byte	0x8
	.4byte	0x3a4
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xa
	.byte	0x31
	.byte	0x13
	.4byte	0x3a4
	.byte	0
	.uleb128 0xa
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x32
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.4byte	0x75
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xa
	.byte	0x32
	.byte	0x14
	.4byte	0x75
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xa
	.byte	0x32
	.byte	0x1b
	.4byte	0x75
	.byte	0x10
	.uleb128 0xa
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x33
	.byte	0xb
	.4byte	0x3aa
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x34a
	.uleb128 0x12
	.4byte	0x33e
	.4byte	0x3ba
	.uleb128 0x13
	.4byte	0x7c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x24
	.byte	0xa
	.byte	0x37
	.byte	0x8
	.4byte	0x43d
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xa
	.byte	0x39
	.byte	0x7
	.4byte	0x75
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xa
	.byte	0x3a
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0xa
	.byte	0x3b
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0xa
	.byte	0x3c
	.byte	0x7
	.4byte	0x75
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0xa
	.byte	0x3d
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0xa
	.byte	0x3e
	.byte	0x7
	.4byte	0x75
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0xa
	.byte	0x3f
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0xa
	.byte	0x40
	.byte	0x7
	.4byte	0x75
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xa
	.byte	0x41
	.byte	0x7
	.4byte	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.2byte	0x108
	.byte	0xa
	.byte	0x4a
	.byte	0x8
	.4byte	0x482
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0xa
	.byte	0x4b
	.byte	0x9
	.4byte	0x482
	.byte	0
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0xa
	.byte	0x4c
	.byte	0x9
	.4byte	0x482
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0xa
	.byte	0x4e
	.byte	0xa
	.4byte	0x33e
	.2byte	0x100
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0xa
	.byte	0x51
	.byte	0xa
	.4byte	0x33e
	.2byte	0x104
	.byte	0
	.uleb128 0x12
	.4byte	0x292
	.4byte	0x492
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.2byte	0x190
	.byte	0xa
	.byte	0x5d
	.byte	0x8
	.4byte	0x4d5
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5e
	.byte	0x12
	.4byte	0x4d5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xa
	.byte	0x5f
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0xa
	.byte	0x61
	.byte	0x9
	.4byte	0x4db
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0xa
	.byte	0x62
	.byte	0x1e
	.4byte	0x43d
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x492
	.uleb128 0x12
	.4byte	0x4eb
	.4byte	0x4eb
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4f1
	.uleb128 0x17
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x8
	.byte	0xa
	.byte	0x75
	.byte	0x8
	.4byte	0x51a
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0xa
	.byte	0x76
	.byte	0x11
	.4byte	0x51a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0xa
	.byte	0x77
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x38
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x68
	.byte	0xa
	.byte	0xb5
	.byte	0x8
	.4byte	0x663
	.uleb128 0xa
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xb6
	.byte	0x12
	.4byte	0x51a
	.byte	0
	.uleb128 0xa
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xb7
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0xa
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xb8
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0xa
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0xa
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xa
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xbb
	.byte	0x11
	.4byte	0x4f2
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xa
	.byte	0xbc
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xa
	.byte	0xc3
	.byte	0xa
	.4byte	0x292
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xa
	.byte	0xc5
	.byte	0x9
	.4byte	0x7e7
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xa
	.byte	0xc7
	.byte	0x9
	.4byte	0x811
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xa
	.byte	0xca
	.byte	0xd
	.4byte	0x835
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x84f
	.byte	0x2c
	.uleb128 0xa
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xce
	.byte	0x11
	.4byte	0x4f2
	.byte	0x30
	.uleb128 0xa
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xcf
	.byte	0x12
	.4byte	0x51a
	.byte	0x38
	.uleb128 0xa
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xd0
	.byte	0x7
	.4byte	0x75
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xa
	.byte	0xd3
	.byte	0x11
	.4byte	0x855
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xa
	.byte	0xd4
	.byte	0x11
	.4byte	0x865
	.byte	0x43
	.uleb128 0xa
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xd7
	.byte	0x11
	.4byte	0x4f2
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xa
	.byte	0xda
	.byte	0x7
	.4byte	0x75
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xa
	.byte	0xdb
	.byte	0xa
	.4byte	0x2ab
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xa
	.byte	0xde
	.byte	0x12
	.4byte	0x681
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xa
	.byte	0xe2
	.byte	0xc
	.4byte	0x332
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xa
	.byte	0xe4
	.byte	0xe
	.4byte	0x326
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xa
	.byte	0xe5
	.byte	0x7
	.4byte	0x75
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.4byte	0x75
	.4byte	0x681
	.uleb128 0x19
	.4byte	0x681
	.uleb128 0x19
	.4byte	0x292
	.uleb128 0x19
	.4byte	0x7d5
	.uleb128 0x19
	.4byte	0x75
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x68c
	.uleb128 0x1a
	.4byte	0x681
	.uleb128 0x1b
	.4byte	.LASF128
	.2byte	0x428
	.byte	0xa
	.2byte	0x260
	.byte	0x8
	.4byte	0x7d5
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x262
	.byte	0x7
	.4byte	0x75
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x267
	.byte	0xb
	.4byte	0x8c1
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x267
	.byte	0x14
	.4byte	0x8c1
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x267
	.byte	0x1e
	.4byte	0x8c1
	.byte	0xc
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x269
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x26a
	.byte	0x8
	.4byte	0xac1
	.byte	0x14
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x26d
	.byte	0x7
	.4byte	0x75
	.byte	0x30
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x26e
	.byte	0x16
	.4byte	0xad6
	.byte	0x34
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x270
	.byte	0x7
	.4byte	0x75
	.byte	0x38
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x272
	.byte	0xa
	.4byte	0xae7
	.byte	0x3c
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x275
	.byte	0x13
	.4byte	0x3a4
	.byte	0x40
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x276
	.byte	0x7
	.4byte	0x75
	.byte	0x44
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x277
	.byte	0x13
	.4byte	0x3a4
	.byte	0x48
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x278
	.byte	0x14
	.4byte	0xaed
	.byte	0x4c
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x27b
	.byte	0x7
	.4byte	0x75
	.byte	0x50
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x27c
	.byte	0x9
	.4byte	0x7d5
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x29f
	.byte	0x7
	.4byte	0xa9c
	.byte	0x58
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x2a3
	.byte	0x13
	.4byte	0x4d5
	.2byte	0x148
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x2a4
	.byte	0x12
	.4byte	0x492
	.2byte	0x14c
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x2a8
	.byte	0xc
	.4byte	0xafe
	.2byte	0x2dc
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x2ad
	.byte	0x10
	.4byte	0x882
	.2byte	0x2e0
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x2af
	.byte	0xa
	.4byte	0xb0a
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF150
	.uleb128 0x1a
	.4byte	0x7db
	.uleb128 0xd
	.byte	0x4
	.4byte	0x663
	.uleb128 0x18
	.4byte	0x75
	.4byte	0x80b
	.uleb128 0x19
	.4byte	0x681
	.uleb128 0x19
	.4byte	0x292
	.uleb128 0x19
	.4byte	0x80b
	.uleb128 0x19
	.4byte	0x75
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7e2
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7ed
	.uleb128 0x18
	.4byte	0x2b7
	.4byte	0x835
	.uleb128 0x19
	.4byte	0x681
	.uleb128 0x19
	.4byte	0x292
	.uleb128 0x19
	.4byte	0x2b7
	.uleb128 0x19
	.4byte	0x75
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x817
	.uleb128 0x18
	.4byte	0x75
	.4byte	0x84f
	.uleb128 0x19
	.4byte	0x681
	.uleb128 0x19
	.4byte	0x292
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x83b
	.uleb128 0x12
	.4byte	0x38
	.4byte	0x865
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	0x38
	.4byte	0x875
	.uleb128 0x13
	.4byte	0x7c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x11f
	.byte	0x18
	.4byte	0x520
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0xc
	.byte	0xa
	.2byte	0x123
	.byte	0x8
	.4byte	0x8bb
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x125
	.byte	0x11
	.4byte	0x8bb
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x126
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x127
	.byte	0xb
	.4byte	0x8c1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x882
	.uleb128 0xd
	.byte	0x4
	.4byte	0x875
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0xe
	.byte	0xa
	.2byte	0x13f
	.byte	0x8
	.4byte	0x900
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x140
	.byte	0x12
	.4byte	0x900
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x141
	.byte	0x12
	.4byte	0x900
	.byte	0x6
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x142
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.4byte	0x46
	.4byte	0x910
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.byte	0xd0
	.byte	0xa
	.2byte	0x280
	.byte	0x7
	.4byte	0xa25
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x282
	.byte	0x18
	.4byte	0x7c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x283
	.byte	0x12
	.4byte	0x7d5
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x284
	.byte	0x10
	.4byte	0xa25
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x285
	.byte	0x17
	.4byte	0x3ba
	.byte	0x24
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x286
	.byte	0xf
	.4byte	0x75
	.byte	0x48
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x287
	.byte	0x2c
	.4byte	0x6e
	.byte	0x50
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x288
	.byte	0x1a
	.4byte	0x8c7
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x289
	.byte	0x16
	.4byte	0x326
	.byte	0x68
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x28a
	.byte	0x16
	.4byte	0x326
	.byte	0x70
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x28b
	.byte	0x16
	.4byte	0x326
	.byte	0x78
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x28c
	.byte	0x10
	.4byte	0xa35
	.byte	0x80
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x28d
	.byte	0x10
	.4byte	0xa45
	.byte	0x88
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x28e
	.byte	0xf
	.4byte	0x75
	.byte	0xa0
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x28f
	.byte	0x16
	.4byte	0x326
	.byte	0xa4
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x290
	.byte	0x16
	.4byte	0x326
	.byte	0xac
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x291
	.byte	0x16
	.4byte	0x326
	.byte	0xb4
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x292
	.byte	0x16
	.4byte	0x326
	.byte	0xbc
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0xa
	.2byte	0x293
	.byte	0x16
	.4byte	0x326
	.byte	0xc4
	.uleb128 0x1c
	.4byte	.LASF177
	.byte	0xa
	.2byte	0x294
	.byte	0x8
	.4byte	0x75
	.byte	0xcc
	.byte	0
	.uleb128 0x12
	.4byte	0x7db
	.4byte	0xa35
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.4byte	0x7db
	.4byte	0xa45
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	0x7db
	.4byte	0xa55
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x17
	.byte	0
	.uleb128 0x1f
	.byte	0xf0
	.byte	0xa
	.2byte	0x299
	.byte	0x7
	.4byte	0xa7c
	.uleb128 0x1c
	.4byte	.LASF178
	.byte	0xa
	.2byte	0x29c
	.byte	0x1b
	.4byte	0xa7c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x29d
	.byte	0x18
	.4byte	0xa8c
	.byte	0x78
	.byte	0
	.uleb128 0x12
	.4byte	0x51a
	.4byte	0xa8c
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.4byte	0x7c
	.4byte	0xa9c
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xa
	.2byte	0x27e
	.byte	0x3
	.4byte	0xac1
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x295
	.byte	0xb
	.4byte	0x910
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0xa
	.2byte	0x29e
	.byte	0xb
	.4byte	0xa55
	.byte	0
	.uleb128 0x12
	.4byte	0x7db
	.4byte	0xad1
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF182
	.uleb128 0xd
	.byte	0x4
	.4byte	0xad1
	.uleb128 0x22
	.4byte	0xae7
	.uleb128 0x19
	.4byte	0x681
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xadc
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0x22
	.4byte	0xafe
	.uleb128 0x19
	.4byte	0x75
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb04
	.uleb128 0xd
	.byte	0x4
	.4byte	0xaf3
	.uleb128 0x12
	.4byte	0x875
	.4byte	0xb1a
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF183
	.byte	0xa
	.2byte	0x32e
	.byte	0x17
	.4byte	0x681
	.uleb128 0x5
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x32f
	.byte	0x1d
	.4byte	0x687
	.uleb128 0x12
	.4byte	0x83
	.4byte	0xb44
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x94
	.byte	0
	.uleb128 0x23
	.4byte	.LASF185
	.byte	0x1
	.byte	0x21
	.byte	0x10
	.4byte	0xb34
	.uleb128 0x5
	.byte	0x3
	.4byte	LEDbuffer
	.uleb128 0x12
	.4byte	0x286
	.4byte	0xb66
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x22
	.byte	0x11
	.4byte	0xb56
	.uleb128 0x5
	.byte	0x3
	.4byte	LEDColor
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x1
	.byte	0xb4
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe0
	.uleb128 0x25
	.4byte	.LVL92
	.4byte	0x12c0
	.4byte	0xbaf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40020000
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL93
	.4byte	0x12cd
	.4byte	0xbd0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40020000
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x27
	.4byte	.LVL94
	.4byte	0x12da
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF188
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1f
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0xa1
	.byte	0xe
	.4byte	0x8f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x28
	.4byte	.LASF190
	.byte	0x1
	.byte	0xa1
	.byte	0x15
	.4byte	0x8f
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x24
	.4byte	.LASF191
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5e
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x8d
	.byte	0xe
	.4byte	0x8f
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x28
	.4byte	.LASF190
	.byte	0x1
	.byte	0x8d
	.byte	0x15
	.4byte	0x8f
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0b
	.uleb128 0x29
	.ascii	"RED\000"
	.byte	0x1
	.byte	0x85
	.byte	0x1c
	.4byte	0x83
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2a
	.4byte	.LASF193
	.byte	0x1
	.byte	0x85
	.byte	0x29
	.4byte	0x83
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2a
	.4byte	.LASF194
	.byte	0x1
	.byte	0x85
	.byte	0x38
	.4byte	0x83
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x86
	.byte	0xe
	.4byte	0x8f
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x25
	.4byte	.LVL22
	.4byte	0xd80
	.4byte	0xce9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL23
	.4byte	0xd80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF243
	.byte	0x1
	.byte	0x81
	.byte	0xa
	.4byte	0x286
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd80
	.uleb128 0x2a
	.4byte	.LASF195
	.byte	0x1
	.byte	0x81
	.byte	0x28
	.4byte	0x8f
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x12e6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2d
	.byte	0x32
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1a
	.byte	0x32
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF196
	.byte	0x1
	.byte	0x6b
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1c
	.uleb128 0x2a
	.4byte	.LASF197
	.byte	0x1
	.byte	0x6b
	.byte	0x24
	.4byte	0x8f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x29
	.ascii	"RED\000"
	.byte	0x1
	.byte	0x6b
	.byte	0x37
	.4byte	0x83
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LASF193
	.byte	0x1
	.byte	0x6b
	.byte	0x44
	.4byte	0x83
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2a
	.4byte	.LASF194
	.byte	0x1
	.byte	0x6c
	.byte	0x11
	.4byte	0x83
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	.LASF198
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0xe1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.4byte	0x8f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x28
	.4byte	.LASF199
	.byte	0x1
	.byte	0x6f
	.byte	0xe
	.4byte	0x8f
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x12
	.4byte	0x83
	.4byte	0xe2c
	.uleb128 0x13
	.4byte	0x7c
	.byte	0x17
	.byte	0
	.uleb128 0x24
	.4byte	.LASF200
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b7
	.uleb128 0x2d
	.4byte	0x12b7
	.4byte	.LBI4
	.byte	.LVU157
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.4byte	0xfe9
	.uleb128 0x25
	.4byte	.LVL63
	.4byte	0x12f1
	.4byte	0xe6b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL64
	.4byte	0x12fe
	.4byte	0xe84
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0x130b
	.4byte	0xea6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.4byte	0x4000043c
	.byte	0
	.uleb128 0x25
	.4byte	.LVL66
	.4byte	0x1318
	.4byte	0xec5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL67
	.4byte	0x1325
	.4byte	0xee7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0
	.uleb128 0x25
	.4byte	.LVL68
	.4byte	0x1332
	.4byte	0xf05
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL69
	.4byte	0x133f
	.4byte	0xf24
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x95
	.byte	0
	.uleb128 0x25
	.4byte	.LVL70
	.4byte	0x134c
	.4byte	0xf3d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL71
	.4byte	0x1359
	.4byte	0xf56
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL72
	.4byte	0x1366
	.4byte	0xf6f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL73
	.4byte	0x1373
	.4byte	0xf8f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.byte	0
	.uleb128 0x25
	.4byte	.LVL74
	.4byte	0x1380
	.4byte	0xfa8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL75
	.4byte	0x138d
	.4byte	0xfc1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL76
	.4byte	0x139a
	.4byte	0xfd4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL77
	.4byte	0x13a6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0xc1f
	.uleb128 0x25
	.4byte	.LVL38
	.4byte	0xd80
	.4byte	0x1015
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL39
	.4byte	0xd80
	.4byte	0x1038
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL40
	.4byte	0xd80
	.4byte	0x105a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x25
	.4byte	.LVL41
	.4byte	0x13b2
	.4byte	0x107d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL42
	.4byte	0x13bf
	.4byte	0x10a0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL43
	.4byte	0x13cc
	.4byte	0x10c1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x48000400
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL44
	.4byte	0x13d9
	.4byte	0x10d6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x201
	.byte	0
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x13e5
	.4byte	0x10fa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0x13f2
	.4byte	0x1113
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL47
	.4byte	0x13ff
	.4byte	0x112c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL48
	.4byte	0x140c
	.4byte	0x1140
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL49
	.4byte	0x1419
	.4byte	0x115a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.uleb128 0x25
	.4byte	.LVL50
	.4byte	0x1426
	.4byte	0x1173
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL51
	.4byte	0x1426
	.4byte	0x118c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.4byte	.LVL52
	.4byte	0x1433
	.4byte	0x11a5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL53
	.4byte	0x1440
	.4byte	0x11be
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL54
	.4byte	0x144d
	.4byte	0x11d7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL55
	.4byte	0x145a
	.4byte	0x11f5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x25
	.4byte	.LVL56
	.4byte	0x1467
	.4byte	0x120e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL57
	.4byte	0x1474
	.4byte	0x1227
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL58
	.4byte	0x1481
	.4byte	0x1245
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x25
	.4byte	.LVL59
	.4byte	0x148e
	.4byte	0x125e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.4byte	.LVL60
	.4byte	0x140c
	.4byte	0x1272
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL61
	.4byte	0x149b
	.4byte	0x128b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL62
	.4byte	0x14a8
	.4byte	0x12a6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0x14b5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF244
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xb
	.2byte	0x185
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xb
	.2byte	0x183
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x6
	.byte	0x2e
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF245
	.4byte	.LASF246
	.byte	0xf
	.byte	0
	.uleb128 0x30
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x5
	.2byte	0x4b6
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xb
	.2byte	0x182
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xb
	.2byte	0x19a
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xb
	.2byte	0x189
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0xb
	.2byte	0x19c
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xb
	.2byte	0x188
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xb
	.2byte	0x19e
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xb
	.2byte	0x191
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xb
	.2byte	0x18b
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x18e
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xb
	.2byte	0x187
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xb
	.2byte	0x198
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xb
	.2byte	0x18f
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xc
	.byte	0x8b
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xc
	.byte	0x91
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xd
	.2byte	0x102
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xd
	.2byte	0x104
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0xd
	.2byte	0x106
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0xe
	.byte	0x30
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x5
	.2byte	0x4a0
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x5
	.2byte	0x4bb
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x5
	.2byte	0x4bc
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x5
	.2byte	0x4a3
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x5
	.2byte	0x4bd
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x5
	.2byte	0x4ca
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x5
	.2byte	0x4bf
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x5
	.2byte	0x4c4
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x5
	.2byte	0x4c1
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x5
	.2byte	0x4c2
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x5
	.2byte	0x4c6
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x5
	.2byte	0x4cb
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x5
	.2byte	0x4cf
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x5
	.2byte	0x4c9
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x5
	.2byte	0x4df
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x5
	.2byte	0x49b
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x5
	.2byte	0x4ae
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x34
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS13:
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU199
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 0
.LLST13:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+49
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+99
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+98
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE9
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+99
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU178
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU198
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 0
.LLST14:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE9
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU90
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 .LVU110
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+49
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+99
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+98
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE8
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer+99
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU89
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 .LVU109
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE8
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	LEDbuffer
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU77
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
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
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU23
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU19
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF199:
	.ascii	"LEDindex\000"
.LASF202:
	.ascii	"dma_clear_interrupt_flags\000"
.LASF223:
	.ascii	"timer_set_mode\000"
.LASF100:
	.ascii	"_on_exit_args\000"
.LASF40:
	.ascii	"RST_CRS\000"
.LASF168:
	.ascii	"_wctomb_state\000"
.LASF165:
	.ascii	"_r48\000"
.LASF239:
	.ascii	"timer_enable_counter\000"
.LASF207:
	.ascii	"dma_set_peripheral_size\000"
.LASF243:
	.ascii	"ws2812_get_led_color\000"
.LASF170:
	.ascii	"_signal_buf\000"
.LASF234:
	.ascii	"timer_set_oc_idle_state_set\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF187:
	.ascii	"dma1_channel2_3_isr\000"
.LASF197:
	.ascii	"LEDnumber\000"
.LASF114:
	.ascii	"_lbfsize\000"
.LASF112:
	.ascii	"_flags\000"
.LASF189:
	.ascii	"index\000"
.LASF129:
	.ascii	"_errno\000"
.LASF20:
	.ascii	"RST_USART1\000"
.LASF32:
	.ascii	"RST_USART2\000"
.LASF33:
	.ascii	"RST_USART3\000"
.LASF34:
	.ascii	"RST_USART4\000"
.LASF63:
	.ascii	"TIM_OCM_FROZEN\000"
.LASF156:
	.ascii	"_seed\000"
.LASF225:
	.ascii	"timer_set_repetition_counter\000"
.LASF208:
	.ascii	"dma_set_memory_address\000"
.LASF219:
	.ascii	"gpio_mode_setup\000"
.LASF126:
	.ascii	"_mbstate\000"
.LASF116:
	.ascii	"_read\000"
.LASF203:
	.ascii	"led_toggle\000"
.LASF172:
	.ascii	"_mbrlen_state\000"
.LASF246:
	.ascii	"__builtin_memcpy\000"
.LASF131:
	.ascii	"_stdout\000"
.LASF76:
	.ascii	"_fpos_t\000"
.LASF107:
	.ascii	"_fns\000"
.LASF115:
	.ascii	"_cookie\000"
.LASF17:
	.ascii	"RST_ADC1\000"
.LASF184:
	.ascii	"_global_impure_ptr\000"
.LASF44:
	.ascii	"RST_CEC\000"
.LASF244:
	.ascii	"dma_setup\000"
.LASF212:
	.ascii	"dma_enable_memory_increment_mode\000"
.LASF89:
	.ascii	"_Bigint\000"
.LASF97:
	.ascii	"__tm_wday\000"
.LASF139:
	.ascii	"_result\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF93:
	.ascii	"__tm_hour\000"
.LASF24:
	.ascii	"RST_DBGMCU\000"
.LASF80:
	.ascii	"__count\000"
.LASF92:
	.ascii	"__tm_min\000"
.LASF183:
	.ascii	"_impure_ptr\000"
.LASF178:
	.ascii	"_nextf\000"
.LASF37:
	.ascii	"RST_USB\000"
.LASF155:
	.ascii	"_rand48\000"
.LASF140:
	.ascii	"_result_k\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF161:
	.ascii	"_asctime_buf\000"
.LASF228:
	.ascii	"timer_disable_oc_output\000"
.LASF111:
	.ascii	"__sFILE\000"
.LASF88:
	.ascii	"_wds\000"
.LASF231:
	.ascii	"timer_set_oc_slow_mode\000"
.LASF217:
	.ascii	"nvic_enable_irq\000"
.LASF53:
	.ascii	"rcc_periph_rst\000"
.LASF151:
	.ascii	"__FILE\000"
.LASF123:
	.ascii	"_offset\000"
.LASF55:
	.ascii	"TIM_OC1\000"
.LASF57:
	.ascii	"TIM_OC2\000"
.LASF59:
	.ascii	"TIM_OC3\000"
.LASF61:
	.ascii	"TIM_OC4\000"
.LASF134:
	.ascii	"_emergency\000"
.LASF42:
	.ascii	"RST_DAC\000"
.LASF210:
	.ascii	"dma_set_number_of_data\000"
.LASF16:
	.ascii	"RST_ADC\000"
.LASF218:
	.ascii	"nvic_set_priority\000"
.LASF91:
	.ascii	"__tm_sec\000"
.LASF98:
	.ascii	"__tm_yday\000"
.LASF81:
	.ascii	"__value\000"
.LASF133:
	.ascii	"_inc\000"
.LASF106:
	.ascii	"_ind\000"
.LASF191:
	.ascii	"fillBufferBlack\000"
.LASF85:
	.ascii	"_next\000"
.LASF174:
	.ascii	"_mbsrtowcs_state\000"
.LASF205:
	.ascii	"dma_channel_reset\000"
.LASF90:
	.ascii	"__tm\000"
.LASF188:
	.ascii	"fillBufferWhite\000"
.LASF15:
	.ascii	"RST_SYSCFG\000"
.LASF192:
	.ascii	"setWHOLEcolor\000"
.LASF198:
	.ascii	"tempBuffer\000"
.LASF14:
	.ascii	"rcc_apb1_frequency\000"
.LASF141:
	.ascii	"_p5s\000"
.LASF185:
	.ascii	"LEDbuffer\000"
.LASF221:
	.ascii	"gpio_set_af\000"
.LASF13:
	.ascii	"rcc_ahb_frequency\000"
.LASF176:
	.ascii	"_wcsrtombs_state\000"
.LASF166:
	.ascii	"_mblen_state\000"
.LASF224:
	.ascii	"timer_set_prescaler\000"
.LASF150:
	.ascii	"char\000"
.LASF94:
	.ascii	"__tm_mday\000"
.LASF147:
	.ascii	"_sig_func\000"
.LASF173:
	.ascii	"_mbrtowc_state\000"
.LASF146:
	.ascii	"_atexit0\000"
.LASF194:
	.ascii	"BLUE\000"
.LASF236:
	.ascii	"timer_enable_oc_output\000"
.LASF235:
	.ascii	"timer_set_oc_value\000"
.LASF83:
	.ascii	"_flock_t\000"
.LASF78:
	.ascii	"__wch\000"
.LASF154:
	.ascii	"_iobs\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF195:
	.ascii	"led_number\000"
.LASF119:
	.ascii	"_close\000"
.LASF137:
	.ascii	"__sdidinit\000"
.LASF30:
	.ascii	"RST_WWDG\000"
.LASF130:
	.ascii	"_stdin\000"
.LASF163:
	.ascii	"_gamma_signgam\000"
.LASF193:
	.ascii	"GREEN\000"
.LASF8:
	.ascii	"long long int\000"
.LASF109:
	.ascii	"_base\000"
.LASF142:
	.ascii	"_freelist\000"
.LASF157:
	.ascii	"_mult\000"
.LASF84:
	.ascii	"__ULong\000"
.LASF175:
	.ascii	"_wcrtomb_state\000"
.LASF113:
	.ascii	"_file\000"
.LASF41:
	.ascii	"RST_PWR\000"
.LASF213:
	.ascii	"dma_disable_peripheral_increment_mode\000"
.LASF232:
	.ascii	"timer_set_oc_mode\000"
.LASF138:
	.ascii	"__cleanup\000"
.LASF82:
	.ascii	"_mbstate_t\000"
.LASF45:
	.ascii	"RST_BACKUPDOMAIN\000"
.LASF99:
	.ascii	"__tm_isdst\000"
.LASF177:
	.ascii	"_h_errno\000"
.LASF64:
	.ascii	"TIM_OCM_ACTIVE\000"
.LASF95:
	.ascii	"__tm_mon\000"
.LASF71:
	.ascii	"green\000"
.LASF74:
	.ascii	"_LOCK_T\000"
.LASF216:
	.ascii	"dma_enable_circular_mode\000"
.LASF117:
	.ascii	"_write\000"
.LASF35:
	.ascii	"RST_I2C1\000"
.LASF36:
	.ascii	"RST_I2C2\000"
.LASF164:
	.ascii	"_rand_next\000"
.LASF242:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF56:
	.ascii	"TIM_OC1N\000"
.LASF105:
	.ascii	"_atexit\000"
.LASF186:
	.ascii	"LEDColor\000"
.LASF229:
	.ascii	"timer_disable_oc_clear\000"
.LASF201:
	.ascii	"dma_get_interrupt_flag\000"
.LASF238:
	.ascii	"timer_enable_irq\000"
.LASF190:
	.ascii	"buffIndex\000"
.LASF2:
	.ascii	"short int\000"
.LASF222:
	.ascii	"rcc_periph_reset_pulse\000"
.LASF4:
	.ascii	"long int\000"
.LASF230:
	.ascii	"timer_enable_oc_preload\000"
.LASF149:
	.ascii	"__sf\000"
.LASF87:
	.ascii	"_sign\000"
.LASF19:
	.ascii	"RST_SPI1\000"
.LASF31:
	.ascii	"RST_SPI2\000"
.LASF43:
	.ascii	"RST_DAC1\000"
.LASF233:
	.ascii	"timer_set_oc_polarity_high\000"
.LASF58:
	.ascii	"TIM_OC2N\000"
.LASF204:
	.ascii	"timer_set_dma_on_update_event\000"
.LASF79:
	.ascii	"__wchb\000"
.LASF72:
	.ascii	"blue\000"
.LASF96:
	.ascii	"__tm_year\000"
.LASF46:
	.ascii	"RST_GPIOA\000"
.LASF47:
	.ascii	"RST_GPIOB\000"
.LASF48:
	.ascii	"RST_GPIOC\000"
.LASF49:
	.ascii	"RST_GPIOD\000"
.LASF50:
	.ascii	"RST_GPIOE\000"
.LASF51:
	.ascii	"RST_GPIOF\000"
.LASF62:
	.ascii	"tim_oc_mode\000"
.LASF211:
	.ascii	"dma_set_read_from_memory\000"
.LASF162:
	.ascii	"_localtime_buf\000"
.LASF180:
	.ascii	"_unused\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF145:
	.ascii	"_new\000"
.LASF143:
	.ascii	"_cvtlen\000"
.LASF86:
	.ascii	"_maxwds\000"
.LASF169:
	.ascii	"_l64a_buf\000"
.LASF29:
	.ascii	"RST_TIM14\000"
.LASF21:
	.ascii	"RST_TIM15\000"
.LASF22:
	.ascii	"RST_TIM16\000"
.LASF23:
	.ascii	"RST_TIM17\000"
.LASF18:
	.ascii	"RST_TIM1\000"
.LASF25:
	.ascii	"RST_TIM2\000"
.LASF26:
	.ascii	"RST_TIM3\000"
.LASF122:
	.ascii	"_blksize\000"
.LASF27:
	.ascii	"RST_TIM6\000"
.LASF28:
	.ascii	"RST_TIM7\000"
.LASF125:
	.ascii	"_lock\000"
.LASF60:
	.ascii	"TIM_OC3N\000"
.LASF67:
	.ascii	"TIM_OCM_FORCE_LOW\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"tim_oc_id\000"
.LASF227:
	.ascii	"timer_set_period\000"
.LASF153:
	.ascii	"_niobs\000"
.LASF77:
	.ascii	"wint_t\000"
.LASF102:
	.ascii	"_dso_handle\000"
.LASF181:
	.ascii	"__lock\000"
.LASF241:
	.ascii	"ws2812.c\000"
.LASF214:
	.ascii	"dma_set_priority\000"
.LASF200:
	.ascii	"ws2812_init\000"
.LASF144:
	.ascii	"_cvtbuf\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF209:
	.ascii	"dma_set_memory_size\000"
.LASF52:
	.ascii	"RST_TSC\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF220:
	.ascii	"gpio_set_output_options\000"
.LASF171:
	.ascii	"_getdate_err\000"
.LASF39:
	.ascii	"RST_CAN1\000"
.LASF158:
	.ascii	"_add\000"
.LASF206:
	.ascii	"dma_set_peripheral_address\000"
.LASF237:
	.ascii	"timer_generate_event\000"
.LASF108:
	.ascii	"__sbuf\000"
.LASF73:
	.ascii	"LedColor\000"
.LASF152:
	.ascii	"_glue\000"
.LASF69:
	.ascii	"TIM_OCM_PWM1\000"
.LASF70:
	.ascii	"TIM_OCM_PWM2\000"
.LASF148:
	.ascii	"__sglue\000"
.LASF124:
	.ascii	"_data\000"
.LASF160:
	.ascii	"_strtok_last\000"
.LASF167:
	.ascii	"_mbtowc_state\000"
.LASF240:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF196:
	.ascii	"ws2812_set_led_color\000"
.LASF136:
	.ascii	"_locale\000"
.LASF101:
	.ascii	"_fnargs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF215:
	.ascii	"dma_enable_channel\000"
.LASF128:
	.ascii	"_reent\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF38:
	.ascii	"RST_CAN\000"
.LASF245:
	.ascii	"memcpy\000"
.LASF103:
	.ascii	"_fntypes\000"
.LASF110:
	.ascii	"_size\000"
.LASF68:
	.ascii	"TIM_OCM_FORCE_HIGH\000"
.LASF75:
	.ascii	"_off_t\000"
.LASF121:
	.ascii	"_nbuf\000"
.LASF159:
	.ascii	"_unused_rand\000"
.LASF135:
	.ascii	"_unspecified_locale_info\000"
.LASF127:
	.ascii	"_flags2\000"
.LASF104:
	.ascii	"_is_cxa\000"
.LASF66:
	.ascii	"TIM_OCM_TOGGLE\000"
.LASF65:
	.ascii	"TIM_OCM_INACTIVE\000"
.LASF182:
	.ascii	"__locale_t\000"
.LASF118:
	.ascii	"_seek\000"
.LASF132:
	.ascii	"_stderr\000"
.LASF179:
	.ascii	"_nmalloc\000"
.LASF120:
	.ascii	"_ubuf\000"
.LASF226:
	.ascii	"timer_enable_preload\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
