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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strtok_lite,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	strtok_lite
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	strtok_lite, %function
strtok_lite:
.LVL0:
.LFB0:
	.file 1 "misc.c"
	.loc 1 27 49 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 28 5 view .LVU1
	.loc 1 30 5 view .LVU2
	.loc 1 27 49 is_stmt 0 view .LVU3
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 31 17 view .LVU4
	ldr	r6, .L21
	.loc 1 30 8 view .LVU5
	cmp	r0, #0
	beq	.L17
	.loc 1 31 9 is_stmt 1 view .LVU6
	.loc 1 34 8 is_stmt 0 view .LVU7
	ldrb	r3, [r0]
	.loc 1 31 17 view .LVU8
	str	r0, [r6]
	.loc 1 34 5 is_stmt 1 view .LVU9
	.loc 1 34 8 is_stmt 0 view .LVU10
	cmp	r3, #0
	beq	.L11
.LVL1:
.L20:
	.loc 1 34 8 view .LVU11
	movs	r4, r0
	.loc 1 48 20 view .LVU12
	movs	r7, #0
.L10:
.LVL2:
	.loc 1 46 25 view .LVU13
	ldrb	r3, [r1]
	adds	r2, r4, #1
	mov	ip, r2
	.loc 1 46 9 view .LVU14
	movs	r2, r1
	cmp	r3, #0
	beq	.L6
.LVL3:
.L5:
	.loc 1 47 13 is_stmt 1 view .LVU15
	.loc 1 47 16 is_stmt 0 view .LVU16
	ldrb	r5, [r4]
	cmp	r5, r3
	beq	.L18
.L7:
	.loc 1 46 38 discriminator 2 view .LVU17
	adds	r2, r2, #1
.LVL4:
	.loc 1 46 25 discriminator 2 view .LVU18
	ldrb	r3, [r2]
	.loc 1 46 9 discriminator 2 view .LVU19
	cmp	r3, #0
	bne	.L5
.L6:
.LVL5:
	.loc 1 42 9 is_stmt 1 view .LVU20
	mov	r4, ip
.LVL6:
	.loc 1 42 12 is_stmt 0 view .LVU21
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L10
.LVL7:
.L15:
	.loc 1 42 12 view .LVU22
	str	r3, [r6]
.LVL8:
.L1:
	.loc 1 61 1 view .LVU23
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL9:
.L18:
	.loc 1 48 17 is_stmt 1 view .LVU24
	.loc 1 48 20 is_stmt 0 view .LVU25
	strb	r7, [r4]
	.loc 1 49 17 is_stmt 1 view .LVU26
	.loc 1 51 17 view .LVU27
	.loc 1 51 20 is_stmt 0 view .LVU28
	cmp	r0, r4
	beq	.L19
	mov	r3, ip
	b	.L15
.L19:
	.loc 1 52 21 is_stmt 1 view .LVU29
	.loc 1 52 24 is_stmt 0 view .LVU30
	adds	r0, r0, #1
.LVL10:
	.loc 1 53 21 is_stmt 1 view .LVU31
	b	.L7
.LVL11:
.L17:
	.loc 1 53 21 is_stmt 0 view .LVU32
	ldr	r0, [r6]
.LVL12:
	.loc 1 34 5 is_stmt 1 view .LVU33
	.loc 1 34 8 is_stmt 0 view .LVU34
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L20
.L11:
	.loc 1 35 15 view .LVU35
	movs	r0, #0
	b	.L1
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.cfi_endproc
.LFE0:
	.size	strtok_lite, .-strtok_lite
	.section	.text.str_split,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	str_split
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	str_split, %function
str_split:
.LVL13:
.LFB1:
	.loc 1 63 66 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 64 5 view .LVU37
	.loc 1 65 5 view .LVU38
	.loc 1 63 66 is_stmt 0 view .LVU39
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 63 66 view .LVU40
	movs	r6, r0
	movs	r5, r1
	movs	r0, r2
.LVL14:
	.loc 1 63 66 view .LVU41
	movs	r7, r3
	.loc 1 65 12 view .LVU42
	movs	r4, #0
	.loc 1 65 5 view .LVU43
	cmp	r1, #0
	bgt	.L25
	b	.L23
.LVL15:
.L31:
	.loc 1 65 32 discriminator 2 view .LVU44
	adds	r4, r4, #1
.LVL16:
	.loc 1 65 40 discriminator 2 view .LVU45
	movs	r0, #0
	.loc 1 65 5 discriminator 2 view .LVU46
	cmp	r5, r4
	beq	.L23
.LVL17:
.L25:
	.loc 1 66 9 is_stmt 1 view .LVU47
	.loc 1 66 24 is_stmt 0 view .LVU48
	movs	r1, r7
	bl	strtok_lite
.LVL18:
	.loc 1 66 22 view .LVU49
	lsls	r3, r4, #2
	str	r0, [r6, r3]
	.loc 1 66 12 view .LVU50
	cmp	r0, #0
	bne	.L31
.LVL19:
.L23:
	.loc 1 69 1 view .LVU51
	movs	r0, r4
	@ sp needed
.LVL20:
.LVL21:
.LVL22:
	.loc 1 69 1 view .LVU52
	pop	{r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE1:
	.size	str_split, .-str_split
	.section	.bss._buffer.4034,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_buffer.4034, %object
	.size	_buffer.4034, 4
_buffer.4034:
	.space	4
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x162
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0xc
	.4byte	.LASF7
	.4byte	.LASF8
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
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0
	.uleb128 0x5
	.ascii	"dst\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x16
	.4byte	0xc0
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3f
	.byte	0x1f
	.4byte	0x25
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x5
	.ascii	"src\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x2f
	.4byte	0xc6
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x3f
	.byte	0x3a
	.4byte	0xc6
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x8
	.4byte	.LVL18
	.4byte	0xd8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1b
	.byte	0x7
	.4byte	0xc6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f
	.uleb128 0x5
	.ascii	"str\000"
	.byte	0x1
	.byte	0x1b
	.byte	0x19
	.4byte	0xc6
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.4byte	.LASF9
	.byte	0x1
	.byte	0x1b
	.byte	0x2a
	.4byte	0x15f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xd
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1c
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x3
	.4byte	_buffer.4034
	.uleb128 0x7
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x26
	.byte	0xb
	.4byte	0xc6
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x1
	.byte	0x26
	.byte	0x1b
	.4byte	0xc6
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x7
	.ascii	"d\000"
	.byte	0x1
	.byte	0x27
	.byte	0x11
	.4byte	0x15f
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd3
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU49
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU39
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU51
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU13
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU32
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU13
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU32
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU32
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"strtok_lite\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"delim\000"
.LASF7:
	.ascii	"misc.c\000"
.LASF8:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF3:
	.ascii	"char\000"
.LASF1:
	.ascii	"maxcount\000"
.LASF6:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF10:
	.ascii	"_buffer\000"
.LASF2:
	.ascii	"tokens\000"
.LASF4:
	.ascii	"str_split\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
