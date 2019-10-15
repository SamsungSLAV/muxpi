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
	.file	"heap_1.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pvPortMalloc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pvPortMalloc
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	pvPortMalloc, %function
pvPortMalloc:
.LVL0:
.LFB0:
	.file 1 "../FreeRTOS/Source/MemMang/heap_1.c"
	.loc 1 70 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 71 1 view .LVU1
	.loc 1 72 1 view .LVU2
	.loc 1 77 3 view .LVU3
	.loc 1 77 19 is_stmt 0 view .LVU4
	movs	r3, #7
	.loc 1 70 1 view .LVU5
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 70 1 view .LVU6
	movs	r4, r0
	.loc 1 77 5 view .LVU7
	tst	r3, r0
	beq	.L2
	.loc 1 80 4 is_stmt 1 view .LVU8
	.loc 1 80 16 is_stmt 0 view .LVU9
	bics	r4, r3
	adds	r4, r4, #8
.LVL1:
.L2:
	.loc 1 85 2 is_stmt 1 view .LVU10
	bl	vTaskSuspendAll
.LVL2:
	.loc 1 87 3 view .LVU11
	.loc 1 87 22 is_stmt 0 view .LVU12
	ldr	r2, .L14
	.loc 1 87 5 view .LVU13
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L12
.L3:
	.loc 1 94 3 is_stmt 1 view .LVU14
	.loc 1 94 25 is_stmt 0 view .LVU15
	ldr	r1, .L14+4
	.loc 1 94 5 view .LVU16
	ldr	r0, .L14+8
	.loc 1 94 25 view .LVU17
	ldr	r3, [r1]
	adds	r4, r3, r4
.LVL3:
	.loc 1 94 5 view .LVU18
	cmp	r4, r0
	bhi	.L6
	.loc 1 94 77 discriminator 1 view .LVU19
	cmp	r3, r4
	bcc	.L13
.L6:
	.loc 1 103 3 is_stmt 1 view .LVU20
	.loc 1 105 2 view .LVU21
	.loc 1 105 11 is_stmt 0 view .LVU22
	bl	xTaskResumeAll
.LVL4:
	.loc 1 109 3 is_stmt 1 view .LVU23
.L5:
.LBB2:
	.loc 1 111 4 view .LVU24
	.loc 1 112 4 view .LVU25
	bl	vApplicationMallocFailedHook
.LVL5:
	movs	r5, #0
.LBE2:
	.loc 1 117 2 view .LVU26
.L1:
	.loc 1 118 1 is_stmt 0 view .LVU27
	movs	r0, r5
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL6:
.L13:
	.loc 1 99 4 is_stmt 1 view .LVU28
	.loc 1 99 13 is_stmt 0 view .LVU29
	ldr	r5, [r2]
	.loc 1 100 18 view .LVU30
	str	r4, [r1]
	.loc 1 99 13 view .LVU31
	adds	r5, r5, r3
.LVL7:
	.loc 1 100 4 is_stmt 1 view .LVU32
	.loc 1 103 3 view .LVU33
	.loc 1 105 2 view .LVU34
	.loc 1 105 11 is_stmt 0 view .LVU35
	bl	xTaskResumeAll
.LVL8:
	.loc 1 109 3 is_stmt 1 view .LVU36
	.loc 1 109 5 is_stmt 0 view .LVU37
	cmp	r5, #0
	bne	.L1
	b	.L5
.LVL9:
.L12:
	.loc 1 90 4 is_stmt 1 view .LVU38
	.loc 1 90 67 is_stmt 0 view .LVU39
	movs	r1, #7
	ldr	r3, .L14+12
	bics	r3, r1
	.loc 1 90 19 view .LVU40
	str	r3, [r2]
	b	.L3
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	2039
	.word	ucHeap+8
	.cfi_endproc
.LFE0:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.vPortFree,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortFree
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortFree, %function
vPortFree:
.LVL10:
.LFB1:
	.loc 1 122 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 126 2 view .LVU42
	.loc 1 129 2 view .LVU43
	.loc 1 129 4 is_stmt 0 view .LVU44
	cmp	r0, #0
	beq	.L16
	.loc 1 129 12 is_stmt 1 discriminator 1 view .LVU45
	.syntax divided
@ 129 "../FreeRTOS/Source/MemMang/heap_1.c" 1
	 cpsid i 
@ 0 "" 2
	.thumb
	.syntax unified
.L18:
	.loc 1 129 57 discriminator 1 view .LVU46
	.loc 1 129 66 discriminator 1 view .LVU47
	.loc 1 129 57 discriminator 1 view .LVU48
	.loc 1 129 66 discriminator 1 view .LVU49
	b	.L18
