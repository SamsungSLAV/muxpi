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
	.file	"handlers.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vApplicationMallocFailedHook,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vApplicationMallocFailedHook
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vApplicationMallocFailedHook, %function
vApplicationMallocFailedHook:
.LFB0:
	.file 1 "handlers.c"
	.loc 1 40 43 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 41 2 view .LVU1
	.loc 1 40 43 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 41 2 view .LVU3
	ldr	r0, .L4
	bl	xprintf
.LVL0:
.L2:
	.loc 1 42 5 is_stmt 1 discriminator 1 view .LVU4
	.loc 1 42 15 discriminator 1 view .LVU5
	.loc 1 42 5 discriminator 1 view .LVU6
	.loc 1 42 15 discriminator 1 view .LVU7
	b	.L2
.L5:
	.align	2
.L4:
	.word	.LC0
	.cfi_endproc
.LFE0:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.text.vApplicationIdleHook,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vApplicationIdleHook
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vApplicationIdleHook, %function
vApplicationIdleHook:
.LFB1:
	.loc 1 46 35 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 48 1 view .LVU9
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.text.vApplicationStackOverflowHook,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vApplicationStackOverflowHook
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vApplicationStackOverflowHook, %function
vApplicationStackOverflowHook:
.LVL1:
.LFB2:
	.loc 1 51 75 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 52 5 view .LVU11
	.loc 1 53 5 view .LVU12
	.loc 1 54 2 view .LVU13
	.loc 1 51 75 is_stmt 0 view .LVU14
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 54 2 view .LVU15
	ldr	r0, .L8
.LVL2:
	.loc 1 54 2 view .LVU16
	bl	xprintf
.LVL3:
	.loc 1 55 1 view .LVU17
	@ sp needed
	pop	{r4, pc}
.L9:
	.align	2
.L8:
	.word	.LC2
	.cfi_endproc
.LFE2:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.text.vApplicationTickHook,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vApplicationTickHook
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vApplicationTickHook, %function
vApplicationTickHook:
.LFB8:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE8:
	.size	vApplicationTickHook, .-vApplicationTickHook
	.section	.text.sv_call_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sv_call_handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sv_call_handler, %function
sv_call_handler:
.LFB4:
	.loc 1 61 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 7 view .LVU19
	.loc 1 61 28 is_stmt 0 view .LVU20
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 62 7 view .LVU21
	bl	SVC_Handler
.LVL4:
	.loc 1 63 1 view .LVU22
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE4:
	.size	sv_call_handler, .-sv_call_handler
	.section	.text.pend_sv_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pend_sv_handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	pend_sv_handler, %function
pend_sv_handler:
.LFB5:
	.loc 1 64 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 65 7 view .LVU24
	.loc 1 64 29 is_stmt 0 view .LVU25
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 65 7 view .LVU26
	bl	PendSV_Handler
.LVL5:
	.loc 1 66 1 view .LVU27
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE5:
	.size	pend_sv_handler, .-pend_sv_handler
	.section	.text.sys_tick_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	sys_tick_handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sys_tick_handler, %function
sys_tick_handler:
.LFB6:
	.loc 1 67 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 68 7 view .LVU29
	.loc 1 67 29 is_stmt 0 view .LVU30
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 68 7 view .LVU31
	bl	SysTick_Handler
.LVL6:
	.loc 1 69 1 view .LVU32
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE6:
	.size	sys_tick_handler, .-sys_tick_handler
	.section	.rodata.vApplicationMallocFailedHook.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Malloc fialed\012\000"
	.section	.rodata.vApplicationStackOverflowHook.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"Stack overflow: %s\012\000"
	.text
.Letext0:
	.file 2 "../FreeRTOS/Source/include/task.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1e3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x2
	.byte	0x3e
	.byte	0x25
	.4byte	0x77
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x6
	.4byte	.LASF25
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9
	.uleb128 0x8
	.4byte	.LVL6
	.4byte	0x1b6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9
	.uleb128 0x8
	.4byte	.LVL5
	.4byte	0x1c2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x1ce
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15c
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x33
	.byte	0x31
	.4byte	0x6b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x33
	.byte	0x3f
	.4byte	0x15c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0x25
	.4byte	0x141
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LVL3
	.4byte	0x1da
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x82
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a7
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0x25
	.4byte	0x193
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LVL0
	.4byte	0x1da
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x162
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.byte	0x2
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
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
.LASF7:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"vApplicationIdleHook\000"
.LASF14:
	.ascii	"pxTask\000"
.LASF10:
	.ascii	"sys_tick_handler\000"
.LASF22:
	.ascii	"handlers.c\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF19:
	.ascii	"PendSV_Handler\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF26:
	.ascii	"vApplicationTickHook\000"
.LASF12:
	.ascii	"sv_call_handler\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"char\000"
.LASF18:
	.ascii	"SysTick_Handler\000"
.LASF5:
	.ascii	"long int\000"
.LASF24:
	.ascii	"TaskHandle_t\000"
.LASF16:
	.ascii	"vApplicationMallocFailedHook\000"
.LASF21:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF1:
	.ascii	"signed char\000"
.LASF17:
	.ascii	"xprintf\000"
.LASF20:
	.ascii	"SVC_Handler\000"
.LASF25:
	.ascii	"tskTaskControlBlock\000"
.LASF15:
	.ascii	"pcTaskName\000"
.LASF23:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF13:
	.ascii	"vApplicationStackOverflowHook\000"
.LASF3:
	.ascii	"short int\000"
.LASF11:
	.ascii	"pend_sv_handler\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
