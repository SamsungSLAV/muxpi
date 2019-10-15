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
	.file	"adc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_setup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_setup
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_setup, %function
adc_setup:
.LFB1:
	.file 1 "adc.c"
	.loc 1 63 22 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 64 5 view .LVU1
.LBB12:
.LBI12:
	.loc 1 43 13 view .LVU2
.LBB13:
	.loc 1 44 5 view .LVU3
	movs	r0, #160
.LBE13:
.LBE12:
	.loc 1 63 22 is_stmt 0 view .LVU4
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB15:
.LBB14:
	.loc 1 46 5 view .LVU5
	ldr	r4, .L3
	.loc 1 44 5 view .LVU6
	lsls	r0, r0, #2
	bl	rcc_periph_clock_enable
.LVL0:
	.loc 1 46 5 is_stmt 1 view .LVU7
	movs	r0, r4
	movs	r1, #1
	bl	dma_channel_reset
.LVL1:
	.loc 1 47 5 view .LVU8
	movs	r0, r4
	ldr	r2, .L3+4
	movs	r1, #1
	bl	dma_set_peripheral_address
.LVL2:
	.loc 1 48 5 view .LVU9
	movs	r2, #128
	movs	r0, r4
	lsls	r2, r2, #1
	movs	r1, #1
	bl	dma_set_peripheral_size
.LVL3:
	.loc 1 49 5 view .LVU10
	movs	r0, r4
	ldr	r2, .L3+8
	movs	r1, #1
	bl	dma_set_memory_address
.LVL4:
	.loc 1 50 5 view .LVU11
	movs	r2, #128
	movs	r0, r4
	lsls	r2, r2, #3
	movs	r1, #1
	bl	dma_set_memory_size
.LVL5:
	.loc 1 51 5 view .LVU12
	movs	r2, #50
	movs	r0, r4
	movs	r1, #1
	bl	dma_set_number_of_data
.LVL6:
	.loc 1 52 5 view .LVU13
	movs	r0, r4
	movs	r1, #1
	bl	dma_set_read_from_peripheral
.LVL7:
	.loc 1 53 5 view .LVU14
	movs	r0, r4
	movs	r1, #1
	bl	dma_enable_memory_increment_mode
.LVL8:
	.loc 1 54 5 view .LVU15
	movs	r0, r4
	movs	r1, #1
	bl	dma_disable_peripheral_increment_mode
.LVL9:
	.loc 1 55 5 view .LVU16
	movs	r2, #128
	movs	r0, r4
	lsls	r2, r2, #6
	movs	r1, #1
	bl	dma_set_priority
.LVL10:
	.loc 1 56 5 view .LVU17
	movs	r0, r4
	movs	r1, #1
	bl	dma_enable_channel
.LVL11:
	.loc 1 57 5 view .LVU18
	movs	r1, #1
	movs	r0, r4
	bl	dma_enable_circular_mode
.LVL12:
	.loc 1 59 5 view .LVU19
	movs	r0, #9
	bl	nvic_enable_irq
.LVL13:
	.loc 1 60 5 view .LVU20
	movs	r1, #0
	movs	r0, #9
	bl	nvic_set_priority
.LVL14:
.LBE14:
.LBE15:
	.loc 1 66 5 view .LVU21
	movs	r0, #144
	.loc 1 68 5 is_stmt 0 view .LVU22
	ldr	r4, .L3+12
	.loc 1 66 5 view .LVU23
	movs	r3, #7
	movs	r2, #0
	movs	r1, #3
	lsls	r0, r0, #23
	bl	gpio_mode_setup
.LVL15:
	.loc 1 68 5 is_stmt 1 view .LVU24
	movs	r0, r4
	bl	adc_power_off
.LVL16:
	.loc 1 69 5 view .LVU25
	movs	r1, #0
	movs	r0, r4
	bl	adc_set_clk_source
.LVL17:
	.loc 1 70 5 view .LVU26
	movs	r0, r4
	bl	adc_calibrate
.LVL18:
	.loc 1 71 5 view .LVU27
	movs	r1, #1
	movs	r0, r4
	bl	adc_set_operation_mode
.LVL19:
	.loc 1 72 5 view .LVU28
	movs	r0, r4
	bl	adc_disable_external_trigger_regular
.LVL20:
	.loc 1 73 5 view .LVU29
	movs	r0, r4
	bl	adc_set_right_aligned
.LVL21:
	.loc 1 74 5 view .LVU30
	bl	adc_enable_temperature_sensor
.LVL22:
	.loc 1 75 5 view .LVU31
	bl	adc_enable_vrefint
.LVL23:
	.loc 1 76 5 view .LVU32
	movs	r0, r4
	movs	r1, #6
	bl	adc_set_sample_time_on_all_channels
.LVL24:
	.loc 1 77 5 view .LVU33
	ldr	r2, .L3+16
	movs	r0, r4
	movs	r1, #5
	bl	adc_set_regular_sequence
.LVL25:
	.loc 1 78 5 view .LVU34
	movs	r1, #0
	movs	r0, r4
	bl	adc_set_resolution
.LVL26:
	.loc 1 79 5 view .LVU35
	movs	r0, r4
	bl	adc_disable_analog_watchdog
.LVL27:
	.loc 1 81 5 view .LVU36
	movs	r0, r4
	bl	adc_enable_dma
.LVL28:
	.loc 1 82 5 view .LVU37
	.loc 1 82 81 is_stmt 0 view .LVU38
	movs	r1, #2
	ldr	r2, .L3+20
	.loc 1 83 5 view .LVU39
	movs	r0, r4
	.loc 1 82 81 view .LVU40
	ldr	r3, [r2]
	.loc 1 87 1 view .LVU41
	@ sp needed
	.loc 1 82 81 view .LVU42
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 83 5 is_stmt 1 view .LVU43
	bl	adc_set_continuous_conversion_mode
.LVL29:
	.loc 1 85 5 view .LVU44
	movs	r0, r4
	bl	adc_power_on
.LVL30:
	.loc 1 86 5 view .LVU45
	.loc 1 86 81 is_stmt 0 view .LVU46
	movs	r1, #4
	ldr	r2, .L3+24
	ldr	r3, [r2]
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 87 1 view .LVU47
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	1073872896
	.word	1073816640
	.word	.LANCHOR0
	.word	1073816576
	.word	.LANCHOR1
	.word	1073816588
	.word	1073816584
	.cfi_endproc
.LFE1:
	.size	adc_setup, .-adc_setup
	.global	__aeabi_uidiv
	.global	__aeabi_idiv
	.section	.text.adc_get_value,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_get_value
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_get_value, %function
adc_get_value:
.LVL31:
.LFB2:
	.loc 1 89 32 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 90 5 view .LVU49
	.loc 1 91 5 view .LVU50
	.loc 1 92 5 view .LVU51