.L16:
	.loc 1 130 1 is_stmt 0 view .LVU50
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1:
	.size	vPortFree, .-vPortFree
	.section	.text.vPortInitialiseBlocks,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortInitialiseBlocks
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortInitialiseBlocks, %function
vPortInitialiseBlocks:
.LFB2:
	.loc 1 134 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 136 2 view .LVU52
	.loc 1 136 16 is_stmt 0 view .LVU53
	movs	r2, #0
	ldr	r3, .L20
	.loc 1 137 1 view .LVU54
	@ sp needed
	.loc 1 136 16 view .LVU55
	str	r2, [r3]
	.loc 1 137 1 view .LVU56
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR1
	.cfi_endproc
.LFE2:
	.size	vPortInitialiseBlocks, .-vPortInitialiseBlocks
	.section	.text.xPortGetFreeHeapSize,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	xPortGetFreeHeapSize
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	xPortGetFreeHeapSize, %function
xPortGetFreeHeapSize:
.LFB3:
	.loc 1 141 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 142 2 view .LVU58
	.loc 1 142 43 is_stmt 0 view .LVU59
	movs	r0, #255
	ldr	r3, .L23
	lsls	r0, r0, #3
	ldr	r3, [r3]
	.loc 1 143 1 view .LVU60
	@ sp needed
	.loc 1 142 43 view .LVU61
	subs	r0, r0, r3
	.loc 1 143 1 view .LVU62
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR1
	.cfi_endproc
.LFE3:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.bss.pucAlignedHeap.4872,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pucAlignedHeap.4872, %object
	.size	pucAlignedHeap.4872, 4
pucAlignedHeap.4872:
	.space	4
	.section	.bss.ucHeap,"aw",%nobits
	.align	2
	.type	ucHeap, %object
	.size	ucHeap, 2048
ucHeap:
	.space	2048
	.section	.bss.xNextFreeByte,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	xNextFreeByte, %object
	.size	xNextFreeByte, 4
