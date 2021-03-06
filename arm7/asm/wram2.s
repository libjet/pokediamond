	.include "asm/macros.inc"
	.include "global.inc"

	.section .text

	arm_func_start FUN_03805A48
FUN_03805A48: ;@ 0x03805A48
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r4, r3
	bl	RTCi_GpioStart
	mov	r0, r7
	mov	r1, r6
	bl	RTCi_GpioSendCommand
	cmp	r7, #6
	beq	_03805A90
	cmp	r7, #134	;@ 0x86
	bne	_03805A9C
	mov	r0, r5
	mov	r1, r4
	bl	RTCi_GpioReceiveData
	b	_03805A9C
_03805A90:
	mov	r0, r5
	mov	r1, r4
	bl	RTCi_GpioSendData
_03805A9C:
	bl	RTCi_GpioEnd
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr

	arm_func_start FUN_03805AAC
FUN_03805AAC: ;@ 0x03805AAC
	ldr	r2, [r0]
	mov	r1, r2, lsl #18
	mov	r3, r1, lsr #26
	cmp	r3, #35	;@ 0x23
	addls	pc, pc, r3, lsl #2
	b	_03805BA8
	b	_03805B54
	b	_03805B54
	b	_03805B54
	b	_03805B54
	b	_03805B54
	b	_03805B54
	b	_03805B54
	b	_03805B54
	b	_03805B78
	b	_03805B78
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805B54
	b	_03805B54
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805BA8
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
	b	_03805B9C
_03805B54:
	mov	r1, r2, lsl #17
	movs	r1, r1, lsr #31
	bxeq	lr
	bic	r2, r2, #16128	;@ 0x3f00
	add	r1, r3, #18
	and	r1, r1, #63	;@ 0x3f
	orr	r1, r2, r1, lsl #8
	str	r1, [r0]
	bx	lr
_03805B78:
	mov	r1, r2, lsl #17
	movs	r1, r1, lsr #31
	bxeq	lr
	bic	r2, r2, #16128	;@ 0x3f00
	add	r1, r3, #24
	and	r1, r1, #63	;@ 0x3f
	orr	r1, r2, r1, lsl #8
	str	r1, [r0]
	bx	lr
_03805B9C:
	orr	r1, r2, #16384	;@ 0x4000
	str	r1, [r0]
	bx	lr
_03805BA8:
	ldr	r1, [r0]
	bic	r1, r1, #16384	;@ 0x4000
	str	r1, [r0]
	ldr	r1, [r0]
	bic	r1, r1, #16128	;@ 0x3f00
	str	r1, [r0]
	bx	lr

	arm_func_start FUN_03805BC4
FUN_03805BC4: ;@ 0x03805BC4
	ldr	r1, [r0]
	mov	r2, r1, lsl #18
	mov	r2, r2, lsr #26
	cmp	r2, #35	;@ 0x23
	addls	pc, pc, r2, lsl #2
	b	_03805CD0
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805C6C
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805C6C
	b	_03805C6C
	b	_03805C78
	b	_03805C78
	b	_03805C78
	b	_03805C78
	b	_03805C78
	b	_03805C78
	b	_03805C78
	b	_03805C78
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CD0
	b	_03805CA4
	b	_03805CA4
	b	_03805C78
	b	_03805C78
_03805C6C:
	bic	r1, r1, #16384	;@ 0x4000
	str	r1, [r0]
	bx	lr
_03805C78:
	orr	r1, r1, #16384	;@ 0x4000
	str	r1, [r0]
	ldr	r1, [r0]
	bic	r2, r1, #16128	;@ 0x3f00
	mov	r1, r1, lsl #18
	mov	r1, r1, lsr #26
	sub	r1, r1, #18
	and	r1, r1, #63	;@ 0x3f
	orr	r1, r2, r1, lsl #8
	str	r1, [r0]
	bx	lr
_03805CA4:
	orr	r1, r1, #16384	;@ 0x4000
	str	r1, [r0]
	ldr	r1, [r0]
	bic	r2, r1, #16128	;@ 0x3f00
	mov	r1, r1, lsl #18
	mov	r1, r1, lsr #26
	sub	r1, r1, #24
	and	r1, r1, #63	;@ 0x3f
	orr	r1, r2, r1, lsl #8
	str	r1, [r0]
	bx	lr
_03805CD0:
	ldr	r1, [r0]
	bic	r1, r1, #16384	;@ 0x4000
	str	r1, [r0]
	ldr	r1, [r0]
	bic	r1, r1, #16128	;@ 0x3f00
	str	r1, [r0]
	bx	lr

	arm_func_start RTC_WriteFree
RTC_WriteFree: ;@ 0x03805CEC
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #6
	mov	r1, #112	;@ 0x70
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadFree
RTC_ReadFree: ;@ 0x03805D18
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #112	;@ 0x70
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteAdjust
RTC_WriteAdjust: ;@ 0x03805D44
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #6
	mov	r1, #48	;@ 0x30
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadAdjust
RTC_ReadAdjust: ;@ 0x03805D70
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #48	;@ 0x30
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteStatus2
RTC_WriteStatus2: ;@ 0x03805D9C
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #6
	mov	r1, #64	;@ 0x40
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadStatus2
RTC_ReadStatus2: ;@ 0x03805DC8
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #64	;@ 0x40
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteStatus1
RTC_WriteStatus1: ;@ 0x03805DF4
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #6
	mov	r1, #0
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadStatus1
RTC_ReadStatus1: ;@ 0x03805E20
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #0
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteAlarm2
RTC_WriteAlarm2: ;@ 0x03805E4C
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r0, sp, #0
	bl	RTC_ReadStatus2
	ldrh	r0, [sp]
	mov	r0, r0, lsl #25
	movs	r0, r0, lsr #31
	moveq	r0, #0
	beq	_03805E8C
	mov	r0, #6
	mov	r1, #80	;@ 0x50
	mov	r2, r4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, #1
_03805E8C:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadAlarm2
RTC_ReadAlarm2: ;@ 0x03805E98
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r0, sp, #0
	bl	RTC_ReadStatus2
	ldrh	r0, [sp]
	mov	r0, r0, lsl #25
	movs	r0, r0, lsr #31
	moveq	r0, #0
	beq	_03805ED8
	mov	r0, #134	;@ 0x86
	mov	r1, #80	;@ 0x50
	mov	r2, r4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, #1