.LBB16:
	.loc 1 92 10 view .LVU52
	.loc 1 92 10 is_stmt 0 view .LVU53
	ldr	r3, .L8
	ldr	r1, .L8+4
	mov	ip, r3
	add	r0, r0, ip
.LVL32:
	.loc 1 92 10 view .LVU54
	lsls	r0, r0, #1
.LVL33:
	.loc 1 92 10 view .LVU55
	adds	r3, r1, r0
	movs	r1, r3
.LBE16:
	.loc 1 91 9 view .LVU56
	movs	r0, #0
	.loc 1 89 32 view .LVU57
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	adds	r1, r1, #100
.LVL34:
.L6:
.LBB17:
	.loc 1 93 9 is_stmt 1 discriminator 3 view .LVU58
	.loc 1 93 28 is_stmt 0 discriminator 3 view .LVU59
	ldrh	r2, [r3]
	adds	r3, r3, #10
	.loc 1 93 13 discriminator 3 view .LVU60
	adds	r0, r0, r2
.LVL35:
	.loc 1 92 5 discriminator 3 view .LVU61
	cmp	r3, r1
	bne	.L6
.LBE17:
	.loc 1 95 5 is_stmt 1 view .LVU62
	.loc 1 95 16 is_stmt 0 view .LVU63
	movs	r1, #10
	bl	__aeabi_idiv
.LVL36:
	.loc 1 96 1 view .LVU64
	@ sp needed
	pop	{r4, pc}
.L9:
	.align	2
.L8:
	.word	2147483647
	.word	.LANCHOR0
	.cfi_endproc
.LFE2:
	.size	adc_get_value, .-adc_get_value
	.global	__aeabi_i2d
	.global	__aeabi_ui2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.section	.text.adc_get_voltage,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_get_voltage
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_get_voltage, %function
adc_get_voltage:
.LVL37:
.LFB3:
	.loc 1 98 34 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 99 5 view .LVU66
.LBB18:
.LBI18:
	.loc 1 89 5 view .LVU67
.LBB19:
	.loc 1 90 5 view .LVU68
	.loc 1 91 5 view .LVU69
	.loc 1 92 5 view .LVU70
.LBB20:
	.loc 1 92 10 view .LVU71
	.loc 1 92 10 is_stmt 0 view .LVU72
.LBE20:
.LBE19:
.LBE18:
	.loc 1 98 34 view .LVU73
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	ldr	r6, .L15
	.loc 1 98 34 view .LVU74
	movs	r7, r0
	movs	r3, r6
	movs	r1, r6
.LBB23:
.LBB22:
	.loc 1 91 9 view .LVU75
	movs	r0, #0
.LVL38:
	.loc 1 91 9 view .LVU76
	adds	r3, r3, #8
	adds	r1, r1, #108
.LVL39:
.L11:
.LBB21:
	.loc 1 93 9 is_stmt 1 view .LVU77
	.loc 1 93 28 is_stmt 0 view .LVU78
	ldrh	r2, [r3]
	adds	r3, r3, #10
	.loc 1 93 13 view .LVU79
	adds	r0, r0, r2
.LVL40:
	.loc 1 92 5 view .LVU80
	cmp	r1, r3
	bne	.L11
.LBE21:
	.loc 1 95 5 is_stmt 1 view .LVU81
.LVL41:
	.loc 1 95 16 is_stmt 0 view .LVU82
	movs	r1, #10
	bl	__aeabi_idiv
.LVL42:
.LBE22:
.LBE23:
	.loc 1 99 12 view .LVU83
	bl	__aeabi_i2d
.LVL43:
	ldr	r3, .L15+4
	movs	r4, r0
	adds	r0, r7, r3
	lsls	r0, r0, #1
	adds	r3, r6, r0
	movs	r0, r3
	movs	r5, r1
.LVL44:
	.loc 1 100 5 is_stmt 1 view .LVU84
.LBB24:
.LBI24:
	.loc 1 89 5 view .LVU85
.LBB25:
	.loc 1 90 5 view .LVU86
	.loc 1 91 5 view .LVU87
	.loc 1 92 5 view .LVU88
.LBB26:
	.loc 1 92 10 view .LVU89
	.loc 1 92 10 is_stmt 0 view .LVU90
.LBE26:
	.loc 1 91 9 view .LVU91
	movs	r6, #0
	adds	r0, r0, #100
.LVL45:
.L12:
.LBB27:
	.loc 1 93 9 is_stmt 1 view .LVU92
	.loc 1 93 28 is_stmt 0 view .LVU93
	ldrh	r2, [r3]
	adds	r3, r3, #10
	.loc 1 93 13 view .LVU94
	adds	r6, r6, r2
.LVL46:
	.loc 1 92 5 view .LVU95
	cmp	r0, r3
	bne	.L12
.LBE27:
	.loc 1 95 5 is_stmt 1 view .LVU96
.LVL47:
	.loc 1 95 5 is_stmt 0 view .LVU97
.LBE25:
.LBE24:
	.loc 1 101 5 is_stmt 1 view .LVU98
	.loc 1 101 31 is_stmt 0 view .LVU99
	ldr	r3, .L15+8
	.loc 1 104 1 view .LVU100
	@ sp needed
	.loc 1 101 31 view .LVU101
	ldrh	r0, [r3]
	uxth	r0, r0
	.loc 1 101 22 view .LVU102
	bl	__aeabi_ui2d
.LVL48:
	.loc 1 101 20 view .LVU103
	movs	r2, #0
	ldr	r3, .L15+12
	bl	__aeabi_dmul
.LVL49:
	.loc 1 101 67 view .LVU104
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_ddiv
.LVL50:
	movs	r5, r1
	movs	r4, r0
.LVL51:
	.loc 1 101 11 view .LVU105
	ldr	r3, .L15+16
.LBB30:
.LBB28:
	.loc 1 95 16 view .LVU106
	movs	r0, r6