xNextFreeByte:
	.space	4
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h"
	.file 5 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "../FreeRTOS/Source/include/task.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa82
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0xc
	.4byte	.LASF133
	.4byte	.LASF134
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x22
	.byte	0x19
	.4byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF119
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x67
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x67
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x31
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xed
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xbe
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xed
	.byte	0
	.uleb128 0xa
	.4byte	0x52
	.4byte	0xfd
	.uleb128 0xb
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x121
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0xfd
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x11
	.4byte	0x8f
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x141
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xf
	.4byte	0x141
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x7a
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1b3
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1b3
	.byte	0
	.uleb128 0x11
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x38
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x38
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x38
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x38
	.byte	0x10
	.uleb128 0x11
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1b9
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x159
	.uleb128 0xa
	.4byte	0x14d
	.4byte	0x1c9
	.uleb128 0xb
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x24c
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x38
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x38
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x38
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x38
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x38
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x38
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x38
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x38
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x291
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x291
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x291
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x14d
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x14d
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x139
	.4byte	0x2a1
	.uleb128 0xb
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.byte	0x8
	.4byte	0x2e4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0x5e
	.byte	0x12
	.4byte	0x2e4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5f
	.byte	0x6
	.4byte	0x38
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.byte	0x61
	.byte	0x9
	.4byte	0x2ea
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.byte	0x62
	.byte	0x1e
	.4byte	0x24c
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a1
	.uleb128 0xa
	.4byte	0x2fa
	.4byte	0x2fa
	.uleb128 0xb
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x300
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x329
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x329
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x38
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x52
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x472
	.uleb128 0x11
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x329
	.byte	0
	.uleb128 0x11
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x38
	.byte	0x4
	.uleb128 0x11
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x38
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x11
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x301
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x38
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x139
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x5e4
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x60e
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x632
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x64c
	.byte	0x2c
	.uleb128 0x11
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x301
	.byte	0x30
	.uleb128 0x11
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x329
	.byte	0x38
	.uleb128 0x11
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x38
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x652
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x662
	.byte	0x43
	.uleb128 0x11
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x301
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x38
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa6
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0xde
	.byte	0x12
	.4byte	0x490
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x12d
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x121
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x38
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.4byte	0x38
	.4byte	0x490
	.uleb128 0x16
	.4byte	0x490
	.uleb128 0x16
	.4byte	0x139
	.uleb128 0x16
	.4byte	0x13b
	.uleb128 0x16
	.4byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x49b
	.uleb128 0xf
	.4byte	0x490
	.uleb128 0x17
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.byte	0x8
	.4byte	0x5e4
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x262
	.byte	0x7
	.4byte	0x38
	.byte	0
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x267
	.byte	0xb
	.4byte	0x6be
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.byte	0x14
	.4byte	0x6be
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.byte	0x1e
	.4byte	0x6be
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x269
	.byte	0x7
	.4byte	0x38
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26a
	.byte	0x8
	.4byte	0x8be
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26d
	.byte	0x7
	.4byte	0x38
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26e
	.byte	0x16
	.4byte	0x8d3
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x270
	.byte	0x7
	.4byte	0x38
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x272
	.byte	0xa
	.4byte	0x8e4
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x275
	.byte	0x13
	.4byte	0x1b3
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x276
	.byte	0x7
	.4byte	0x38
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x277
	.byte	0x13
	.4byte	0x1b3
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x278
	.byte	0x14
	.4byte	0x8ea
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x38
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.byte	0x9
	.4byte	0x13b
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x29f
	.byte	0x7
	.4byte	0x899
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2a3
	.byte	0x13
	.4byte	0x2e4
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a4
	.byte	0x12
	.4byte	0x2a1
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a8
	.byte	0xc
	.4byte	0x8fb
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2ad
	.byte	0x10
	.4byte	0x67f
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2af
	.byte	0xa
	.4byte	0x907
	.2byte	0x2ec
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x472
	.uleb128 0x15
	.4byte	0x38
	.4byte	0x608
	.uleb128 0x16
	.4byte	0x490
	.uleb128 0x16
	.4byte	0x139
	.uleb128 0x16
	.4byte	0x608
	.uleb128 0x16
	.4byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x148
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x15
	.4byte	0xb2
	.4byte	0x632
	.uleb128 0x16
	.4byte	0x490
	.uleb128 0x16
	.4byte	0x139
	.uleb128 0x16
	.4byte	0xb2
	.uleb128 0x16
	.4byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x614
	.uleb128 0x15
	.4byte	0x38
	.4byte	0x64c
	.uleb128 0x16
	.4byte	0x490
	.uleb128 0x16
	.4byte	0x139
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x638
	.uleb128 0xa
	.4byte	0x52
	.4byte	0x662
	.uleb128 0xb
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x52
	.4byte	0x672
	.uleb128 0xb
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x32f
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x6b8
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x6b8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x38
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x6be
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x672
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x6fd
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x6fd
	.byte	0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x6fd
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x60
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x60
	.4byte	0x70d
	.uleb128 0xb
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x822
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x282
	.byte	0x18
	.4byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x283
	.byte	0x12
	.4byte	0x13b
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x284
	.byte	0x10
	.4byte	0x822
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x285
	.byte	0x17
	.4byte	0x1c9
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x286
	.byte	0xf
	.4byte	0x38
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x287
	.byte	0x2c
	.4byte	0x88
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x288
	.byte	0x1a
	.4byte	0x6c4
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x289
	.byte	0x16
	.4byte	0x121
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28a
	.byte	0x16
	.4byte	0x121
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28b
	.byte	0x16
	.4byte	0x121
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28c
	.byte	0x10
	.4byte	0x832
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28d
	.byte	0x10
	.4byte	0x842
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28e
	.byte	0xf
	.4byte	0x38
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x121
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x121
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x291
	.byte	0x16
	.4byte	0x121
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x292
	.byte	0x16
	.4byte	0x121
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x293
	.byte	0x16
	.4byte	0x121
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x294
	.byte	0x8
	.4byte	0x38
	.byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	0x141
	.4byte	0x832
	.uleb128 0xb
	.4byte	0x31
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x141
	.4byte	0x842
	.uleb128 0xb
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x141
	.4byte	0x852
	.uleb128 0xb
	.4byte	0x31
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.byte	0x7
	.4byte	0x879
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x29c
	.byte	0x1b
	.4byte	0x879
	.byte	0
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x29d
	.byte	0x18
	.4byte	0x889
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.4byte	0x329
	.4byte	0x889
	.uleb128 0xb
	.4byte	0x31
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x31
	.4byte	0x899
	.uleb128 0xb
	.4byte	0x31
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.byte	0x3
	.4byte	0x8be
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x295
	.byte	0xb
	.4byte	0x70d
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x29e
	.byte	0xb
	.4byte	0x852
	.byte	0
	.uleb128 0xa
	.4byte	0x141
	.4byte	0x8ce
	.uleb128 0xb
	.4byte	0x31
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8ce
	.uleb128 0x1e
	.4byte	0x8e4
	.uleb128 0x16
	.4byte	0x490
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b3
	.uleb128 0x1e
	.4byte	0x8fb
	.uleb128 0x16
	.4byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x901
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f0
	.uleb128 0xa
	.4byte	0x672
	.4byte	0x917
	.uleb128 0xb
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x32e
	.byte	0x17
	.4byte	0x490
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x32f
	.byte	0x1d
	.4byte	0x496
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x931
	.uleb128 0xa
	.4byte	0x931
	.4byte	0x960
	.uleb128 0x20
	.4byte	0x31
	.2byte	0x7ff
	.byte	0
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0x94f
	.uleb128 0x5
	.byte	0x3
	.4byte	ucHeap
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x41
	.byte	0xf
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	xNextFreeByte
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x8c
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF137
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d0
	.uleb128 0x25
	.ascii	"pv\000"
	.byte	0x1
	.byte	0x79
	.byte	0x17
	.4byte	0x139
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0x45
	.byte	0x7
	.4byte	0x139
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5f
	.uleb128 0x27
	.4byte	.LASF139
	.byte	0x1
	.byte	0x45
	.byte	0x1c
	.4byte	0x25
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x28
	.4byte	.LASF127
	.byte	0x1
	.byte	0x47
	.byte	0x7
	.4byte	0x139
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0x949
	.uleb128 0x5
	.byte	0x3
	.4byte	pucAlignedHeap.4872
	.uleb128 0x29
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xa43
	.uleb128 0x2a
	.4byte	.LASF129
	.byte	0x1
	.byte	0x6f
	.byte	0x10
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xa5f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0xa6b
	.uleb128 0x2b
	.4byte	.LVL4
	.4byte	0xa78
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0xa78
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x1
	.byte	0x6f
	.byte	0x10
	.uleb128 0x2d
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x4fa
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x530
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU18
	.uleb128 .LVU38
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU24
	.uleb128 .LVU28
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"_dso_handle\000"
.LASF49:
	.ascii	"_size\000"