_03805ED8:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteAlarm1
RTC_WriteAlarm1: ;@ 0x03805EE4
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r0, sp, #0
	bl	RTC_ReadStatus2
	ldrh	r0, [sp]
	mov	r0, r0, lsl #28
	mov	r0, r0, lsr #28
	cmp	r0, #4
	movne	r0, #0
	bne	_03805F28
	mov	r0, #6
	mov	r1, #16
	mov	r2, r4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, #1
_03805F28:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadAlarm1
RTC_ReadAlarm1: ;@ 0x03805F34
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r0, sp, #0
	bl	RTC_ReadStatus2
	ldrh	r0, [sp]
	mov	r0, r0, lsl #28
	mov	r0, r0, lsr #28
	cmp	r0, #4
	movne	r0, #0
	bne	_03805F78
	mov	r0, #134	;@ 0x86
	mov	r1, #16
	mov	r2, r4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, #1
_03805F78:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WritePulse
RTC_WritePulse: ;@ 0x03805F84
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r0, sp, #0
	bl	RTC_ReadStatus2
	ldrh	r0, [sp]
	mov	r0, r0, lsl #28
	mov	r0, r0, lsr #28
	and	r0, r0, #11
	cmp	r0, #1
	movne	r0, #0
	bne	_03805FCC
	mov	r0, #6
	mov	r1, #16
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	mov	r0, #1
_03805FCC:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadPulse
RTC_ReadPulse: ;@ 0x03805FD8
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	add	r0, sp, #0
	bl	RTC_ReadStatus2
	ldrh	r0, [sp]
	mov	r0, r0, lsl #28
	mov	r0, r0, lsr #28
	and	r0, r0, #11
	cmp	r0, #1
	movne	r0, #0
	bne	_03806020
	mov	r0, #134	;@ 0x86
	mov	r1, #16
	mov	r2, r4
	mov	r3, #1
	bl	FUN_03805A48
	mov	r0, #1
_03806020:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteTime
RTC_WriteTime: ;@ 0x0380602C
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #6
	mov	r1, #96	;@ 0x60
	mov	r2, r4
	mov	r3, #3
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadTime
RTC_ReadTime: ;@ 0x03806058
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #96	;@ 0x60
	mov	r2, r4
	mov	r3, #3
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadDate
RTC_ReadDate: ;@ 0x03806084
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #32
	mov	r2, r4
	mov	r3, #4
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_WriteDateTime
RTC_WriteDateTime: ;@ 0x038060B0
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #6
	mov	r1, #32
	mov	r2, r4
	mov	r3, #7
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_ReadDateTime
RTC_ReadDateTime: ;@ 0x038060DC
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	mov	r0, #134	;@ 0x86
	mov	r1, #32
	mov	r2, r4
	mov	r3, #7
	bl	FUN_03805A48
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start RTC_SetHourFormat
RTC_SetHourFormat: ;@ 0x03806108
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	mov	r4, r0
	and	r5, r4, #1
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #1
	bne	_038061FC
	add	r0, sp, #0
	bl	RTC_ReadStatus1
	ldrh	r1, [sp]
	mov	r0, r1, lsl #30
	mov	r2, r0, lsr #31
	mov	r0, r5, lsl #16
	cmp	r2, r0, lsr #16
	beq	_038061FC
	and	r4, r4, #1
	bic	r1, r1, #2
	mov	r0, r4, lsl #16
	mov	r0, r0, lsr #16
	and	r0, r0, #1
	orr	r0, r1, r0, lsl #1
	strh	r0, [sp]
	add	r0, sp, #0
	bl	RTC_WriteStatus1
	mov	r0, #134	;@ 0x86
	mov	r1, #16
	add	r2, sp, #4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, r4, lsl #16
	movs	r0, r0, lsr #16
	bne	_03806198
	add	r0, sp, #4
	bl	FUN_03805BC4
	b	_038061A0
_03806198:
	add	r0, sp, #4
	bl	FUN_03805AAC
_038061A0:
	mov	r0, #6
	mov	r1, #16
	add	r2, sp, #4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, #134	;@ 0x86
	mov	r1, #80	;@ 0x50
	add	r2, sp, #4
	mov	r3, #3
	bl	FUN_03805A48
	mov	r0, r5, lsl #16
	movs	r0, r0, lsr #16
	bne	_038061E0
	add	r0, sp, #4
	bl	FUN_03805BC4
	b	_038061E8
_038061E0:
	add	r0, sp, #4
	bl	FUN_03805AAC
_038061E8:
	mov	r0, #6
	mov	r1, #80	;@ 0x50
	add	r2, sp, #4
	mov	r3, #3
	bl	FUN_03805A48
_038061FC:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start RTC_Reset
RTC_Reset: ;@ 0x03806208
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #32768	;@ 0x8000
	bl	EXIi_SelectRcnt
	ldrh	r0, [sp]
	bic	r0, r0, #1
	orr	r0, r0, #1
	strh	r0, [sp]
	mov	r0, #6
	mov	r1, #0
	add	r2, sp, #0
	mov	r3, #1
	bl	FUN_03805A48
	add	sp, sp, #4
	ldmia	sp!, {lr}
	bx	lr

	arm_func_start RTCi_GpioStart
RTCi_GpioStart: ;@ 0x03806248
	mov	ip, #67108864	;@ 0x4000000
	add	ip, ip, #312	;@ 0x138
	ldrh	r0, [ip]
	bic	r0, r0, #119	;@ 0x77
	orr	r0, r0, #114	;@ 0x72
	strh	r0, [ip]
	mov	r3, #2
_03806264:
	subs	r3, r3, #1
	bne	_03806264
	bic	r0, r0, #4
	orr	r0, r0, #4
	strh	r0, [ip]
	mov	r3, #2
_0380627C:
	subs	r3, r3, #1
	bne	_0380627C
	bx	lr

	arm_func_start RTCi_GpioEnd
RTCi_GpioEnd: ;@ 0x03806288
	mov	ip, #67108864	;@ 0x4000000
	add	ip, ip, #312	;@ 0x138
	mov	r3, #2
_03806294:
	subs	r3, r3, #1
	bne	_03806294
	ldrh	r0, [ip]
	bic	r0, r0, #4
	orr	r0, r0, #0
	strh	r0, [ip]
	mov	r3, #2
_038062B0:
	subs	r3, r3, #1
	bne	_038062B0
	bx	lr

	arm_func_start RTCi_GpioSendCommand
