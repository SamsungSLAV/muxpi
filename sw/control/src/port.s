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
	.file	"port.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.prvTaskExitError,"ax",%progbits
	.align	1
	.p2align 2,,3
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	prvTaskExitError, %function
prvTaskExitError:
.LFB1:
	.file 1 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c"
	.loc 1 114 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 115 1 view .LVU1
	.loc 1 115 19 is_stmt 0 view .LVU2
	movs	r3, #0
	.loc 1 114 1 view .LVU3
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 1 115 19 view .LVU4
	str	r3, [sp, #4]
	.loc 1 123 2 is_stmt 1 view .LVU5
	.loc 1 123 36 is_stmt 0 view .LVU6
	ldr	r3, .L8
	.loc 1 123 4 view .LVU7
	ldr	r3, [r3]
	adds	r3, r3, #1
	beq	.L2
	.loc 1 123 45 is_stmt 1 discriminator 1 view .LVU8
	.syntax divided
@ 123 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsid i 
@ 0 "" 2
	.thumb
	.syntax unified
.L3:
	.loc 1 123 90 discriminator 1 view .LVU9
	.loc 1 123 99 discriminator 1 view .LVU10
	.loc 1 123 90 discriminator 1 view .LVU11
	.loc 1 123 99 discriminator 1 view .LVU12
	b	.L3
.L2:
	.loc 1 123 102 discriminator 2 view .LVU13
	.loc 1 124 2 discriminator 2 view .LVU14
	.syntax divided
@ 124 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsid i 
@ 0 "" 2
	.loc 1 125 2 discriminator 2 view .LVU15
	.thumb
	.syntax unified
.L4:
	.loc 1 134 2 discriminator 1 view .LVU16
	.loc 1 125 17 is_stmt 0 discriminator 1 view .LVU17
	ldr	r3, [sp, #4]
	.loc 1 125 7 discriminator 1 view .LVU18
	cmp	r3, #0
	beq	.L4
	.loc 1 135 1 view .LVU19
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.cfi_endproc
.LFE1:
	.size	prvTaskExitError, .-prvTaskExitError
	.section	.text.vPortStartFirstTask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortStartFirstTask, %function
vPortStartFirstTask:
.LFB3:
	.loc 1 146 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 150 2 view .LVU21
	.syntax divided
@ 150 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
		.syntax unified				
	ldr  r2, pxCurrentTCBConst2	
	ldr  r3, [r2]				
	ldr  r0, [r3]				
	adds r0, #32					
	msr  psp, r0					
	movs r0, #2					
	msr  CONTROL, r0				
	isb							
	pop  {r0-r5}					
	mov  lr, r5					
	pop  {r3}					
	pop  {r2}					
	cpsie i						
	bx   r3						
								
	.align 4					
pxCurrentTCBConst2: .word pxCurrentTCB	  
@ 0 "" 2
	.loc 1 170 1 is_stmt 0 view .LVU22
	.thumb
	.syntax unified
	.cfi_endproc
.LFE3:
	.size	vPortStartFirstTask, .-vPortStartFirstTask
	.section	.text.pxPortInitialiseStack,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pxPortInitialiseStack
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	pxPortInitialiseStack, %function
pxPortInitialiseStack:
.LVL0:
.LFB0:
	.loc 1 96 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 99 2 view .LVU24
	.loc 1 100 2 view .LVU25
	.loc 1 96 1 is_stmt 0 view .LVU26
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 100 16 view .LVU27
	movs	r4, #128
	subs	r3, r0, #4
.LVL1:
	.loc 1 100 16 view .LVU28
	lsls	r4, r4, #17
	str	r4, [r3]
	.loc 1 101 2 is_stmt 1 view .LVU29
.LVL2:
	.loc 1 102 2 view .LVU30
	.loc 1 102 16 is_stmt 0 view .LVU31
	subs	r3, r3, #4
	str	r1, [r3]
	.loc 1 103 2 is_stmt 1 view .LVU32
.LVL3:
	.loc 1 104 2 view .LVU33
	.loc 1 104 16 is_stmt 0 view .LVU34
	ldr	r1, .L12
.LVL4:
	.loc 1 104 16 view .LVU35
	subs	r3, r3, #4
.LVL5:
	.loc 1 104 16 view .LVU36
	str	r1, [r3]
	.loc 1 105 2 is_stmt 1 view .LVU37
.LVL6:
	.loc 1 106 2 view .LVU38
	.loc 1 106 16 is_stmt 0 view .LVU39
	subs	r3, r3, #20
.LVL7:
	.loc 1 107 15 view .LVU40
	subs	r0, r0, #64
.LVL8:
	.loc 1 106 16 view .LVU41
	str	r2, [r3]
	.loc 1 107 2 is_stmt 1 view .LVU42
.LVL9:
	.loc 1 109 2 view .LVU43
	.loc 1 110 1 is_stmt 0 view .LVU44
	@ sp needed
	pop	{r4, pc}
.L13:
	.align	2
.L12:
	.word	prvTaskExitError
	.cfi_endproc
.LFE0:
	.size	pxPortInitialiseStack, .-pxPortInitialiseStack
	.section	.text.SVC_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	SVC_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
.LFB2:
	.loc 1 139 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 142 1 view .LVU46
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE2:
	.size	SVC_Handler, .-SVC_Handler
	.section	.text.xPortStartScheduler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	xPortStartScheduler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	xPortStartScheduler, %function
xPortStartScheduler:
.LFB4:
	.loc 1 177 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 179 2 view .LVU48
	.loc 1 179 43 is_stmt 0 view .LVU49
	movs	r2, #255
	ldr	r3, .L17
	lsls	r2, r2, #16
	ldr	r1, [r3]
	.loc 1 177 1 view .LVU50
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 179 43 view .LVU51
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 180 2 is_stmt 1 view .LVU52
	.loc 1 180 43 is_stmt 0 view .LVU53
	movs	r2, #255
.LBB6:
.LBB7:
	.loc 1 354 44 view .LVU54
	movs	r4, #0
.LBE7:
.LBE6:
	.loc 1 180 43 view .LVU55
	ldr	r1, [r3]
	lsls	r2, r2, #24
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 184 2 is_stmt 1 view .LVU56
.LBB10:
.LBI6:
	.loc 1 351 6 view .LVU57
.LBB8:
	.loc 1 354 2 view .LVU58
	.loc 1 354 44 is_stmt 0 view .LVU59
	ldr	r3, .L17+4
	.loc 1 355 44 view .LVU60
	ldr	r2, .L17+8
	.loc 1 354 44 view .LVU61
	str	r4, [r3]
	.loc 1 355 2 is_stmt 1 view .LVU62
	.loc 1 358 44 is_stmt 0 view .LVU63
	ldr	r1, .L17+12
	.loc 1 355 44 view .LVU64
	str	r4, [r2]
	.loc 1 358 2 is_stmt 1 view .LVU65
	.loc 1 358 44 is_stmt 0 view .LVU66
	ldr	r2, .L17+16
.LBE8:
.LBE10:
	.loc 1 177 1 view .LVU67
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB11:
.LBB9:
	.loc 1 358 44 view .LVU68
	str	r1, [r2]
	.loc 1 359 2 is_stmt 1 view .LVU69
	.loc 1 359 44 is_stmt 0 view .LVU70
	movs	r2, #7
	str	r2, [r3]
.LBE9:
.LBE11:
	.loc 1 187 2 is_stmt 1 view .LVU71
	.loc 1 187 20 is_stmt 0 view .LVU72
	ldr	r3, .L17+20
	str	r4, [r3]
	.loc 1 190 2 is_stmt 1 view .LVU73
	bl	vPortStartFirstTask
.LVL10:
	.loc 1 199 2 view .LVU74
.LBB12:
.LBI12:
	.loc 1 113 13 view .LVU75
.LBB13:
	.loc 1 115 1 view .LVU76
	.loc 1 115 19 is_stmt 0 view .LVU77
	str	r4, [sp, #4]
	.loc 1 123 2 is_stmt 1 view .LVU78
	.loc 1 123 45 view .LVU79
	.syntax divided
@ 123 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsid i 
@ 0 "" 2
	.thumb
	.syntax unified
.L16:
	.loc 1 123 90 view .LVU80
	.loc 1 123 99 view .LVU81
	.loc 1 123 90 view .LVU82
	.loc 1 123 99 view .LVU83
	b	.L16
.L18:
	.align	2
.L17:
	.word	-536810208
	.word	-536813552
	.word	-536813544
	.word	47999
	.word	-536813548
	.word	.LANCHOR0
.LBE13:
.LBE12:
	.cfi_endproc
.LFE4:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortEndScheduler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortEndScheduler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortEndScheduler, %function
vPortEndScheduler:
.LFB5:
	.loc 1 207 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 210 2 view .LVU85
	.loc 1 210 4 is_stmt 0 view .LVU86
	movs	r3, #250
	ldr	r2, .L22
	lsls	r3, r3, #2
	ldr	r2, [r2]
	cmp	r2, r3
	beq	.L19
	.loc 1 210 47 is_stmt 1 discriminator 1 view .LVU87
	.syntax divided
@ 210 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsid i 
@ 0 "" 2
	.thumb
	.syntax unified
.L21:
	.loc 1 210 92 discriminator 1 view .LVU88
	.loc 1 210 101 discriminator 1 view .LVU89
	.loc 1 210 92 discriminator 1 view .LVU90
	.loc 1 210 101 discriminator 1 view .LVU91
	b	.L21
.L19:
	.loc 1 211 1 is_stmt 0 view .LVU92
	@ sp needed
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.cfi_endproc
.LFE5:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.section	.text.vPortYield,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortYield
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortYield, %function
vPortYield:
.LFB6:
	.loc 1 215 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 217 2 view .LVU94
	.loc 1 217 45 is_stmt 0 view .LVU95
	movs	r2, #128
	ldr	r3, .L25
	lsls	r2, r2, #21
	str	r2, [r3]
	.loc 1 221 2 is_stmt 1 view .LVU96
	.syntax divided
@ 221 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	dsb
@ 0 "" 2
	.loc 1 222 2 view .LVU97
@ 222 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	isb
@ 0 "" 2
	.loc 1 223 1 is_stmt 0 view .LVU98
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
.L26:
	.align	2
.L25:
	.word	-536810236
	.cfi_endproc
.LFE6:
	.size	vPortYield, .-vPortYield
	.section	.text.vPortEnterCritical,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortEnterCritical
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortEnterCritical, %function
vPortEnterCritical:
.LFB7:
	.loc 1 227 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 228 5 view .LVU100
	.syntax divided
@ 228 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsid i 
@ 0 "" 2
	.loc 1 229 5 view .LVU101
	.loc 1 229 22 is_stmt 0 view .LVU102
	.thumb
	.syntax unified
	ldr	r2, .L28
	ldr	r3, [r2]
	adds	r3, r3, #1
	str	r3, [r2]
	.loc 1 230 2 is_stmt 1 view .LVU103
	.syntax divided
@ 230 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	dsb
@ 0 "" 2
	.loc 1 231 2 view .LVU104
@ 231 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	isb
@ 0 "" 2
	.loc 1 232 1 is_stmt 0 view .LVU105
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.cfi_endproc
.LFE7:
	.size	vPortEnterCritical, .-vPortEnterCritical
	.section	.text.vPortExitCritical,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortExitCritical
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vPortExitCritical, %function
vPortExitCritical:
.LFB8:
	.loc 1 236 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 237 2 view .LVU107
	.loc 1 237 28 is_stmt 0 view .LVU108
	ldr	r2, .L34
	ldr	r3, [r2]
	.loc 1 237 4 view .LVU109
	cmp	r3, #0
	bne	.L31
	.loc 1 237 37 is_stmt 1 discriminator 1 view .LVU110
	.syntax divided
@ 237 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsid i 
@ 0 "" 2
	.thumb
	.syntax unified
.L32:
	.loc 1 237 82 discriminator 1 view .LVU111
	.loc 1 237 91 discriminator 1 view .LVU112
	.loc 1 237 82 discriminator 1 view .LVU113
	.loc 1 237 91 discriminator 1 view .LVU114
	b	.L32
.L31:
	.loc 1 237 94 discriminator 2 view .LVU115
	.loc 1 238 5 discriminator 2 view .LVU116
	.loc 1 238 22 is_stmt 0 discriminator 2 view .LVU117
	subs	r3, r3, #1
	str	r3, [r2]
	.loc 1 239 5 is_stmt 1 discriminator 2 view .LVU118
	.loc 1 239 7 is_stmt 0 discriminator 2 view .LVU119
	cmp	r3, #0
	bne	.L30
	.loc 1 241 9 is_stmt 1 view .LVU120
	.syntax divided
@ 241 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 cpsie i 
@ 0 "" 2
	.thumb
	.syntax unified
.L30:
	.loc 1 243 1 is_stmt 0 view .LVU121
	@ sp needed
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LANCHOR0
	.cfi_endproc
.LFE8:
	.size	vPortExitCritical, .-vPortExitCritical
	.section	.text.ulSetInterruptMaskFromISR,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ulSetInterruptMaskFromISR
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ulSetInterruptMaskFromISR, %function
ulSetInterruptMaskFromISR:
.LFB9:
	.loc 1 247 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 248 2 view .LVU123
	.syntax divided
@ 248 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 mrs r0, PRIMASK	
 cpsid i			
 bx lr				  
@ 0 "" 2
	.loc 1 261 1 is_stmt 0 view .LVU124
	.thumb
	.syntax unified
	.cfi_endproc
.LFE9:
	.size	ulSetInterruptMaskFromISR, .-ulSetInterruptMaskFromISR
	.section	.text.vClearInterruptMaskFromISR,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vClearInterruptMaskFromISR
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vClearInterruptMaskFromISR, %function
vClearInterruptMaskFromISR:
.LVL11:
.LFB10:
	.loc 1 265 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 266 2 view .LVU126
	.syntax divided
@ 266 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
	 msr PRIMASK, r0	
 bx lr				  
@ 0 "" 2
	.loc 1 278 1 is_stmt 0 view .LVU127
	.thumb
	.syntax unified
	.cfi_endproc
.LFE10:
	.size	vClearInterruptMaskFromISR, .-vClearInterruptMaskFromISR
	.section	.text.PendSV_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	PendSV_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB11:
	.loc 1 282 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 285 2 view .LVU129
	.syntax divided
@ 285 "../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c" 1
		.syntax unified						
	mrs r0, psp							
										
	ldr	r3, pxCurrentTCBConst			
	ldr	r2, [r3]						
										
	subs r0, r0, #32					
	str r0, [r2]						
	stmia r0!, {r4-r7}					
 	mov r4, r8							
 	mov r5, r9							
 	mov r6, r10							
 	mov r7, r11							
 	stmia r0!, {r4-r7}					
										
	push {r3, r14}						
	cpsid i								
	bl vTaskSwitchContext				
	cpsie i								
	pop {r2, r3}						
										
	ldr r1, [r2]						
	ldr r0, [r1]						
	adds r0, r0, #16					
	ldmia r0!, {r4-r7}					
 	mov r8, r4							
 	mov r9, r5							
 	mov r10, r6							
 	mov r11, r7							
										
	msr psp, r0							
										
	subs r0, r0, #32					
 	ldmia r0!, {r4-r7}					
										
	bx r3								
										
	.align 4							
pxCurrentTCBConst: .word pxCurrentTCB	  
@ 0 "" 2
	.loc 1 327 1 is_stmt 0 view .LVU130
	.thumb
	.syntax unified
	.cfi_endproc
.LFE11:
	.size	PendSV_Handler, .-PendSV_Handler
	.section	.text.SysTick_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	SysTick_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB12:
	.loc 1 331 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 332 1 view .LVU132
	.loc 1 334 2 view .LVU133
	.loc 1 331 1 is_stmt 0 view .LVU134
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 334 19 view .LVU135
	bl	ulSetInterruptMaskFromISR
.LVL12:
	movs	r4, r0
.LVL13:
	.loc 1 337 3 is_stmt 1 view .LVU136
	.loc 1 337 7 is_stmt 0 view .LVU137
	bl	xTaskIncrementTick
.LVL14:
	.loc 1 337 5 view .LVU138
	cmp	r0, #0
	beq	.L40
	.loc 1 340 4 is_stmt 1 view .LVU139
	.loc 1 340 45 is_stmt 0 view .LVU140
	movs	r2, #128
	ldr	r3, .L44
	lsls	r2, r2, #21
	str	r2, [r3]
.L40:
	.loc 1 343 2 is_stmt 1 view .LVU141
	movs	r0, r4
	bl	vClearInterruptMaskFromISR
.LVL15:
	.loc 1 344 1 is_stmt 0 view .LVU142
	@ sp needed
.LVL16:
	.loc 1 344 1 view .LVU143
	pop	{r4, pc}
.L45:
	.align	2
.L44:
	.word	-536810236
	.cfi_endproc
.LFE12:
	.size	SysTick_Handler, .-SysTick_Handler
	.section	.data.uxCriticalNesting,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uxCriticalNesting, %object
	.size	uxCriticalNesting, 4
uxCriticalNesting:
	.word	-1431655766
	.text
.Letext0:
	.file 2 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../FreeRTOS/Source/include/projdefs.h"
	.file 5 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
	.file 6 "../FreeRTOS/Source/include/task.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0x20
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
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x62
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
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x56
	.uleb128 0x5
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x23
	.byte	0x10
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x7
	.4byte	0xa5
	.uleb128 0x8
	.4byte	0xa5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x5
	.byte	0x37
	.byte	0x12
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x38
	.byte	0xe
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x39
	.byte	0x17
	.4byte	0x62
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x3f
	.byte	0x13
	.4byte	0x77
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa7
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x58
	.byte	0x14
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x3
	.4byte	uxCriticalNesting
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x15f
	.byte	0x6
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x14a
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x14c
	.byte	0xa
	.4byte	0x77
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LVL12
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x2f3
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x162
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x119
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x108
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x108
	.byte	0x47
	.4byte	0x77
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf6
	.byte	0xa
	.4byte	0x77
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0xeb
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe2
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd6
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0xce
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb0
	.byte	0xc
	.4byte	0xb3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x248
	.uleb128 0x16
	.4byte	0xf6
	.4byte	.LBI6
	.byte	.LVU57
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb8
	.byte	0x2
	.uleb128 0x17
	.4byte	0x26c
	.4byte	.LBI12
	.byte	.LVU75
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0xc7
	.byte	0x2
	.4byte	0x23e
	.uleb128 0x18
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x19
	.4byte	0x279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0x248
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8a
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.byte	0x1
	.4byte	0x286
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.4byte	0x83
	.byte	0
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.4byte	0xde
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d7
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5f
	.byte	0x32
	.4byte	0xde
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5f
	.byte	0x4f
	.4byte	0x88
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5f
	.byte	0x5d
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1f
	.4byte	0x26c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f3
	.uleb128 0x19
	.4byte	0x279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x85d
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
.LVUS2:
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU143
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU43
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x70
	.sleb128 32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x73
	.sleb128 24
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
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
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"char\000"
.LASF18:
	.ascii	"vClearInterruptMaskFromISR\000"
.LASF21:
	.ascii	"vPortEnterCritical\000"
.LASF28:
	.ascii	"pxCode\000"
.LASF23:
	.ascii	"vPortEndScheduler\000"
.LASF15:
	.ascii	"TickType_t\000"
.LASF17:
	.ascii	"SysTick_Handler\000"
.LASF3:
	.ascii	"short int\000"
.LASF33:
	.ascii	"/home/a.malinowsk2/vcs/muxpi/sw/control/src\000"
.LASF39:
	.ascii	"prvTaskExitError\000"
.LASF11:
	.ascii	"TaskFunction_t\000"
.LASF38:
	.ascii	"vPortStartFirstTask\000"
.LASF26:
	.ascii	"pxPortInitialiseStack\000"
.LASF40:
	.ascii	"ulDummy\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"ulPreviousMask\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF35:
	.ascii	"prvSetupTimerInterrupt\000"
.LASF41:
	.ascii	"xTaskIncrementTick\000"
.LASF12:
	.ascii	"StackType_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF34:
	.ascii	"uxCriticalNesting\000"
.LASF37:
	.ascii	"ulSetInterruptMaskFromISR\000"
.LASF7:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"SVC_Handler\000"
.LASF30:
	.ascii	"pvParameters\000"
.LASF31:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -mthumb -mcpu=cortex-m0 -mfloat-abi=so"
	.ascii	"ft -march=armv6s-m -g -O2 -std=c99 -fno-common -ffu"
	.ascii	"nction-sections -fdata-sections\000"
.LASF27:
	.ascii	"pxTopOfStack\000"
.LASF19:
	.ascii	"PendSV_Handler\000"
.LASF22:
	.ascii	"vPortYield\000"
.LASF20:
	.ascii	"vPortExitCritical\000"
.LASF32:
	.ascii	"../FreeRTOS/Source/portable/GCC/ARM_CM0/port.c\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF5:
	.ascii	"long int\000"
.LASF29:
	.ascii	"ulMask\000"
.LASF1:
	.ascii	"signed char\000"
.LASF25:
	.ascii	"xPortStartScheduler\000"
.LASF14:
	.ascii	"UBaseType_t\000"
.LASF13:
	.ascii	"BaseType_t\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