.LASF2:
	.ascii	"size_t\000"
.LASF93:
	.ascii	"_rand48\000"
.LASF73:
	.ascii	"_emergency\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF63:
	.ascii	"_data\000"
.LASF113:
	.ascii	"_wcrtomb_state\000"
.LASF114:
	.ascii	"_wcsrtombs_state\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF53:
	.ascii	"_lbfsize\000"
.LASF120:
	.ascii	"__locale_t\000"
.LASF111:
	.ascii	"_mbrtowc_state\000"
.LASF30:
	.ascii	"__tm_sec\000"
.LASF10:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"_ubuf\000"
.LASF48:
	.ascii	"_base\000"
.LASF32:
	.ascii	"__tm_hour\000"
.LASF88:
	.ascii	"__sf\000"
.LASF39:
	.ascii	"_on_exit_args\000"
.LASF54:
	.ascii	"_cookie\000"
.LASF87:
	.ascii	"__sglue\000"
.LASF7:
	.ascii	"long int\000"
.LASF51:
	.ascii	"_flags\000"
.LASF43:
	.ascii	"_is_cxa\000"
.LASF69:
	.ascii	"_stdin\000"
.LASF61:
	.ascii	"_blksize\000"
.LASF126:
	.ascii	"xNextFreeByte\000"
.LASF83:
	.ascii	"_cvtbuf\000"
.LASF62:
	.ascii	"_offset\000"
.LASF131:
	.ascii	"xTaskResumeAll\000"
.LASF112:
	.ascii	"_mbsrtowcs_state\000"
.LASF110:
	.ascii	"_mbrlen_state\000"
.LASF40:
	.ascii	"_fnargs\000"
.LASF46:
	.ascii	"_fns\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"_sign\000"
.LASF138:
	.ascii	"pvPortMalloc\000"
.LASF21:
	.ascii	"_flock_t\000"
.LASF71:
	.ascii	"_stderr\000"
.LASF28:
	.ascii	"_Bigint\000"
.LASF101:
	.ascii	"_gamma_signgam\000"
.LASF55:
	.ascii	"_read\000"
.LASF79:
	.ascii	"_result_k\000"
.LASF29:
	.ascii	"__tm\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"__wchb\000"
.LASF70:
	.ascii	"_stdout\000"
.LASF82:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF52:
	.ascii	"_file\000"
.LASF139:
	.ascii	"xWantedSize\000"
.LASF91:
	.ascii	"_niobs\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF85:
	.ascii	"_atexit0\000"
.LASF108:
	.ascii	"_signal_buf\000"