RTCi_GpioSendCommand: ;@ 0x038062BC
	mov	ip, #67108864	;@ 0x4000000
	add	ip, ip, #312	;@ 0x138
	orr	r1, r0, r1
	ldrh	r0, [ip]
	bic	r0, r0, #119	;@ 0x77
	orr	r0, r0, #116	;@ 0x74
	mov	r2, #0
_038062D8:
	bic	r0, r0, #3
	orr	r0, r0, #0
	mov	r3, #1
	tst	r3, r1, lsr r2
	movne	r3, #1
	moveq	r3, #0
	orr	r0, r0, r3
	strh	r0, [ip]
	mov	r3, #9
_038062FC:
	subs	r3, r3, #1
	bne	_038062FC
	bic	r0, r0, #2
	orr	r0, r0, #2
	strh	r0, [ip]
	mov	r3, #9
_03806314:
	subs	r3, r3, #1
	bne	_03806314
	add	r2, r2, #1
	cmp	r2, #8
	bne	_038062D8
	bx	lr

	arm_func_start RTCi_GpioSendData
RTCi_GpioSendData: ;@ 0x0380632C
	mov	ip, #67108864	;@ 0x4000000
	add	ip, ip, #312	;@ 0x138
_03806334:
	stmdb	sp!, {r0, r1}
	tst	r0, #1
	ldreqh	r1, [r0]
	ldrneh	r1, [r0, #-1]
	movne	r1, r1, lsr #8
	ldrh	r0, [ip]
	bic	r0, r0, #119	;@ 0x77
	orr	r0, r0, #116	;@ 0x74
	mov	r2, #0
_03806358:
	bic	r0, r0, #3
	orr	r0, r0, #0
	mov	r3, #1
	tst	r3, r1, lsr r2
	movne	r3, #1
	moveq	r3, #0
	orr	r0, r0, r3
	strh	r0, [ip]
	mov	r3, #9
_0380637C:
	subs	r3, r3, #1
	bne	_0380637C
	bic	r0, r0, #2
	orr	r0, r0, #2
	strh	r0, [ip]
	mov	r3, #9
_03806394:
	subs	r3, r3, #1
	bne	_03806394
	add	r2, r2, #1
	cmp	r2, #8
	bne	_03806358
	ldmia	sp!, {r0, r1}
	add	r0, r0, #1
	subs	r1, r1, #1
	bne	_03806334
	bx	lr

	arm_func_start RTCi_GpioReceiveData
RTCi_GpioReceiveData: ;@ 0x038063BC
	mov	ip, #67108864	;@ 0x4000000
	add	ip, ip, #312	;@ 0x138
_038063C4:
	stmdb	sp!, {r0, r1}
	ldrh	r0, [ip]
	bic	r0, r0, #119	;@ 0x77
	orr	r0, r0, #100	;@ 0x64
	mov	r2, #0
	mov	r1, #0
_038063DC:
	bic	r0, r0, #3
	orr	r0, r0, #0
	strh	r0, [ip]
	mov	r3, #9
_038063EC:
	subs	r3, r3, #1
	bne	_038063EC
	ldrh	r0, [ip]
	and	r3, r0, #1
	cmp	r3, #1
	moveq	r3, #128	;@ 0x80
	movne	r3, #0
	orr	r2, r3, r2, lsr #1
	bic	r0, r0, #2
	orr	r0, r0, #2
	strh	r0, [ip]
	mov	r3, #9
_0380641C:
	subs	r3, r3, #1
	bne	_0380641C
	add	r1, r1, #1
	cmp	r1, #8
	bne	_038063DC
	ldmia	sp!, {r0, r1}
	tst	r0, #1
	beq	_03806454
	ldrh	r3, [r0, #-1]
	bic	r3, r3, #65280	;@ 0xff00
	mov	r2, r2, lsl #8
	orr	r3, r2, r3
	strh	r3, [r0, #-1]
	b	_03806464
_03806454:
	ldrh	r3, [r0]
	bic	r3, r3, #255	;@ 0xff
	orr	r3, r3, r2
	strh	r3, [r0]
_03806464:
	add	r0, r0, #1
	subs	r1, r1, #1
	bne	_038063C4
	bx	lr

	arm_func_start FUN_03806474
FUN_03806474: ;@ 0x03806474
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	ldr	r4, _0380665C	;@ =wmspW
	ldr	r0, _03806660	;@ =_0601A960
	ldr	r0, [r0, #1356]	;@ 0x54c
	cmp	r0, #0
	beq	_038064B0
	add	r0, r4, #4096	;@ 0x1000
	ldr	r0, [r0, #1356]	;@ 0x54c
	ldr	r0, [r0]
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	_038064B0
	bl	FUN_03806668
	bl	FUN_03806670
_038064B0:
	add	r0, r4, #136	;@ 0x88
	add	r1, sp, #0
	mov	r2, #0
	bl	OS_ReceiveMessage
	cmp	r0, #0
	beq	_03806520
	add	r0, r4, #4096	;@ 0x1000
	ldr	r0, [r0, #1356]	;@ 0x54c
	cmp	r0, #0
	beq	_038064B0
	bl	WMSP_GetBuffer4Callback2Wm9
	mov	r5, r0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #256	;@ 0x100
	bl	MIi_CpuClear32
	ldr	r0, [sp]
	ldrh	r0, [r0]
	strh	r0, [r5]
	mov	r0, #4
	strh	r0, [r5, #2]
	mov	r0, r5
	bl	WMSP_ReturnResult2Wm9
	ldr	r1, [sp]
	ldrh	r0, [r1]
	orr	r0, r0, #32768	;@ 0x8000
	strh	r0, [r1]
	b	_038064B0
_03806520:
	bl	FUN_03806678
	bl	FUN_038068BC
	cmp	r0, #0
	beq	_03806548
	add	r0, r4, #136	;@ 0x88
	mov	r1, #0
	mov	r2, #1
	bl	OS_SendMessage
	bl	FUN_03806678
	bl	OS_JoinThread
_03806548:
	add	r0, r4, #136	;@ 0x88
	add	r1, sp, #0
	mov	r2, #0
	bl	OS_ReceiveMessage
	mov	r6, r0
	add	r0, r4, #88	;@ 0x58
	add	r1, sp, #0
	mov	r2, #0
	bl	OS_ReceiveMessage
	mov	r5, r0
	mov	r0, r4
	add	r1, sp, #0
	mov	r2, #0
	bl	OS_ReceiveMessage
	orr	r1, r6, r5
	orrs	r0, r0, r1
	beq	_03806590
	bl	OS_Terminate
_03806590:
	bl	FUN_03806680
	add	r7, r4, #40	;@ 0x28
	add	r6, sp, #0
	mov	r5, #0
_038065A0:
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	OS_ReceiveMessage
	cmp	r0, #0
	bne	_038065A0
	bl	FUN_03806688
	bl	FUN_038068BC
	cmp	r0, #0
	beq	_038065E0
	add	r0, r4, #40	;@ 0x28
	mov	r1, #0
	mov	r2, #1
	bl	OS_SendMessage
	bl	FUN_03806688
	bl	OS_JoinThread
_038065E0:
	mov	r0, #1
	bl	PM_SetLEDPattern
	mov	r0, #1
	bl	PMi_SetLED
	add	r0, r4, #4096	;@ 0x1000
	ldr	r0, [r0, #1356]	;@ 0x54c
	cmp	r0, #0
	beq	_03806614
	ldr	r1, [r0]
	ldrh	r0, [r1]
	cmp	r0, #0
	movne	r0, #0
	strneh	r0, [r1]
_03806614:
	bl	FUN_03806970
	mov	r6, #15
	mov	r5, #131072	;@ 0x20000
	mov	r4, #0
_03806624:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	PXI_SendWordByFifo
	cmp	r0, #0
	blt	_03806624
	bl	OS_DisableInterrupts
	mov	r1, #1
	ldr	r0, _03806664	;@ =_0380A3F0
	strb	r1, [r0]
	bl	OS_ExitThread
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0380665C:	.word	wmspW
_03806660:	.word	_0601A960
_03806664:	.word	_0380A3F0

	arm_func_start FUN_03806668
FUN_03806668: ;@ 0x03806668
	ldr	pc, _0380666C	;@ =WMSP_CancelVAlarm
_0380666C:	.word	WMSP_CancelVAlarm

	arm_func_start FUN_03806670
FUN_03806670: ;@ 0x03806670
	ldr	pc, _03806674	;@ =WMSP_CancelAllAlarms
_03806674:	.word	WMSP_CancelAllAlarms

	arm_func_start FUN_03806678
FUN_03806678: ;@ 0x03806678
	ldr	pc, _0380667C	;@ =WMSP_GetRequestThread
_0380667C:	.word	WMSP_GetRequestThread

	arm_func_start FUN_03806680
FUN_03806680: ;@ 0x03806680
	ldr	pc, _03806684	;@ =WL_Terminate
_03806684:	.word	WL_Terminate

	arm_func_start FUN_03806688
FUN_03806688: ;@ 0x03806688
	ldr	pc, _0380668C	;@ =WMSP_GetIndicateThread
_0380668C:	.word	WMSP_GetIndicateThread

	arm_func_start FUN_03806690
FUN_03806690: ;@ 0x03806690
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	bl	OS_DisableInterrupts
	mov	r4, r0
	ldr	r0, _03806738	;@ =_0380A400
	bl	FUN_038068BC
	cmp	r0, #0
	beq	_038066C0
	mov	r0, r4
	bl	OS_RestoreInterrupts
	mov	r0, #0
	b	_0380672C
_038066C0:
	ldr	r0, _0380673C	;@ =_0380A3F0
	ldrb	r1, [r0]
	cmp	r1, #3
	beq	_038066E0
	mov	r0, r4
	bl	OS_RestoreInterrupts
	mov	r0, #0
	b	_0380672C
_038066E0:
	mov	r1, #4
	strb	r1, [r0]
	mov	r0, r4
	bl	OS_RestoreInterrupts
	mov	r0, #10
	ldr	r1, _03806740	;@ =FUN_03806920
	bl	PXI_SetFifoRecvCallback
	mov	r0, #1024	;@ 0x400
	str	r0, [sp]
	mov	r0, #2
	str	r0, [sp, #4]
	ldr	r0, _03806738	;@ =_0380A400
	ldr	r1, _03806744	;@ =FUN_03806474
	mov	r2, #0
	ldr	r3, _03806748	;@ =_0380AA64
	bl	OS_CreateThread
	ldr	r0, _03806738	;@ =_0380A400
	bl	OS_WakeupThreadDirect
	mov	r0, #1
_0380672C:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr
_03806738:	.word	_0380A400
_0380673C:	.word	_0380A3F0
_03806740:	.word	FUN_03806920
_03806744:	.word	FUN_03806474
_03806748:	.word	_0380AA64

	arm_func_start FUN_0380674C
FUN_0380674C: ;@ 0x0380674C
	stmdb	sp!, {r4, r5, r6, lr}
	bl	FUN_038069B0
	ldr	r0, _038067A0	;@ =_0380A3F8
	ldr	r0, [r0]
	bl	FUN_038069EC
	mov	r6, #15
	mov	r5, #65536	;@ 0x10000
	mov	r4, #0
_0380676C:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	PXI_SendWordByFifo
	cmp	r0, #0
	blt	_0380676C
	bl	OS_DisableInterrupts
	mov	r1, #3
	ldr	r0, _038067A4	;@ =_0380A3F0
	strb	r1, [r0]
	bl	OS_ExitThread
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_038067A0:	.word	_0380A3F8
_038067A4:	.word	_0380A3F0

	arm_func_start FUN_038067A8
FUN_038067A8: ;@ 0x038067A8
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	bl	OS_DisableInterrupts
	mov	r4, r0
	ldr	r0, _03806844	;@ =_0380A400
	bl	FUN_038068BC
	cmp	r0, #0
	beq	_038067D8
	mov	r0, r4
	bl	OS_RestoreInterrupts
	mov	r0, #0
	b	_03806838
_038067D8:
	ldr	r0, _03806848	;@ =_0380A3F0
	ldrb	r1, [r0]
	cmp	r1, #1
	beq	_038067F8
	mov	r0, r4
	bl	OS_RestoreInterrupts
	mov	r0, #0
	b	_03806838
_038067F8:
	mov	r1, #2
	strb	r1, [r0]
	mov	r0, r4
	bl	OS_RestoreInterrupts
	mov	r0, #1024	;@ 0x400
	str	r0, [sp]
	mov	r0, #10
	str	r0, [sp, #4]
	ldr	r0, _03806844	;@ =_0380A400
	ldr	r1, _0380684C	;@ =FUN_0380674C
	mov	r2, #0
	ldr	r3, _03806850	;@ =_0380AA64
	bl	OS_CreateThread
	ldr	r0, _03806844	;@ =_0380A400
	bl	OS_WakeupThreadDirect
	mov	r0, #1
_03806838:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr
_03806844:	.word	_0380A400
_03806848:	.word	_0380A3F0
_0380684C:	.word	FUN_0380674C
_03806850:	.word	_0380AA64

	arm_func_start FUN_03806854
FUN_03806854: ;@ 0x03806854
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	cmp	r4, #65536	;@ 0x10000
	beq	_03806870
	cmp	r4, #131072	;@ 0x20000
	beq	_03806884
	b	_03806898
_03806870:
	bl	FUN_038067A8
	cmp	r0, #0
	bne	_038068B4
	orr	r4, r4, #5
	b	_0380689C
_03806884:
	bl	FUN_03806690
	cmp	r0, #0
	bne	_038068B4
	orr	r4, r4, #5
	b	_0380689C
_03806898:
	orr	r4, r4, #7
_0380689C:
	mov	r0, #15
	mov	r1, r4
	mov	r2, #0
	bl	PXI_SendWordByFifo
	cmp	r0, #0
	blt	_0380689C
_038068B4:
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_038068BC
FUN_038068BC: ;@ 0x038068BC
	cmp	r0, #0
	moveq	r0, #0
	bxeq	lr
	ldr	r1, _0380691C	;@ =OSi_ThreadInfo
	ldr	r1, [r1, #8]
	b	_0380690C
_038068D4:
	cmp	r1, r0
	bne	_03806908
	ldr	r0, [r0, #72]	;@ 0x48
	cmp	r0, #0
	beq	_038068F8
	cmp	r0, #1
	beq	_038068F8
	cmp	r0, #2
	b	_03806900
_038068F8:
	mov	r0, #1
	bx	lr
_03806900:
	mov	r0, #0
	bx	lr
_03806908:
	ldr	r1, [r1, #76]	;@ 0x4c
_0380690C:
	cmp	r1, #0
	bne	_038068D4
	mov	r0, #0
	bx	lr
_0380691C:	.word	OSi_ThreadInfo

	arm_func_start FUN_03806920
FUN_03806920: ;@ 0x03806920
	stmdb	sp!, {r4, r5, r6, lr}
	movs	r6, r1
	ldrh	r4, [r6]
	beq	_03806968
	mov	r0, #0
	mov	r2, #256	;@ 0x100
	bl	MIi_CpuClear32
	strh	r4, [r6]
	mov	r0, #4
	strh	r0, [r6, #2]
	mov	r5, #10
	mov	r4, #0
_03806950:
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	bl	PXI_SendWordByFifo
	cmp	r0, #0
	blt	_03806950
_03806968:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_03806970
FUN_03806970: ;@ 0x03806970
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _038069A8	;@ =_0380A3F4
	ldr	r0, [r0]
	cmp	r0, #0
	beq	_0380699C
	mov	r0, #0
	mov	r1, #100663296	;@ 0x6000000
	ldr	r2, _038069AC	;@ =_0380A3FC
	ldr	r2, [r2]
	bl	MIi_CpuClearFast
_0380699C:
	add	sp, sp, #4
	ldmia	sp!, {lr}
	bx	lr
_038069A8:	.word	_0380A3F4
_038069AC:	.word	_0380A3FC

	arm_func_start FUN_038069B0
FUN_038069B0: ;@ 0x038069B0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _038069E4	;@ =_0380A3F4
	ldr	r0, [r0]
	cmp	r0, #0
	beq	_038069D8
	mov	r1, #100663296	;@ 0x6000000
	ldr	r2, _038069E8	;@ =_0380A3FC
	ldr	r2, [r2]
	bl	MIi_CpuCopyFast
_038069D8:
	add	sp, sp, #4
	ldmia	sp!, {lr}
	bx	lr
_038069E4:	.word	_0380A3F4
_038069E8:	.word	_0380A3FC

	arm_func_start FUN_038069EC
FUN_038069EC: ;@ 0x038069EC
	stmfd	sp!, {lr}
	sub	sp, sp, #84	;@ 0x54
	ldr	r1, _03806A84	;@ =_0380B064
	str	r1, [sp]
	ldr	r1, _03806A88	;@ =_0380B064
	str	r1, [sp, #4]
	mov	r1, #1536	;@ 0x600
	str	r1, [sp, #8]
	mov	r3, #4
	str	r3, [sp, #12]
	mov	r1, #0
	str	r1, [sp, #32]
	mov	r2, #8
	str	r2, [sp, #36]	;@ 0x24
	str	r0, [sp, #40]	;@ 0x28
	ldr	r0, _03806A8C	;@ =_0380A4A4
	str	r0, [sp, #44]	;@ 0x2c
	mov	r0, #448	;@ 0x1c0
	str	r0, [sp, #48]	;@ 0x30
	mov	r1, #3
	str	r1, [sp, #52]	;@ 0x34
	mov	r0, #64	;@ 0x40
	str	r0, [sp, #28]
	str	r1, [sp, #60]	;@ 0x3c
	str	r3, [sp, #76]	;@ 0x4c
	mov	r0, #5
	str	r0, [sp, #68]	;@ 0x44
	mov	r0, #7
	str	r0, [sp, #56]	;@ 0x38
	str	r2, [sp, #72]	;@ 0x48
	mov	r0, #9
	str	r0, [sp, #64]	;@ 0x40
	add	r0, sp, #0
	add	r1, sp, #52	;@ 0x34
	bl	FUN_03806A90
	add	sp, sp, #84	;@ 0x54
	ldmia	sp!, {lr}
	bx	lr
_03806A84:	.word	_0380B064
_03806A88:	.word	_0380B064
_03806A8C:	.word	_0380A4A4

	arm_func_start FUN_03806A90
FUN_03806A90: ;@ 0x03806A90
	ldr	pc, _03806A94	;@ =WM_sp_init
_03806A94:	.word	WM_sp_init

	arm_func_start WVR_Shutdown
WVR_Shutdown: ;@ 0x03806A98
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _03806ACC	;@ =0x04000304
	ldrh	r0, [r1]
	bic	r0, r0, #2
	strh	r0, [r1]
	mov	r0, #1
	bl	PM_SetLEDPattern
	mov	r0, #1
	bl	PMi_SetLED
	add	sp, sp, #4
	ldmia	sp!, {lr}
	bx	lr
_03806ACC:	.word	0x04000304

	arm_func_start WVR_Init
WVR_Init: ;@ 0x03806AD0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _03806B20	;@ =_0380A3F8
	str	r0, [r1]
	mov	r1, #1
	ldr	r0, _03806B24	;@ =_0380A3F0
	strb	r1, [r0]
	ldr	r0, _03806B28	;@ =_0380A400
	mov	r1, #0
	mov	r2, #164	;@ 0xa4
	bl	MI_CpuFill8
	mov	r0, #15
	ldr	r1, _03806B2C	;@ =FUN_03806854
	bl	PXI_SetFifoRecvCallback
	mov	r0, #10
	ldr	r1, _03806B30	;@ =FUN_03806920
	bl	PXI_SetFifoRecvCallback
	add	sp, sp, #4
	ldmia	sp!, {lr}
	bx	lr
_03806B20:	.word	_0380A3F8
_03806B24:	.word	_0380A3F0
_03806B28:	.word	_0380A400
_03806B2C:	.word	FUN_03806854
_03806B30:	.word	FUN_03806920

	arm_func_start MATH_CountPopulation
MATH_CountPopulation: ; 0x03806B34
	ldr	r1, _03806B6C	;@ =0x55555555
	and	r1, r1, r0, lsr #1
	sub	r2, r0, r1
	ldr	r0, _03806B70	;@ =0x33333333
	and	r1, r2, r0
	and	r0, r0, r2, lsr #2
	add	r0, r1, r0
	add	r1, r0, r0, lsr #4
	ldr	r0, _03806B74	;@ =0x0F0F0F0F
	and	r0, r1, r0
	add	r0, r0, r0, lsr #8
	add	r0, r0, r0, lsr #16
	and	r0, r0, #255	;@ 0xff
	bx	lr
_03806B6C:	.word	0x55555555
_03806B70:	.word	0x33333333
_03806B74:	.word	0x0F0F0F0F

	arm_func_start _ll_udiv
_ll_udiv: ;@ 0x03806B78
	stmdb	sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov	r4, #0
	b	_03806B8C

	arm_func_start _ull_mod
_ull_mod: ;@ 0x03806B84
	stmdb	sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov	r4, #1
_03806B8C:
	orrs	r5, r3, r2
	bne	_03806B9C
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr
_03806B9C:
	orrs	r5, r1, r3
	bne	_03806C44
	mov	r1, r2
	bl	_u32_div_not_0_f
	cmp	r4, #0
	movne	r0, r1
	mov	r1, #0
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr

	arm_func_start _ll_mod
_ll_mod: ;@ 0x03806BC0
	stmdb	sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov	r4, r1
	orr	r4, r4, #1
	b	_03806BE0

	arm_func_start _ll_sdiv
_ll_sdiv: ;@ 0x03806BD0
	stmdb	sp!, {r4, r5, r6, r7, fp, ip, lr}
	eor	r4, r1, r3
	mov	r4, r4, asr #1
	mov	r4, r4, lsl #1
_03806BE0:
	orrs	r5, r3, r2
	bne	_03806BF0
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr
_03806BF0:
	mov	r5, r0, lsr #31
	add	r5, r5, r1
	mov	r6, r2, lsr #31
	add	r6, r6, r3
	orrs	r6, r5, r6
	bne	_03806C24
	mov	r1, r2
	bl	_s32_div_f
	ands	r4, r4, #1
	movne	r0, r1
	mov	r1, r0, asr #31
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr
_03806C24:
	cmp	r1, #0
	bge	_03806C34
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
_03806C34:
	cmp	r3, #0
	bge	_03806C44
	rsbs	r2, r2, #0
	rsc	r3, r3, #0
_03806C44:
	orrs	r5, r1, r0
	beq	_03806D68
	mov	r5, #0
	mov	r6, #1
	cmp	r3, #0
	bmi	_03806C70
_03806C5C:
	add	r5, r5, #1
	adds	r2, r2, r2
	adcs	r3, r3, r3
	bpl	_03806C5C
	add	r6, r6, r5
_03806C70:
	cmp	r1, #0
	blt	_03806C90
_03806C78:
	cmp	r6, #1
	beq	_03806C90
	sub	r6, r6, #1
	adds	r0, r0, r0
	adcs	r1, r1, r1
	bpl	_03806C78
_03806C90:
	mov	r7, #0
	mov	ip, #0
	mov	fp, #0
	b	_03806CB8
_03806CA0:
	orr	ip, ip, #1
	subs	r6, r6, #1
	beq	_03806D10
	adds	r0, r0, r0
	adcs	r1, r1, r1
	adcs	r7, r7, r7
_03806CB8:
	subs	r0, r0, r2
	sbcs	r1, r1, r3
	sbcs	r7, r7, #0
	adds	ip, ip, ip
	adc	fp, fp, fp
	cmp	r7, #0
	bge	_03806CA0
_03806CD4:
	subs	r6, r6, #1
	beq	_03806D08
	adds	r0, r0, r0
	adcs	r1, r1, r1
	adc	r7, r7, r7
	adds	r0, r0, r2
	adcs	r1, r1, r3
	adc	r7, r7, #0
	adds	ip, ip, ip
	adc	fp, fp, fp
	cmp	r7, #0
	bge	_03806CA0
	b	_03806CD4
_03806D08:
	adds	r0, r0, r2
	adc	r1, r1, r3
_03806D10:
	ands	r7, r4, #1
	moveq	r0, ip
	moveq	r1, fp
	beq	_03806D48
	subs	r7, r5, #32
	movge	r0, r1, lsr r7
	bge	_03806D6C
	rsb	r7, r5, #32
	mov	r0, r0, lsr r5
	orr	r0, r0, r1, lsl r7
	mov	r1, r1, lsr r5
	b	_03806D48
	mov	r0, r1, lsr r7
	mov	r1, #0
_03806D48:
	cmp	r4, #0
	blt	_03806D58
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr
_03806D58:
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr
_03806D68:
	mov	r0, #0
_03806D6C:
	mov	r1, #0
	cmp	r4, #0
	blt	_03806D58
	ldmia	sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx	lr

	arm_func_start _s32_div_f
_s32_div_f: ;@ 0x03806D80
	eor	ip, r0, r1
	and	ip, ip, #-2147483648	;@ 0x80000000
	cmp	r0, #0
	rsblt	r0, r0, #0
	addlt	ip, ip, #1
	cmp	r1, #0
	rsblt	r1, r1, #0
	beq	_03806F78
	cmp	r0, r1
	movcc	r1, r0
	movcc	r0, #0
	bcc	_03806F78
	mov	r2, #28
	mov	r3, r0, lsr #4
	cmp	r1, r3, lsr #12
	suble	r2, r2, #16
	movle	r3, r3, lsr #16
	cmp	r1, r3, lsr #4
	suble	r2, r2, #8
	movle	r3, r3, lsr #8
	cmp	r1, r3
	suble	r2, r2, #4
	movle	r3, r3, lsr #4
	mov	r0, r0, lsl r2
	rsb	r1, r1, #0
	adds	r0, r0, r0
	add	r2, r2, r2, lsl #1
	add	pc, pc, r2, lsl #2
	nop			;@ (mov r0, r0)
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	mov	r1, r3
_03806F78:
	ands	r3, ip, #-2147483648	;@ 0x80000000
	rsbne	r0, r0, #0
	ands	r3, ip, #1
	rsbne	r1, r1, #0
	bx	lr

	arm_func_start _u32_div_f
_u32_div_f: ;@ 0x03806F8C
	cmp	r1, #0
	bxeq	lr

	arm_func_start _u32_div_not_0_f
_u32_div_not_0_f: ;@ 0x03806F94
	cmp	r0, r1
	movcc	r1, r0
	movcc	r0, #0
	bxcc	lr
	mov	r2, #28
	mov	r3, r0, lsr #4
	cmp	r1, r3, lsr #12
	suble	r2, r2, #16
	movle	r3, r3, lsr #16
	cmp	r1, r3, lsr #4
	suble	r2, r2, #8
	movle	r3, r3, lsr #8
	cmp	r1, r3
	suble	r2, r2, #4
	movle	r3, r3, lsr #4
	mov	r0, r0, lsl r2
	rsb	r1, r1, #0
	adds	r0, r0, r0
	add	r2, r2, r2, lsl #1
	add	pc, pc, r2, lsl #2
	nop			;@ (mov r0, r0)
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	adcs	r3, r1, r3, lsl #1
	subcc	r3, r3, r1
	adcs	r0, r0, r0
	mov	r1, r3
	bx	lr

	.global _03807170
_03807170:
	.byte	0
	.byte	6
	.byte	12
	.byte	19
	.byte	25
	.byte	31
	.byte	37
	.byte	43
	.byte	49
	.byte	54
	.byte	60
	.byte	65
	.byte	71
	.byte	76
	.byte	81
	.byte	85
	.byte	90
	.byte	94
	.byte	98
	.byte	102
	.byte	106
	.byte	109
	.byte	112
	.byte	115
	.byte	117
	.byte	120
	.byte	122
	.byte	123
	.byte	125
	.byte	126
	.byte	126
	.byte	127
	.byte	127
	.byte	0
	.byte	0
	.byte	0

	.global SNDi_DecibelSquareTable
SNDi_DecibelSquareTable:
	.short	-32768
	.short	-722
	.short	-721
	.short	-651
	.short	-601
	.short	-562
	.short	-530
	.short	-503
	.short	-480
	.short	-460
	.short	-442
	.short	-425
	.short	-410
	.short	-396
	.short	-383
	.short	-371
	.short	-360
	.short	-349
	.short	-339
	.short	-330
	.short	-321
	.short	-313
	.short	-305
	.short	-297
	.short	-289
	.short	-282
	.short	-276
	.short	-269
	.short	-263
	.short	-257
	.short	-251
	.short	-245
	.short	-239
	.short	-234
	.short	-229
	.short	-224
	.short	-219
	.short	-214
	.short	-210
	.short	-205
	.short	-201
	.short	-196
	.short	-192
	.short	-188
	.short	-184
	.short	-180
	.short	-176
	.short	-173
	.short	-169
	.short	-165
	.short	-162
	.short	-158
	.short	-155
	.short	-152
	.short	-149
	.short	-145
	.short	-142
	.short	-139
	.short	-136
	.short	-133
	.short	-130
	.short	-127
	.short	-125
	.short	-122
	.short	-119
	.short	-116
	.short	-114
	.short	-111
	.short	-109
	.short	-106
	.short	-103
	.short	-101
	.short	-99
	.short	-96
	.short	-94
	.short	-91
	.short	-89
	.short	-87
	.short	-85
	.short	-82
	.short	-80
	.short	-78
	.short	-76
	.short	-74
	.short	-72
	.short	-70
	.short	-68
	.short	-66
	.short	-64
	.short	-62
	.short	-60
	.short	-58
	.short	-56
	.short	-54
	.short	-52
	.short	-50
	.short	-49
	.short	-47
	.short	-45
	.short	-43
	.short	-42
	.short	-40
	.short	-38
	.short	-36
	.short	-35
	.short	-33
	.short	-31
	.short	-30
	.short	-28
	.short	-27
	.short	-25
	.short	-23
	.short	-22
	.short	-20
	.short	-19
	.short	-17
	.short	-16
	.short	-14
	.short	-13
	.short	-11
	.short	-10
	.short	-8
	.short	-7
	.short	-6
	.short	-4
	.short	-3
	.short	-1
	.short	0

	.global _03807294
_03807294:
	.byte	0
	.byte	1
	.byte	2
	.byte	4

	.global _03807298
_03807298:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	14
	.byte	12
	.byte	15
	.byte	13

	.global _038072A8
_038072A8:
	.byte	0
	.byte	1
	.byte	5
	.byte	14
	.byte	26
	.byte	38
	.byte	51
	.byte	63
	.byte	73
	.byte	84
	.byte	92
	.byte	100
	.byte	109
	.byte	116
	.byte	123
	.byte	127
	.byte	132
	.byte	137
	.byte	143
	.byte	0

	.global _038072BC
_038072BC:
	.word	0x000000C7

	.global _038072C0
_038072C0:
	.word	0x00000006

	.global _038072C4
_038072C4:
	.word	0x00000005

	.global _038072C8
_038072C8:
	.word	0x00000040
	.word	0x00000006
	.word	0x01000000
	.word	0x00000018
	.word	0x00080000
	.word	0x00000013
	.word	0x00100000
	.word	0x00000014
	.word	0x00040000
	.word	0x00000012
	.word	0x00000008
	.word	0x00000003
	.word	0x00000010
	.word	0x00000004
	.word	0x00000020
	.word	0x00000005
	.word	0x00000100
	.word	0x00000008
	.word	0x00000200
	.word	0x00000009
	.word	0x00000400
	.word	0x0000000A
	.word	0x00000800
	.word	0x0000000B
	.word	0x00001000
	.word	0x0000000C
	.word	0x00002000
	.word	0x0000000D
	.word	0x00000002
	.word	0x00000001
	.word	0x00000004
	.word	0x00000002
	.word	0x00000001
	.word	0x00000000
	.word	0x00010000
	.word	0x00000010
	.word	0x00400000
	.word	0x00000016
	.word	0x00000080
	.word	0x00000007
	.word	0x00020000
	.word	0x00000011
	.word	0x00800000
	.word	0x00000017

	arm_func_start FUN_03807378
FUN_03807378: ;@ 0x03807378
	mov	ip, #67108864	;@ 0x4000000
	str	ip, [ip, #520]	;@ 0x208
	ldr	r1, _038073E0	;@ =0x0380FFFC
	mov	r0, #0
	str	r0, [r1]
	ldr	r1, _038073E4	;@ =0x04000180
	mov	r0, #256	;@ 0x100
	strh	r0, [r1]
_03807398:
	ldrh	r0, [r1]
	and	r0, r0, #15
	cmp	r0, #1
	bne	_03807398
	ldr	r1, _038073E4	;@ =0x04000180
	mov	r0, #0
	strh	r0, [r1]
_038073B4:
	ldrh	r0, [r1]
	cmp	r0, #1
	beq	_038073B4
	ldr	r3, _038073E8	;@ =0x027FFE00
	ldr	ip, [r3, #52]	;@ 0x34
	mov	lr, ip
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bx	ip
_038073E0:	.word	0x0380FFFC
_038073E4:	.word	0x04000180
_038073E8:	.word	0x027FFE00

	arm_func_start FUN_038073EC
FUN_038073EC: ;@ 0x038073EC
	mov	r1, #0
	ldr	r0, _03807400	;@ =0x04000208
	strh	r1, [r0]
	ldr	ip, _03807404	;@ =FUN_03807378
	bx	ip
_03807400:	.word	0x04000208
_03807404:	.word	FUN_03807378

	arm_func_start WMSP_GetAllowedChannel
WMSP_GetAllowedChannel: ;@ 0x03807408
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	ldr	r1, _03807530	;@ =0x00001FFF
	and	r0, r0, r1
	mov	r0, r0, lsl #16
	movs	r6, r0, lsr #16
	moveq	r0, #0
	beq	_03807524
	mov	r9, #0
	mov	r0, #1
	b	_03807444
_03807434:
	mov	r1, r0, lsl r9
	ands	r1, r6, r1
	bne	_0380744C
	add	r9, r9, #1
_03807444:
	cmp	r9, #16
	blt	_03807434
_0380744C:
	mov	sl, #15
	mov	r0, #1
	b	_03807468
_03807458:
	mov	r1, r0, lsl sl
	ands	r1, r6, r1
	bne	_03807470
	sub	sl, sl, #1
_03807468:
	cmp	sl, #0
	bne	_03807458
_03807470:
	sub	r5, sl, r9
	cmp	r5, #5
	movlt	r0, #1
	movlt	r0, r0, lsl r9
	movlt	r0, r0, lsl #16
	movlt	r0, r0, lsr #16
	blt	_03807524
	add	r0, sl, r9
	mov	r1, #2
	bl	_s32_div_f
	mov	r8, r0
	mov	r7, #0
	mov	fp, #2
	mov	r4, #1
	b	_038074D4
_038074AC:
	mov	r0, r7
	mov	r1, fp
	bl	_s32_div_f
	mov	r0, r1, lsl #1
	sub	r0, r0, #1
	mla	r8, r7, r0, r8
	mov	r0, r4, lsl r8
	ands	r0, r6, r0
	bne	_038074DC
	add	r7, r7, #1
_038074D4:
	cmp	r7, r5
	blt	_038074AC
_038074DC:
	sub	r0, sl, r8
	cmp	r0, #5
	blt	_038074F4
	sub	r0, r8, r9
	cmp	r0, #5
	bge	_0380750C
_038074F4:
	mov	r0, #1
	mov	r1, r0, lsl r9
	orr	r0, r1, r0, lsl sl
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	b	_03807524
_0380750C:
	mov	r1, #1
	mov	r0, r1, lsl sl
	orr	r0, r0, r1, lsl r8
	orr	r0, r0, r1, lsl r9
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
_03807524:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_03807530:	.word	0x00001FFF

	arm_func_start WMSP_GetBuffer4Callback2Wm9
WMSP_GetBuffer4Callback2Wm9: ;@ 0x03807534
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _03807584	;@ =_0601AE88
	bl	OS_LockMutex
	mov	r5, #256	;@ 0x100
	ldr	r4, _03807588	;@ =0x027FFF96
	b	_03807558
_03807550:
	mov	r0, r5
	bl	FUN_037F8CB4
_03807558:
	ldrh	r0, [r4]
	ands	r1, r0, #1
	bne	_03807550
	orr	r0, r0, #1
	strh	r0, [r4]
	ldr	r0, _0380758C	;@ =_0601A960
	ldr	r0, [r0, #1356]	;@ 0x54c
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_03807584:	.word	_0601AE88
_03807588:	.word	0x027FFF96
_0380758C:	.word	_0601A960

	arm_func_start WMSP_ReturnResult2Wm9
WMSP_ReturnResult2Wm9: ;@ 0x03807590
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, #256	;@ 0x100
	mov	r5, #10
	mov	r4, #0
	b	_038075B4
_038075AC:
	mov	r0, r6
	bl	FUN_037F8CB4
_038075B4:
	mov	r0, r5
	mov	r1, r7
	mov	r2, r4
	bl	PXI_SendWordByFifo
	cmp	r0, #0
	blt	_038075AC
	ldr	r0, _038075E0	;@ =_0601AE88
	bl	OS_UnlockMutex
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_038075E0:	.word	_0601AE88
	.balign 2, 0 ; Don't pad with nop