.LBE28:
.LBE30:
	.loc 1 101 11 view .LVU107
	str	r4, [r3]
	str	r5, [r3, #4]
	.loc 1 103 5 is_stmt 1 view .LVU108
.LBB31:
.LBB29:
	.loc 1 95 16 is_stmt 0 view .LVU109
	movs	r1, #10
	bl	__aeabi_idiv
.LVL52:
.LBE29:
.LBE31:
	.loc 1 100 12 view .LVU110
	bl	__aeabi_i2d
.LVL53:
	.loc 1 103 17 view .LVU111
	movs	r3, r5
	movs	r2, r4
	bl	__aeabi_dmul
.LVL54:
	.loc 1 103 26 view .LVU112
	movs	r2, #0
	ldr	r3, .L15+20
	bl	__aeabi_ddiv
.LVL55:
	bl	__aeabi_d2iz
.LVL56:
.LVL57:
.LVL58:
	.loc 1 104 1 view .LVU113
	pop	{r3, r4, r5, r6, r7, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	2147483647
	.word	536868794
	.word	1084868608
	.word	.LANCHOR2
	.word	1085275648
	.cfi_endproc
.LFE3:
	.size	adc_get_voltage, .-adc_get_voltage
	.section	.text.adc_get_current,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_get_current
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_get_current, %function
adc_get_current:
.LFB4:
	.loc 1 106 27 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 107 5 view .LVU115
	.loc 1 106 27 is_stmt 0 view .LVU116
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 107 16 view .LVU117
	movs	r0, #1
	bl	adc_get_voltage
.LVL59:
	.loc 1 108 5 is_stmt 1 view .LVU118
	.loc 1 108 21 is_stmt 0 view .LVU119
	bl	__aeabi_i2d
.LVL60:
	.loc 1 108 21 view .LVU120
	ldr	r2, .L18
	ldr	r3, .L18+4
	bl	__aeabi_ddiv
.LVL61:
	.loc 1 108 19 view .LVU121
	movs	r2, #0
	ldr	r3, .L18+8
	bl	__aeabi_dmul
.LVL62:
	.loc 1 108 42 view .LVU122
	movs	r2, #0
	ldr	r3, .L18+12
	bl	__aeabi_ddiv
.LVL63:
	bl	__aeabi_d2iz
.LVL64:
	.loc 1 109 1 view .LVU123
	@ sp needed
	pop	{r4, pc}
.L19:
	.align	2
.L18:
	.word	1717986918
	.word	1074423398
	.word	1083129856
	.word	1080508416
	.cfi_endproc
.LFE4:
	.size	adc_get_current, .-adc_get_current
	.global	__aeabi_dsub
	.global	__aeabi_dcmpgt
	.section	.text.adc_get_resistance,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_get_resistance
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_get_resistance, %function
adc_get_resistance:
.LFB5:
	.loc 1 111 30 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 112 5 view .LVU125
.LVL65:
.LBB32:
.LBI32:
	.loc 1 134 5 view .LVU126
.LBB33:
	.loc 1 135 5 view .LVU127
.LBE33:
.LBE32:
	.loc 1 111 30 is_stmt 0 view .LVU128
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB35:
.LBB34:
	.loc 1 135 17 view .LVU129
	movs	r0, #3
	bl	adc_get_voltage
.LVL66:
	.loc 1 136 5 is_stmt 1 view .LVU130
	.loc 1 154 5 view .LVU131
	.loc 1 154 5 is_stmt 0 view .LVU132
.LBE34:
.LBE35:
	.loc 1 112 20 view .LVU133
	bl	__aeabi_i2d
.LVL67:
	.loc 1 112 50 view .LVU134
	ldr	r3, .L23
	.loc 1 112 12 view .LVU135
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	bl	__aeabi_ddiv
.LVL68:
	.loc 1 113 25 view .LVU136
	movs	r2, #0
	ldr	r3, .L23+4
	.loc 1 112 12 view .LVU137
	movs	r4, r0
	movs	r5, r1
.LVL69:
	.loc 1 113 5 is_stmt 1 view .LVU138
	.loc 1 113 25 is_stmt 0 view .LVU139
	bl	__aeabi_dmul
.LVL70:
	.loc 1 113 42 view .LVU140
	movs	r2, r4
	movs	r3, r5
	.loc 1 113 25 view .LVU141
	movs	r6, r0
	movs	r7, r1
	.loc 1 113 42 view .LVU142
	movs	r0, #0
	ldr	r1, .L23+8
	bl	__aeabi_dsub
.LVL71:
	movs	r2, r0
	movs	r3, r1
	.loc 1 113 12 view .LVU143
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_ddiv
.LVL72:
	.loc 1 114 29 view .LVU144
	movs	r2, #0
	ldr	r3, .L23+4
	.loc 1 113 12 view .LVU145
	movs	r4, r0
.LVL73:
	.loc 1 113 12 view .LVU146
	movs	r5, r1
.LVL74:
	.loc 1 114 5 is_stmt 1 view .LVU147
	.loc 1 114 29 is_stmt 0 view .LVU148
	bl	__aeabi_dcmpgt
.LVL75:
	cmp	r0, #0
	bne	.L22
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_d2iz
.LVL76:
.L20:
	.loc 1 119 1 view .LVU149
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.LVL77:
.L22:
	.loc 1 119 1 view .LVU150
	movs	r0, #250
	lsls	r0, r0, #2
.LVL78:
	.loc 1 115 5 is_stmt 1 view .LVU151
	.loc 1 115 12 is_stmt 0 view .LVU152
	b	.L20
.L24:
	.align	2
.L23:
	.word	.LANCHOR2
	.word	1083129856
	.word	1072693248
	.cfi_endproc
.LFE5:
	.size	adc_get_resistance, .-adc_get_resistance
	.section	.text.adc_grab_channel1_and_set_to_zero,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_grab_channel1_and_set_to_zero
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_grab_channel1_and_set_to_zero, %function
adc_grab_channel1_and_set_to_zero:
.LFB6:
	.loc 1 121 46 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 122 5 view .LVU154
	.loc 1 121 46 is_stmt 0 view .LVU155
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 122 5 view .LVU156
	movs	r4, #144
	lsls	r4, r4, #23
	movs	r3, #2
	movs	r2, #0
	movs	r0, r4
	movs	r1, #1
	bl	gpio_mode_setup
.LVL79:
	.loc 1 123 5 is_stmt 1 view .LVU157
	movs	r1, #2
	movs	r0, r4
	bl	gpio_clear
.LVL80:
	.loc 1 124 1 is_stmt 0 view .LVU158
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE6:
	.size	adc_grab_channel1_and_set_to_zero, .-adc_grab_channel1_and_set_to_zero
	.section	.text.adc_release_channel1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_release_channel1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_release_channel1, %function
adc_release_channel1:
.LFB7:
	.loc 1 126 33 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 127 5 view .LVU160
	movs	r0, #144
	.loc 1 126 33 is_stmt 0 view .LVU161
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 127 5 view .LVU162
	movs	r3, #2
	movs	r2, #0
	movs	r1, #3
	lsls	r0, r0, #23
	bl	gpio_mode_setup
.LVL81:
	.loc 1 128 1 view .LVU163
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE7:
	.size	adc_release_channel1, .-adc_release_channel1
	.section	.text.adc_get_calibrated,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	adc_get_calibrated
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	adc_get_calibrated, %function
adc_get_calibrated:
.LVL82:
.LFB8:
	.loc 1 134 37 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 135 5 view .LVU165
	.loc 1 134 37 is_stmt 0 view .LVU166
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 135 17 view .LVU167
	bl	adc_get_voltage
.LVL83:
	.loc 1 136 5 is_stmt 1 view .LVU168
	.loc 1 154 5 view .LVU169
	.loc 1 155 1 is_stmt 0 view .LVU170
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE8:
	.size	adc_get_calibrated, .-adc_get_calibrated
	.global	V33mV
	.global	channel_data
	.global	channel_array
	.section	.bss.channel_data,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	channel_data, %object
	.size	channel_data, 100
channel_data:
	.space	100
	.section	.data.V33mV,"aw"
	.align	3
	.set	.LANCHOR2,. + 0
	.type	V33mV, %object
	.size	V33mV, 8
V33mV:
	.word	1717986918
	.word	1074423398
	.section	.data.channel_array,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	channel_array, %object
	.size	channel_array, 5
channel_array:
	.byte	0
	.byte	1
	.byte	2
	.byte	16
	.byte	17
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h"
	.file 6 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "../libopencm3/include/libopencm3/stm32/f0/rcc.h"
	.file 9 "../libopencm3/include/libopencm3/stm32/f0/adc.h"
	.file 10 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
	.file 11 "../libopencm3/include/libopencm3/stm32/common/gpio_common_all.h"
	.file 12 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h"
	.file 13 "../libopencm3/include/libopencm3/stm32/common/dma_common_l1f013.h"
	.file 14 "../libopencm3/include/libopencm3/cm3/nvic.h"
	.file 15 "../libopencm3/include/libopencm3/stm32/common/adc_common_v2.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x132f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF231
	.byte	0xc
	.4byte	.LASF232
	.4byte	.LASF233
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x67
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x81
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x22
	.byte	0x19
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x6
	.4byte	.LASF120
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x6e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x6e
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x33
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xf4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xc5
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xf4
	.byte	0
	.uleb128 0xa
	.4byte	0x4d
	.4byte	0x104
	.uleb128 0xb
	.4byte	0x33
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x128
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xd2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0x104
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaf
	.byte	0x11
	.4byte	0x96
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x148
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0xf
	.4byte	0x148
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x81
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1ba
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1ba
	.byte	0
	.uleb128 0x11
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x11
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1c0
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x160
	.uleb128 0xa
	.4byte	0x154
	.4byte	0x1d0
	.uleb128 0xb
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x253
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x298
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x298
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x298
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x154
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x154
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x140
	.4byte	0x2a8
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.byte	0x8
	.4byte	0x2eb
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x5e
	.byte	0x12
	.4byte	0x2eb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5f
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x6
	.byte	0x61
	.byte	0x9
	.4byte	0x2f1
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0x62
	.byte	0x1e
	.4byte	0x253
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0xa
	.4byte	0x301
	.4byte	0x301
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x307
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x330
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x330
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4d
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x479
	.uleb128 0x11
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x330
	.byte	0
	.uleb128 0x11
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x11
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x54
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x54
	.byte	0xe
	.uleb128 0x11
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x308
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x140
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x5eb
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x615
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x639
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x653
	.byte	0x2c
	.uleb128 0x11
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x308
	.byte	0x30
	.uleb128 0x11
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x330
	.byte	0x38
	.uleb128 0x11
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x659
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x669
	.byte	0x43
	.uleb128 0x11
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x308
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xad
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x6
	.byte	0xde
	.byte	0x12
	.4byte	0x497
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x134
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x128
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.4byte	0x2c
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x140
	.uleb128 0x16
	.4byte	0x142
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4a2
	.uleb128 0xf
	.4byte	0x497
	.uleb128 0x17
	.4byte	.LASF68
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.byte	0x8
	.4byte	0x5eb
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x262
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.byte	0xb
	.4byte	0x6c5
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.byte	0x14
	.4byte	0x6c5
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x267
	.byte	0x1e
	.4byte	0x6c5
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x269
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26a
	.byte	0x8
	.4byte	0x8c5
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26d
	.byte	0x7
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26e
	.byte	0x16
	.4byte	0x8da
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x270
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x272
	.byte	0xa
	.4byte	0x8eb
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x275
	.byte	0x13
	.4byte	0x1ba
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x276
	.byte	0x7
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x277
	.byte	0x13
	.4byte	0x1ba
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x278
	.byte	0x14
	.4byte	0x8f1
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x2c
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27c
	.byte	0x9
	.4byte	0x142
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x29f
	.byte	0x7
	.4byte	0x8a0
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2a3
	.byte	0x13
	.4byte	0x2eb
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a4
	.byte	0x12
	.4byte	0x2a8
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a8
	.byte	0xc
	.4byte	0x902
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2ad
	.byte	0x10
	.4byte	0x686
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2af
	.byte	0xa
	.4byte	0x90e
	.2byte	0x2ec
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x479
	.uleb128 0x15
	.4byte	0x2c
	.4byte	0x60f
	.uleb128 0x16
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x140
	.uleb128 0x16
	.4byte	0x60f
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5f1
	.uleb128 0x15
	.4byte	0xb9
	.4byte	0x639
	.uleb128 0x16
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x140
	.uleb128 0x16
	.4byte	0xb9
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61b
	.uleb128 0x15
	.4byte	0x2c
	.4byte	0x653
	.uleb128 0x16
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x140
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x63f
	.uleb128 0xa
	.4byte	0x4d
	.4byte	0x669
	.uleb128 0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x4d
	.4byte	0x679
	.uleb128 0xb
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x336
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x6bf
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x6bf
	.byte	0
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x6c5
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x686
	.uleb128 0x5
	.byte	0x4
	.4byte	0x679
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x704
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x704
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x704
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x67
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x67
	.4byte	0x714
	.uleb128 0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x829
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x282
	.byte	0x18
	.4byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x283
	.byte	0x12
	.4byte	0x142
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x284
	.byte	0x10
	.4byte	0x829
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x285
	.byte	0x17
	.4byte	0x1d0
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x286
	.byte	0xf
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x287
	.byte	0x2c
	.4byte	0x8f
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x288
	.byte	0x1a
	.4byte	0x6cb
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x289
	.byte	0x16
	.4byte	0x128
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28a
	.byte	0x16
	.4byte	0x128
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28b
	.byte	0x16
	.4byte	0x128
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28c
	.byte	0x10
	.4byte	0x839
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28d
	.byte	0x10
	.4byte	0x849
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28e
	.byte	0xf
	.4byte	0x2c
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x128
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x128
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x291
	.byte	0x16
	.4byte	0x128
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x292
	.byte	0x16
	.4byte	0x128
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x293
	.byte	0x16
	.4byte	0x128
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x294
	.byte	0x8
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	0x148
	.4byte	0x839
	.uleb128 0xb
	.4byte	0x33
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x148
	.4byte	0x849
	.uleb128 0xb
	.4byte	0x33
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x148
	.4byte	0x859
	.uleb128 0xb
	.4byte	0x33
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.byte	0x7
	.4byte	0x880
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x29c
	.byte	0x1b
	.4byte	0x880
	.byte	0
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x29d
	.byte	0x18
	.4byte	0x890
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.4byte	0x330
	.4byte	0x890
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x8a0
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.byte	0x3
	.4byte	0x8c5
	.uleb128 0x1d
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x295
	.byte	0xb
	.4byte	0x714
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x29e
	.byte	0xb
	.4byte	0x859
	.byte	0
	.uleb128 0xa
	.4byte	0x148
	.4byte	0x8d5
	.uleb128 0xb
	.4byte	0x33
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0x1e
	.4byte	0x8eb
	.uleb128 0x16
	.4byte	0x497
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8e0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ba
	.uleb128 0x1e
	.4byte	0x902
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x908
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f7
	.uleb128 0xa
	.4byte	0x679
	.4byte	0x91e
	.uleb128 0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x32e
	.byte	0x17
	.4byte	0x497
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x32f
	.byte	0x1d
	.4byte	0x49d
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x5b
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x75
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0x9
	.byte	0x92
	.byte	0x6
	.4byte	0x981
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x190
	.byte	0x11
	.4byte	0x950
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x191
	.byte	0x11
	.4byte	0x950
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x7
	.byte	0x2
	.4byte	0x67
	.byte	0x8
	.2byte	0x19d
	.byte	0x6
	.4byte	0xaff
	.uleb128 0x23
	.4byte	.LASF134
	.2byte	0x280
	.uleb128 0x23
	.4byte	.LASF135
	.2byte	0x280
	.uleb128 0x23
	.4byte	.LASF136
	.2byte	0x281
	.uleb128 0x23
	.4byte	.LASF137
	.2byte	0x282
	.uleb128 0x23
	.4byte	.LASF138
	.2byte	0x284
	.uleb128 0x23
	.4byte	.LASF139
	.2byte	0x286
	.uleb128 0x23
	.4byte	.LASF140
	.2byte	0x291
	.uleb128 0x23
	.4byte	.LASF141
	.2byte	0x292
	.uleb128 0x23
	.4byte	.LASF142
	.2byte	0x293
	.uleb128 0x23
	.4byte	.LASF143
	.2byte	0x294
	.uleb128 0x23
	.4byte	.LASF144
	.2byte	0x295
	.uleb128 0x23
	.4byte	.LASF145
	.2byte	0x296
	.uleb128 0x23
	.4byte	.LASF146
	.2byte	0x298
	.uleb128 0x23
	.4byte	.LASF147
	.2byte	0x300
	.uleb128 0x23
	.4byte	.LASF148
	.2byte	0x305
	.uleb128 0x23
	.4byte	.LASF149
	.2byte	0x306
	.uleb128 0x23
	.4byte	.LASF150
	.2byte	0x307
	.uleb128 0x23
	.4byte	.LASF151
	.2byte	0x309
	.uleb128 0x23
	.4byte	.LASF152
	.2byte	0x309
	.uleb128 0x23
	.4byte	.LASF153
	.2byte	0x30b
	.uleb128 0x23
	.4byte	.LASF154
	.2byte	0x30c
	.uleb128 0x23
	.4byte	.LASF155
	.2byte	0x30e
	.uleb128 0x23
	.4byte	.LASF156
	.2byte	0x310
	.uleb128 0x23
	.4byte	.LASF157
	.2byte	0x311
	.uleb128 0x23
	.4byte	.LASF158
	.2byte	0x312
	.uleb128 0x23
	.4byte	.LASF159
	.2byte	0x316
	.uleb128 0x23
	.4byte	.LASF160
	.2byte	0x380
	.uleb128 0x23
	.4byte	.LASF161
	.2byte	0x381
	.uleb128 0x23
	.4byte	.LASF162
	.2byte	0x384
	.uleb128 0x23
	.4byte	.LASF163
	.2byte	0x385
	.uleb128 0x23
	.4byte	.LASF164
	.2byte	0x388
	.uleb128 0x23
	.4byte	.LASF165
	.2byte	0x38b
	.uleb128 0x23
	.4byte	.LASF166
	.2byte	0x38e
	.uleb128 0x23
	.4byte	.LASF167
	.2byte	0x391
	.uleb128 0x23
	.4byte	.LASF168
	.2byte	0x392
	.uleb128 0x23
	.4byte	.LASF169
	.2byte	0x393
	.uleb128 0x23
	.4byte	.LASF170
	.2byte	0x394
	.uleb128 0x23
	.4byte	.LASF171
	.2byte	0x395
	.uleb128 0x23
	.4byte	.LASF172
	.2byte	0x396
	.uleb128 0x23
	.4byte	.LASF173
	.2byte	0x397
	.uleb128 0x23
	.4byte	.LASF174
	.2byte	0x399
	.uleb128 0x23
	.4byte	.LASF175
	.2byte	0x399
	.uleb128 0x23
	.4byte	.LASF176
	.2byte	0x39b
	.uleb128 0x23
	.4byte	.LASF177
	.2byte	0x39c
	.uleb128 0x23
	.4byte	.LASF178
	.2byte	0x39d
	.uleb128 0x23
	.4byte	.LASF179
	.2byte	0x39d
	.uleb128 0x23
	.4byte	.LASF180
	.2byte	0x39e
	.uleb128 0x23
	.4byte	.LASF181
	.2byte	0x40f
	.byte	0
	.uleb128 0xa
	.4byte	0x938
	.4byte	0xb0f
	.uleb128 0xb
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF182
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0xaff
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_array
	.uleb128 0xa
	.4byte	0x944
	.4byte	0xb31
	.uleb128 0xb
	.4byte	0x33
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x1
	.byte	0x25
	.byte	0xa
	.4byte	0xb21
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_data
	.uleb128 0x24
	.4byte	.LASF184
	.byte	0x1
	.byte	0x27
	.byte	0x8
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	V33mV
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x2c
	.byte	0x1
	.4byte	0xb8b
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x86
	.byte	0x1c
	.4byte	0x2c
	.uleb128 0x27
	.4byte	.LASF185
	.byte	0x1
	.byte	0x87
	.byte	0x9
	.4byte	0x2c
	.uleb128 0x27
	.4byte	.LASF186
	.byte	0x1
	.byte	0x88
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF187
	.byte	0x1
	.byte	0x7e
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc2
	.uleb128 0x29
	.4byte	.LVL81
	.4byte	0x11a5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x42
	.byte	0x4a
	.byte	0x24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc11
	.uleb128 0x2b
	.4byte	.LVL79
	.4byte	0x11a5
	.4byte	0xbfb
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x29
	.4byte	.LVL80
	.4byte	0x11b2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF190
	.byte	0x1
	.byte	0x6f
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9b
	.uleb128 0x2d
	.4byte	.LASF189
	.byte	0x1
	.byte	0x70
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2e
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x71
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2f
	.4byte	0xb55
	.4byte	.LBI32
	.byte	.LVU126
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x70
	.byte	0x1c
	.uleb128 0x30
	.4byte	0xb66
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x32
	.4byte	0xb72
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x33
	.4byte	0xb7e
	.byte	0
	.uleb128 0x29
	.4byte	.LVL66
	.4byte	0xcd9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF191
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd9
	.uleb128 0x2d
	.4byte	.LASF192
	.byte	0x1
	.byte	0x6b
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x29
	.4byte	.LVL59
	.4byte	0xcd9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF193
	.byte	0x1
	.byte	0x62
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc6
	.uleb128 0x34
	.4byte	.LASF197
	.byte	0x1
	.byte	0x62
	.byte	0x19
	.4byte	0x2c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2d
	.4byte	.LASF194
	.byte	0x1
	.byte	0x63
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2e
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x64
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x35
	.4byte	0xdc6
	.4byte	.LBI18
	.byte	.LVU67
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x63
	.byte	0x13
	.4byte	0xd7c
	.uleb128 0x30
	.4byte	0xdd7
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x32
	.4byte	0xde3
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x36
	.4byte	0x114c
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x32
	.4byte	0xdf0
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0xdc6
	.4byte	.LBI24
	.byte	.LVU85
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x64
	.byte	0x12
	.uleb128 0x30
	.4byte	0xdd7
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x32
	.4byte	0xde3
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x36
	.4byte	0x114c
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x32
	.4byte	0xdf0
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF196
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x2c
	.byte	0x1
	.4byte	0xdfc
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x59
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x37
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	0x2c
	.uleb128 0x38
	.uleb128 0x37
	.ascii	"s\000"
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF198
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1116
	.uleb128 0x35
	.4byte	0x1116
	.4byte	.LBI12
	.byte	.LVU2
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0xfbd
	.uleb128 0x2b
	.4byte	.LVL0
	.4byte	0x11be
	.4byte	0xe3c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL1
	.4byte	0x11ca
	.4byte	0xe55
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0x11d7
	.4byte	0xe77
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40012440
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL3
	.4byte	0x11e4
	.4byte	0xe97
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL4
	.4byte	0x11f1
	.4byte	0xeb9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0x11fe
	.4byte	0xed9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0x120b
	.4byte	0xef8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0x1218
	.4byte	0xf11
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0x1225
	.4byte	0xf2a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0x1232
	.4byte	0xf43
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0x123f
	.4byte	0xf63
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0x124c
	.4byte	0xf7c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0x1259
	.4byte	0xf95
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL13
	.4byte	0x1266
	.4byte	0xfa8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x1272
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0x11a5
	.4byte	0xfe1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x42
	.byte	0x4a
	.byte	0x24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL16
	.4byte	0x127e
	.4byte	0xff5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0x128a
	.4byte	0x100e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0x1296
	.4byte	0x1022
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0x12a2
	.4byte	0x103b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL20
	.4byte	0x12ae
	.4byte	0x104f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0x12ba
	.4byte	0x1063
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL22
	.4byte	0x12c6
	.uleb128 0x39
	.4byte	.LVL23
	.4byte	0x12d2
	.uleb128 0x2b
	.4byte	.LVL24
	.4byte	0x12de
	.4byte	0x108e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL25
	.4byte	0x12ea
	.4byte	0x10b0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL26
	.4byte	0x12f6
	.4byte	0x10c9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL27
	.4byte	0x1302
	.4byte	0x10dd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0x130e
	.4byte	0x10f1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL29
	.4byte	0x131a
	.4byte	0x1105
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL30
	.4byte	0x1326
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF234
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.byte	0x1
	.uleb128 0x3b
	.4byte	0xdc6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1160
	.uleb128 0x30
	.4byte	0xdd7
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x32
	.4byte	0xde3
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x32
	.4byte	0xdf0
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0xb55
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a5
	.uleb128 0x30
	.4byte	0xb66
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x32
	.4byte	0xb72
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x33
	.4byte	0xb7e
	.byte	0
	.uleb128 0x29
	.4byte	.LVL83
	.4byte	0xcd9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xa
	.2byte	0x102
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xb
	.byte	0x4b
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xc
	.byte	0x2e
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xd
	.2byte	0x182
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xd
	.2byte	0x19a
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xd
	.2byte	0x189
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xd
	.2byte	0x19c
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xd
	.2byte	0x188
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xd
	.2byte	0x19e
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0xd
	.2byte	0x190
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xd
	.2byte	0x18b
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xd
	.2byte	0x18e
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xd
	.2byte	0x187
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xd
	.2byte	0x198
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xd
	.2byte	0x18f
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xe
	.byte	0x8b
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xe
	.byte	0x91
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xf
	.byte	0xb4
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x9
	.byte	0xb4
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xf
	.byte	0xb8
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x9
	.byte	0xa3
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x9
	.byte	0xa8
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0xf
	.byte	0xc3
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0xf
	.byte	0xbd
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xf
	.byte	0xbf
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xf
	.byte	0xbc
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xf
	.byte	0xbb
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xf
	.byte	0xc1
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x9
	.byte	0xbf
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xf
	.byte	0xc4
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xf
	.byte	0xb9
	.byte	0x6
	.uleb128 0x3e
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xf
	.byte	0xb1
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
.LVUS13:
	.uleb128 .LVU138
	.uleb128 .LVU146
.LLST13:
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU150
	.uleb128 .LVU151
.LLST14:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU126
	.uleb128 .LVU132
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU130
	.uleb128 .LVU132
.LLST16:
	.4byte	.LVL66
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU118
	.uleb128 .LVU120
.LLST12:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 0
.LLST3:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL58
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU84
	.uleb128 .LVU105
.LLST4:
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU97
	.uleb128 .LVU113
.LLST5:
	.4byte	.LVL47
	.4byte	.LVL57
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x3a
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU67
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU82
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU70
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU82
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU72
	.uleb128 .LVU77
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU85
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU97
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU97
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU90
	.uleb128 .LVU92
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST0:
	.4byte	.LVL31
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x7
	.byte	0x70
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU51
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU64
.LLST1:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU53
	.uleb128 .LVU58
.LLST2:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 0
.LLST17:
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU168
	.uleb128 0
.LLST18:
	.4byte	.LVL83
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"_dso_handle\000"
.LASF166:
	.ascii	"RCC_SPI2\000"
.LASF129:
	.ascii	"ADC_MODE_SCAN_INFINITE\000"
.LASF164:
	.ascii	"RCC_TIM14\000"
.LASF156:
	.ascii	"RCC_TIM15\000"
.LASF157:
	.ascii	"RCC_TIM16\000"
.LASF158:
	.ascii	"RCC_TIM17\000"
.LASF50:
	.ascii	"_size\000"
.LASF222:
	.ascii	"adc_enable_temperature_sensor\000"
.LASF94:
	.ascii	"_rand48\000"
.LASF181:
	.ascii	"RCC_RTC\000"
.LASF205:
	.ascii	"dma_set_memory_address\000"
.LASF74:
	.ascii	"_emergency\000"
.LASF162:
	.ascii	"RCC_TIM6\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF64:
	.ascii	"_data\000"
.LASF207:
	.ascii	"dma_set_number_of_data\000"
.LASF190:
	.ascii	"adc_get_resistance\000"
.LASF114:
	.ascii	"_wcrtomb_state\000"
.LASF115:
	.ascii	"_wcsrtombs_state\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF127:
	.ascii	"ADC_MODE_SEQUENTIAL\000"
.LASF54:
	.ascii	"_lbfsize\000"
.LASF215:
	.ascii	"nvic_set_priority\000"
.LASF121:
	.ascii	"__locale_t\000"
.LASF178:
	.ascii	"RCC_DAC\000"
.LASF112:
	.ascii	"_mbrtowc_state\000"
.LASF198:
	.ascii	"adc_setup\000"
.LASF175:
	.ascii	"RCC_CAN1\000"
.LASF195:
	.ascii	"adc_get_calibrated\000"
.LASF31:
	.ascii	"__tm_sec\000"
.LASF135:
	.ascii	"RCC_DMA1\000"
.LASF136:
	.ascii	"RCC_DMA2\000"
.LASF11:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF214:
	.ascii	"nvic_enable_irq\000"
.LASF60:
	.ascii	"_ubuf\000"
.LASF216:
	.ascii	"adc_power_off\000"
.LASF49:
	.ascii	"_base\000"
.LASF199:
	.ascii	"gpio_mode_setup\000"
.LASF33:
	.ascii	"__tm_hour\000"
.LASF184:
	.ascii	"V33mV\000"
.LASF89:
	.ascii	"__sf\000"
.LASF40:
	.ascii	"_on_exit_args\000"
.LASF229:
	.ascii	"adc_set_continuous_conversion_mode\000"
.LASF55:
	.ascii	"_cookie\000"
.LASF88:
	.ascii	"__sglue\000"
.LASF224:
	.ascii	"adc_set_sample_time_on_all_channels\000"
.LASF8:
	.ascii	"long int\000"
.LASF182:
	.ascii	"channel_array\000"
.LASF52:
	.ascii	"_flags\000"
.LASF44:
	.ascii	"_is_cxa\000"
.LASF70:
	.ascii	"_stdin\000"
.LASF62:
	.ascii	"_blksize\000"
.LASF183:
	.ascii	"channel_data\000"
.LASF125:
	.ascii	"uint16_t\000"
.LASF0:
	.ascii	"double\000"
.LASF84:
	.ascii	"_cvtbuf\000"
.LASF63:
	.ascii	"_offset\000"
.LASF133:
	.ascii	"rcc_periph_clken\000"
.LASF132:
	.ascii	"adc_opmode\000"
.LASF113:
	.ascii	"_mbsrtowcs_state\000"
.LASF111:
	.ascii	"_mbrlen_state\000"
.LASF41:
	.ascii	"_fnargs\000"
.LASF210:
	.ascii	"dma_disable_peripheral_increment_mode\000"
.LASF47:
	.ascii	"_fns\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF172:
	.ascii	"RCC_I2C2\000"
.LASF27:
	.ascii	"_sign\000"
.LASF22:
	.ascii	"_flock_t\000"
.LASF72:
	.ascii	"_stderr\000"
.LASF29:
	.ascii	"_Bigint\000"
.LASF102:
	.ascii	"_gamma_signgam\000"
.LASF56:
	.ascii	"_read\000"
.LASF80:
	.ascii	"_result_k\000"
.LASF188:
	.ascii	"adc_grab_channel1_and_set_to_zero\000"
.LASF30:
	.ascii	"__tm\000"
.LASF165:
	.ascii	"RCC_WWDG\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"__wchb\000"
.LASF221:
	.ascii	"adc_set_right_aligned\000"
.LASF71:
	.ascii	"_stdout\000"
.LASF83:
	.ascii	"_cvtlen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF53:
	.ascii	"_file\000"
.LASF203:
	.ascii	"dma_set_peripheral_address\000"
.LASF152:
	.ascii	"RCC_ADC1\000"
.LASF151:
	.ascii	"RCC_ADC\000"
.LASF92:
	.ascii	"_niobs\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF86:
	.ascii	"_atexit0\000"
.LASF155:
	.ascii	"RCC_USART1\000"
.LASF167:
	.ascii	"RCC_USART2\000"
.LASF109:
	.ascii	"_signal_buf\000"
.LASF100:
	.ascii	"_asctime_buf\000"
.LASF170:
	.ascii	"RCC_USART5\000"
.LASF148:
	.ascii	"RCC_USART6\000"
.LASF149:
	.ascii	"RCC_USART7\000"
.LASF150:
	.ascii	"RCC_USART8\000"
.LASF79:
	.ascii	"_result\000"
.LASF17:
	.ascii	"__wch\000"
.LASF185:
	.ascii	"value\000"
.LASF13:
	.ascii	"_LOCK_T\000"
.LASF16:
	.ascii	"wint_t\000"
.LASF187:
	.ascii	"adc_release_channel1\000"
.LASF65:
	.ascii	"_lock\000"
.LASF211:
	.ascii	"dma_set_priority\000"
.LASF67:
	.ascii	"_flags2\000"
.LASF204:
	.ascii	"dma_set_peripheral_size\000"
.LASF57:
	.ascii	"_write\000"
.LASF36:
	.ascii	"__tm_year\000"
.LASF139:
	.ascii	"RCC_CRC\000"
.LASF171:
	.ascii	"RCC_I2C1\000"
.LASF159:
	.ascii	"RCC_DBGMCU\000"
.LASF168:
	.ascii	"RCC_USART3\000"
.LASF169:
	.ascii	"RCC_USART4\000"
.LASF217:
	.ascii	"adc_set_clk_source\000"
.LASF230:
	.ascii	"adc_power_on\000"
.LASF213:
	.ascii	"dma_enable_circular_mode\000"
.LASF176:
	.ascii	"RCC_CRS\000"
.LASF117:
	.ascii	"_nextf\000"
.LASF177:
	.ascii	"RCC_PWR\000"
.LASF218:
	.ascii	"adc_calibrate\000"
.LASF189:
	.ascii	"ratio\000"
.LASF35:
	.ascii	"__tm_mon\000"
.LASF146:
	.ascii	"RCC_TSC\000"
.LASF45:
	.ascii	"_atexit\000"
.LASF128:
	.ascii	"ADC_MODE_SCAN\000"
.LASF77:
	.ascii	"__sdidinit\000"
.LASF14:
	.ascii	"_off_t\000"
.LASF179:
	.ascii	"RCC_DAC1\000"
.LASF231:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF192:
	.ascii	"curV\000"
.LASF131:
	.ascii	"rcc_apb1_frequency\000"
.LASF82:
	.ascii	"_freelist\000"
.LASF220:
	.ascii	"adc_disable_external_trigger_regular\000"
.LASF107:
	.ascii	"_wctomb_state\000"
.LASF206:
	.ascii	"dma_set_memory_size\000"
.LASF201:
	.ascii	"rcc_periph_clock_enable\000"
.LASF137:
	.ascii	"RCC_SRAM\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF85:
	.ascii	"_new\000"
.LASF134:
	.ascii	"RCC_DMA\000"
.LASF116:
	.ascii	"_h_errno\000"
.LASF4:
	.ascii	"short int\000"
.LASF38:
	.ascii	"__tm_yday\000"
.LASF219:
	.ascii	"adc_set_operation_mode\000"
.LASF48:
	.ascii	"__sbuf\000"
.LASF93:
	.ascii	"_iobs\000"
.LASF90:
	.ascii	"__FILE\000"
.LASF21:
	.ascii	"_mbstate_t\000"
.LASF160:
	.ascii	"RCC_TIM2\000"
.LASF51:
	.ascii	"__sFILE\000"
.LASF66:
	.ascii	"_mbstate\000"
.LASF103:
	.ascii	"_rand_next\000"
.LASF163:
	.ascii	"RCC_TIM7\000"
.LASF105:
	.ascii	"_mblen_state\000"
.LASF73:
	.ascii	"_inc\000"
.LASF46:
	.ascii	"_ind\000"
.LASF225:
	.ascii	"adc_set_regular_sequence\000"
.LASF76:
	.ascii	"_locale\000"
.LASF78:
	.ascii	"__cleanup\000"
.LASF75:
	.ascii	"_unspecified_locale_info\000"
.LASF233:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF26:
	.ascii	"_maxwds\000"
.LASF68:
	.ascii	"_reent\000"
.LASF194:
	.ascii	"vref\000"
.LASF95:
	.ascii	"_seed\000"
.LASF130:
	.ascii	"rcc_ahb_frequency\000"
.LASF19:
	.ascii	"__count\000"
.LASF120:
	.ascii	"__lock\000"
.LASF20:
	.ascii	"__value\000"
.LASF58:
	.ascii	"_seek\000"
.LASF122:
	.ascii	"_impure_ptr\000"
.LASF193:
	.ascii	"adc_get_voltage\000"
.LASF15:
	.ascii	"_fpos_t\000"
.LASF232:
	.ascii	"adc.c\000"
.LASF69:
	.ascii	"_errno\000"
.LASF23:
	.ascii	"char\000"
.LASF140:
	.ascii	"RCC_GPIOA\000"
.LASF32:
	.ascii	"__tm_min\000"
.LASF142:
	.ascii	"RCC_GPIOC\000"
.LASF143:
	.ascii	"RCC_GPIOD\000"
.LASF144:
	.ascii	"RCC_GPIOE\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF212:
	.ascii	"dma_enable_channel\000"
.LASF173:
	.ascii	"RCC_USB\000"
.LASF154:
	.ascii	"RCC_SPI1\000"
.LASF124:
	.ascii	"uint8_t\000"
.LASF96:
	.ascii	"_mult\000"
.LASF147:
	.ascii	"RCC_SYSCFG_COMP\000"
.LASF25:
	.ascii	"_next\000"
.LASF138:
	.ascii	"RCC_FLTIF\000"
.LASF99:
	.ascii	"_strtok_last\000"
.LASF196:
	.ascii	"adc_get_value\000"
.LASF43:
	.ascii	"_fntypes\000"
.LASF209:
	.ascii	"dma_enable_memory_increment_mode\000"
.LASF97:
	.ascii	"_add\000"
.LASF24:
	.ascii	"__ULong\000"
.LASF110:
	.ascii	"_getdate_err\000"
.LASF200:
	.ascii	"gpio_clear\000"
.LASF153:
	.ascii	"RCC_TIM1\000"
.LASF123:
	.ascii	"_global_impure_ptr\000"
.LASF161:
	.ascii	"RCC_TIM3\000"
.LASF126:
	.ascii	"uint32_t\000"
.LASF226:
	.ascii	"adc_set_resolution\000"
.LASF98:
	.ascii	"_unused_rand\000"
.LASF228:
	.ascii	"adc_enable_dma\000"
.LASF28:
	.ascii	"_wds\000"
.LASF37:
	.ascii	"__tm_wday\000"
.LASF91:
	.ascii	"_glue\000"
.LASF141:
	.ascii	"RCC_GPIOB\000"
.LASF118:
	.ascii	"_nmalloc\000"
.LASF108:
	.ascii	"_l64a_buf\000"
.LASF197:
	.ascii	"channel\000"
.LASF87:
	.ascii	"_sig_func\000"
.LASF145:
	.ascii	"RCC_GPIOF\000"
.LASF191:
	.ascii	"adc_get_current\000"
.LASF227:
	.ascii	"adc_disable_analog_watchdog\000"
.LASF208:
	.ascii	"dma_set_read_from_peripheral\000"
.LASF61:
	.ascii	"_nbuf\000"
.LASF119:
	.ascii	"_unused\000"
.LASF223:
	.ascii	"adc_enable_vrefint\000"
.LASF39:
	.ascii	"__tm_isdst\000"
.LASF101:
	.ascii	"_localtime_buf\000"
.LASF59:
	.ascii	"_close\000"
.LASF104:
	.ascii	"_r48\000"
.LASF202:
	.ascii	"dma_channel_reset\000"
.LASF106:
	.ascii	"_mbtowc_state\000"
.LASF81:
	.ascii	"_p5s\000"
.LASF174:
	.ascii	"RCC_CAN\000"
.LASF234:
	.ascii	"dma_setup\000"
.LASF180:
	.ascii	"RCC_CEC\000"
.LASF186:
	.ascii	"correction\000"
.LASF34:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