.LASF99:
	.ascii	"_asctime_buf\000"
.LASF78:
	.ascii	"_result\000"
.LASF16:
	.ascii	"__wch\000"
.LASF12:
	.ascii	"_LOCK_T\000"
.LASF15:
	.ascii	"wint_t\000"
.LASF64:
	.ascii	"_lock\000"
.LASF66:
	.ascii	"_flags2\000"
.LASF56:
	.ascii	"_write\000"
.LASF35:
	.ascii	"__tm_year\000"
.LASF137:
	.ascii	"vPortFree\000"
.LASF116:
	.ascii	"_nextf\000"
.LASF128:
	.ascii	"pucAlignedHeap\000"
.LASF34:
	.ascii	"__tm_mon\000"
.LASF125:
	.ascii	"ucHeap\000"
.LASF44:
	.ascii	"_atexit\000"
.LASF76:
	.ascii	"__sdidinit\000"
.LASF13:
	.ascii	"_off_t\000"
.LASF132:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF81:
	.ascii	"_freelist\000"
.LASF127:
	.ascii	"pvReturn\000"
.LASF106:
	.ascii	"_wctomb_state\000"
.LASF130:
	.ascii	"vTaskSuspendAll\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF135:
	.ascii	"xPortGetFreeHeapSize\000"
.LASF84:
	.ascii	"_new\000"
.LASF115:
	.ascii	"_h_errno\000"
.LASF5:
	.ascii	"short int\000"
.LASF37:
	.ascii	"__tm_yday\000"
.LASF47:
	.ascii	"__sbuf\000"
.LASF92:
	.ascii	"_iobs\000"
.LASF89:
	.ascii	"__FILE\000"
.LASF20:
	.ascii	"_mbstate_t\000"
.LASF50:
	.ascii	"__sFILE\000"
.LASF133:
	.ascii	"../FreeRTOS/Source/MemMang/heap_1.c\000"
.LASF65:
	.ascii	"_mbstate\000"
.LASF102:
	.ascii	"_rand_next\000"
.LASF136:
	.ascii	"vPortInitialiseBlocks\000"
.LASF104:
	.ascii	"_mblen_state\000"
.LASF72:
	.ascii	"_inc\000"
.LASF45:
	.ascii	"_ind\000"
.LASF75:
	.ascii	"_locale\000"
.LASF77:
	.ascii	"__cleanup\000"
.LASF74:
	.ascii	"_unspecified_locale_info\000"
.LASF134:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF25:
	.ascii	"_maxwds\000"
.LASF67:
	.ascii	"_reent\000"
.LASF94:
	.ascii	"_seed\000"
.LASF18:
	.ascii	"__count\000"
.LASF119:
	.ascii	"__lock\000"
.LASF19:
	.ascii	"__value\000"
.LASF57:
	.ascii	"_seek\000"
.LASF121:
	.ascii	"_impure_ptr\000"
.LASF14:
	.ascii	"_fpos_t\000"
.LASF68:
	.ascii	"_errno\000"
.LASF22:
	.ascii	"char\000"
.LASF31:
	.ascii	"__tm_min\000"
.LASF123:
	.ascii	"uint8_t\000"
.LASF95:
	.ascii	"_mult\000"
.LASF24:
	.ascii	"_next\000"
.LASF98:
	.ascii	"_strtok_last\000"
.LASF42:
	.ascii	"_fntypes\000"
.LASF96:
	.ascii	"_add\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF109:
	.ascii	"_getdate_err\000"
.LASF122:
	.ascii	"_global_impure_ptr\000"
.LASF124:
	.ascii	"uint32_t\000"
.LASF97:
	.ascii	"_unused_rand\000"
.LASF27:
	.ascii	"_wds\000"
.LASF36:
	.ascii	"__tm_wday\000"
.LASF90:
	.ascii	"_glue\000"
.LASF117:
	.ascii	"_nmalloc\000"
.LASF107:
	.ascii	"_l64a_buf\000"
.LASF86:
	.ascii	"_sig_func\000"
.LASF60:
	.ascii	"_nbuf\000"
.LASF118:
	.ascii	"_unused\000"
.LASF38:
	.ascii	"__tm_isdst\000"
.LASF100:
	.ascii	"_localtime_buf\000"
.LASF58:
	.ascii	"_close\000"
.LASF103:
	.ascii	"_r48\000"
.LASF129:
	.ascii	"vApplicationMallocFailedHook\000"
.LASF105:
	.ascii	"_mbtowc_state\000"
.LASF80:
	.ascii	"_p5s\000"
.LASF33:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
