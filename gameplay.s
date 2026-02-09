	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gameplay.c"
	.text
	.align	2
	.global	initializeSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeSprites, %function
initializeSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #144
	ldr	r4, .L4
	ldr	ip, .L4+4
	mov	r2, r4
	ldr	r5, .L4+8
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L4+12
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r0, #100
	mvn	r2, #32768
	ldr	lr, .L4+28
	ldr	ip, .L4+32
	ldr	r1, .L4+36
	str	r3, [lr]
	str	r0, [r1]
	str	r3, [ip]
	ldr	lr, .L4+40
	strh	r2, [r4, #8]	@ movhi
	ldr	ip, .L4+44
	ldr	r0, .L4+48
	ldr	r1, .L4+52
	ldr	r2, .L4+56
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	83886592
	.word	yPosition
	.word	DMANow
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	sheild
	.word	bhTimer
	.word	bhWait
	.word	aboveOrBelow
	.word	drawBH
	.word	gotBox
	.word	powerup
	.word	jetpack
	.size	initializeSprites, .-initializeSprites
	.align	2
	.global	gameControls
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameControls, %function
gameControls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L127
	ldrh	r3, [r3]
	ldr	r9, .L127+4
	tst	r3, #64
	sub	sp, sp, #52
	ldr	r3, [r9]
	beq	.L117
	cmp	r3, #143
	ble	.L10
.L9:
	ldr	r7, .L127+8
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L118
.L11:
	ldr	r6, .L127+12
	ldr	r3, [r6, #20]
	cmp	r3, #0
	beq	.L119
.L12:
	ldr	r8, .L127+16
	ldr	r3, [r8, #20]
	cmp	r3, #0
	ldr	r3, .L127+20
	str	r3, [sp, #32]
	bne	.L113
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L103
.L113:
	ldr	r3, .L127+24
	str	r3, [sp, #44]
.L13:
	ldr	fp, .L127+28
	ldr	r3, [fp, #20]
	cmp	r3, #0
	ldr	r3, .L127+32
	str	r3, [sp, #36]
	bne	.L14
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L120
.L14:
	mov	r3, #16
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r2, r3
	mov	r0, #5
	ldr	r1, [r9]
	ldr	r5, .L127+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L127+40
	cmp	r0, #0
	str	r3, [sp, #20]
	beq	.L15
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L121
.L15:
	mov	r3, #16
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	str	r0, [sp, #4]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	str	r1, [sp]
	mov	r2, r3
	mov	r0, #5
	ldr	r1, [r9]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L16
	ldr	r3, .L127+44
	ldr	r1, [r9]
	str	r3, [sp, #24]
.L17:
	mov	r10, #16
	ldr	r4, .L127+48
.L20:
	mov	r3, #16
	ldm	r4, {r0, ip}
	mov	r2, r3
	stm	sp, {r0, ip}
	str	r10, [sp, #12]
	mov	r0, #5
	str	r10, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L19
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r4, #20]
	cmp	r3, #0
	movne	r3, #1
	ldrne	r2, .L127+52
	strne	r3, [r2]
.L19:
	ldr	r3, .L127+56
	add	r4, r4, #24
	cmp	r4, r3
	ldr	r1, [r9]
	bne	.L20
	mov	r3, #16
	ldm	r8, {r0, ip}
	mov	r2, r3
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	mov	r0, #5
	str	r3, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L21
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L122
.L21:
	mov	r3, #16
	ldm	fp, {r0, ip}
	ldr	r1, [r9]
	mov	r2, r3
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	mov	r0, #5
	mov	lr, pc
	bx	r5
	ldr	r3, .L127+60
	cmp	r0, #0
	str	r3, [sp, #28]
	beq	.L116
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L109
.L116:
	ldr	r3, .L127+64
	str	r3, [sp, #40]
.L22:
	mov	r9, #16
	mov	fp, #0
	ldr	r4, .L127+68
	add	r10, r4, #4
.L26:
	mov	r3, #16
	ldr	r0, [r8, #4]
	ldr	r1, [r8]
	str	r9, [sp, #12]
	str	r9, [sp, #8]
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r4, #4]
	ldr	r0, [r10, #-4]
	mov	lr, pc
	bx	r5
	mov	r3, #16
	ldr	ip, [r7]
	ldr	r1, [r7, #4]
	str	ip, [sp]
	str	r9, [sp, #12]
	str	r9, [sp, #8]
	str	r1, [sp, #4]
	cmp	r0, #0
	ldr	r1, [r4, #4]
	mov	r2, r3
	ldr	r0, [r10, #-4]
	strne	fp, [r8, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #16
	ldr	r1, [r6, #4]
	ldr	ip, [r6]
	str	r9, [sp, #12]
	str	r9, [sp, #8]
	str	ip, [sp]
	str	r1, [sp, #4]
	cmp	r0, #0
	ldr	r1, [r4, #4]
	mov	r2, r3
	ldr	r0, [r10, #-4]
	strne	fp, [r7, #20]
	mov	lr, pc
	bx	r5
	ldr	r3, .L127+72
	cmp	r0, #0
	add	r4, r4, #24
	strne	fp, [r6, #20]
	cmp	r3, r4
	add	r10, r10, #24
	bne	.L26
	ldr	r3, [sp, #40]
	ldr	r3, [r3]
	ldr	r2, [sp, #20]
	cmp	r3, #1
	ldr	r2, [r2]
	beq	.L123
.L27:
	cmp	r2, #0
	ldr	r2, [sp, #28]
	ldr	r2, [r2]
	bne	.L124
	cmp	r2, #0
	bne	.L125
	cmp	r3, #0
	mvneq	r2, #32768
	ldrne	r2, .L127+76
	ldrne	r3, .L127+80
	ldreq	r3, .L127+80
	strh	r2, [r3, #8]	@ movhi
	ldr	r2, .L127+84
.L29:
	ldr	r3, [sp, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L37
.L35:
	sub	r3, r3, #1
	ldr	r1, [sp, #24]
	cmp	r3, #0
	str	r3, [r1]
	beq	.L37
.L36:
	ldr	r0, [sp, #44]
	ldr	r3, [r0]
	ldr	r1, [sp, #32]
	cmp	r3, #0
	ldr	r1, [r1]
	ble	.L38
	sub	r3, r3, #1
	cmp	r1, #0
	str	r3, [r0]
	ble	.L40
	cmp	r3, #0
	beq	.L42
.L40:
	ldr	r1, [sp, #36]
	ldr	r3, [r1]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r1]
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L46
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	beq	.L46
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L16:
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r1, [r9]
	bne	.L114
	ldr	r3, [r6, #20]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r6, #4]
	cmp	r3, r1
	blt	.L18
	mov	r3, #300
	mov	r2, #1
	ldr	r0, .L127+44
	ldr	ip, [sp, #20]
	str	r0, [sp, #24]
	str	r2, [ip]
	str	r3, [r0]
	b	.L17
.L117:
	cmp	r3, #0
	ble	.L8
	ldr	r1, .L127+88
	ldr	r7, .L127+8
	sub	r3, r3, #3
	ldr	r2, [r1]
	str	r3, [r9]
	ldr	r3, [r7, #20]
	add	r2, r2, #1
	cmp	r3, #0
	str	r2, [r1]
	bne	.L11
.L118:
	mov	r2, #224
	ldr	r3, .L127+92
	str	r2, [r7]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L127+96
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	ldr	r6, .L127+12
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #4
	ldr	r3, [r6, #20]
	cmp	r3, #0
	stmib	r7, {r0, r1}
	str	r1, [r7, #20]
	bne	.L12
.L119:
	mov	r2, #224
	ldr	r3, .L127+92
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L127+96
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #4
	stmib	r6, {r0, r1}
	str	r1, [r6, #20]
	b	.L12
.L124:
	cmp	r2, #0
	bne	.L126
	cmp	r3, #0
	movne	r2, #31744
	mvneq	r2, #59392
	ldr	r3, .L127+80
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [sp, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r2, .L127+84
	bgt	.L35
.L37:
	mov	r3, #0
	ldr	r1, [sp, #20]
	str	r3, [r1]
	b	.L36
.L18:
	mov	r2, #1
	ldr	r3, .L127+52
	str	r2, [r3]
.L114:
	ldr	r3, .L127+44
	str	r3, [sp, #24]
	b	.L17
.L109:
	ldr	r2, [fp, #20]
	cmp	r2, #0
	beq	.L116
	mov	r2, #1
	str	r3, [fp, #20]
	ldr	r3, .L127+64
	str	r3, [sp, #40]
	str	r2, [r3]
	b	.L22
.L122:
	ldr	r3, [r8, #20]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L127+52
	strne	r2, [r3]
	b	.L21
.L121:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L127+52
	strne	r2, [r3]
	b	.L15
.L8:
	bne	.L10
	ldr	r2, .L127+88
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L9
.L10:
	mov	r1, #0
	ldr	r2, .L127+88
	add	r3, r3, #3
	str	r3, [r9]
	str	r1, [r2]
	b	.L9
.L38:
	mov	r3, #0
	cmp	r1, r3
	str	r3, [r8, #20]
	ble	.L40
.L42:
	ldr	r3, [sp, #32]
	sub	r1, r1, #1
	str	r1, [r3]
	b	.L40
.L46:
	mov	r3, #0
	ldr	r2, [sp, #28]
	str	r3, [r2]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L123:
	ldr	r1, .L127+100
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L27
	ldr	r1, .L127
	ldrh	r1, [r1]
	ands	r1, r1, #1
	bne	.L27
	mov	r0, #500
	ldr	ip, [sp, #28]
	cmp	r2, #0
	str	r3, [ip]
	ldr	r2, .L127+84
	ldr	r3, [sp, #40]
	str	r0, [r2]
	str	r1, [r3]
	beq	.L28
	b	.L31
.L126:
	ldr	r2, .L127+84
.L31:
	ldr	r3, .L127+80
	ldr	r1, .L127+104
	strh	r1, [r3, #8]	@ movhi
	b	.L29
.L125:
	ldr	r2, .L127+84
.L28:
	mov	r1, #31
	ldr	r3, .L127+80
	strh	r1, [r3, #8]	@ movhi
	b	.L29
.L103:
	mov	r2, #104
	ldr	r3, .L127+92
	str	r2, [r8]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	r1, #100
	ldr	r3, .L127+96
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #5
	add	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #4
	ldr	r3, .L127+108
	str	r0, [r8, #4]
	str	r2, [r3]
	ldr	r0, .L127+24
	ldr	r3, [sp, #32]
	str	r0, [sp, #44]
	str	r2, [r8, #8]
	str	r2, [r8, #20]
	str	r1, [r3]
	str	r1, [r0]
	b	.L13
.L120:
	mov	r2, #224
	ldr	r3, .L127+92
	str	r2, [fp]
	mov	lr, pc
	bx	r3
	mov	ip, #3
	mov	r1, #1
	mov	r2, #100
	ldr	r3, .L127+96
	smull	r4, lr, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, lr, asr #5
	add	r3, r3, r3, lsl ip
	sub	r3, r0, r3, lsl #4
	stmib	fp, {r3, ip}
	ldr	r3, [sp, #36]
	str	r1, [fp, #20]
	str	r2, [r3]
	b	.L14
.L128:
	.align	2
.L127:
	.word	buttons
	.word	yPosition
	.word	enemyArr
	.word	ufo
	.word	blackhole
	.word	bhWait
	.word	bhTimer
	.word	box
	.word	boxWait
	.word	collision
	.word	sheild
	.word	shieldTimer
	.word	bullets
	.word	loseCondition
	.word	bullets+120
	.word	powerup
	.word	gotBox
	.word	pBullets
	.word	pBullets+120
	.word	15855
	.word	83886592
	.word	poweupTimer
	.word	jetpack
	.word	rand
	.word	954437177
	.word	oldButtons
	.word	21492
	.word	drawBH
	.size	gameControls, .-gameControls
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L158
	ldr	r3, [r3]
	cmp	r3, #1
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L157
	ldr	r3, .L158+4
	ldr	r3, [r3]
	cmp	r3, #0
	movle	r3, #64
	ldr	r2, .L158+8
	ldr	r0, .L158+12
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L158+16
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strhle	r3, [r0, #4]	@ movhi
	ble	.L131
	cmp	r3, #14
	movle	r3, #66
	movgt	r3, #68
	strh	r3, [r0, #4]	@ movhi
.L131:
	ldr	r2, .L158+20
	ldr	r3, [r2, #20]
	cmp	r3, #0
	moveq	r3, #160
	strheq	r3, [r0, #8]	@ movhi
	beq	.L136
	mov	r1, #128
	ldr	r3, [r2]
	lsl	r3, r3, #23
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r0, #10]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	strh	r1, [r0, #12]	@ movhi
.L136:
	ldr	r1, .L158+12
	mov	r7, #160
	mov	r0, r1
	mov	r2, r1
	mov	r5, #138
	ldr	r3, .L158+24
	ldr	r6, .L158+28
	add	lr, r3, #120
.L135:
	ldr	ip, [r3, #20]
	cmp	ip, #0
	ldrne	ip, [r3]
	ldrbne	r4, [r3, #4]	@ zero_extendqisi2
	andne	ip, ip, r6
	add	r3, r3, #24
	strhne	r5, [r2, #20]	@ movhi
	strhne	ip, [r2, #18]	@ movhi
	strhne	r4, [r2, #16]	@ movhi
	strheq	r7, [r2, #16]	@ movhi
	cmp	lr, r3
	add	r2, r2, #8
	bne	.L135
	ldr	r2, .L158+32
	ldr	r3, [r2, #20]
	cmp	r3, #0
	moveq	r3, #160
	strheq	r3, [r0, #64]	@ movhi
	beq	.L140
	mov	ip, #8
	ldr	r3, [r2]
	lsl	r3, r3, #23
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r0, #66]	@ movhi
	strh	r2, [r0, #64]	@ movhi
	strh	ip, [r0, #68]	@ movhi
.L140:
	ldr	r2, .L158+36
	ldr	r3, [r2, #20]
	cmp	r3, #0
	moveq	r3, #160
	strheq	r3, [r0, #72]	@ movhi
	beq	.L142
	mov	ip, #10
	ldr	r3, [r2]
	lsl	r3, r3, #23
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r0, #74]	@ movhi
	strh	r2, [r0, #72]	@ movhi
	strh	ip, [r0, #76]	@ movhi
.L142:
	ldr	r2, .L158+40
	ldr	r3, [r2, #20]
	cmp	r3, #0
	moveq	r3, #160
	strheq	r3, [r0, #80]	@ movhi
	beq	.L145
	mov	ip, #72
	ldr	r3, [r2]
	lsl	r3, r3, #23
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r0, #82]	@ movhi
	strh	r2, [r0, #80]	@ movhi
	strh	ip, [r0, #84]	@ movhi
.L145:
	mov	ip, #160
	mov	r5, #136
	ldr	r2, .L158+44
	ldr	r3, .L158+48
	ldr	lr, [r2]
	ldr	r6, .L158+28
	add	r0, r3, #120
.L144:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L146
	cmp	lr, #0
	beq	.L146
	ldr	r2, [r3]
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	and	r2, r2, r6
	strh	r5, [r1, #92]	@ movhi
	strh	r2, [r1, #90]	@ movhi
	strh	r4, [r1, #88]	@ movhi
.L147:
	add	r3, r3, #24
	cmp	r0, r3
	add	r1, r1, #8
	bne	.L144
	ldr	r3, .L158+52
	mov	lr, pc
	bx	r3
	ldr	r4, .L158+56
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L158+12
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L146:
	strh	ip, [r1, #88]	@ movhi
	b	.L147
.L157:
	mov	r3, #160
	ldr	r0, .L158+12
	strh	r3, [r0]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	strh	r3, [r0, #24]	@ movhi
	strh	r3, [r0, #32]	@ movhi
	strh	r3, [r0, #40]	@ movhi
	strh	r3, [r0, #48]	@ movhi
	strh	r3, [r0, #56]	@ movhi
	strh	r3, [r0, #64]	@ movhi
	b	.L131
.L159:
	.align	2
.L158:
	.word	loseCondition
	.word	jetpack
	.word	yPosition
	.word	shadowOAM
	.word	16389
	.word	enemyArr
	.word	bullets
	.word	511
	.word	ufo
	.word	blackhole
	.word	box
	.word	powerup
	.word	pBullets
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.align	2
	.global	moveEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveEnemy, %function
moveEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L164
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3]
	ldr	r1, [r3, #8]
	sub	r2, r2, r1
	cmp	r2, #5
	str	r2, [r3]
	movle	r2, #0
	strle	r2, [r3, #20]
	bx	lr
.L165:
	.align	2
.L164:
	.word	enemyArr
	.size	moveEnemy, .-moveEnemy
	.align	2
	.global	enemyShoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	enemyShoot, %function
enemyShoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L176
	mov	r3, #0
	mov	r2, ip
	push	{r4, lr}
	ldr	lr, .L176+4
	ldr	r0, [lr, #20]
.L169:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	bne	.L167
	cmp	r0, #0
	bne	.L175
.L167:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #24
	bne	.L169
	pop	{r4, lr}
	bx	lr
.L175:
	mov	r1, #1
	mov	r0, #3
	ldr	r4, [lr]
	ldr	r2, [lr, #4]
	add	r3, r3, r3, lsl r1
	str	r4, [ip, r3, lsl #3]
	add	r2, r2, #8
	add	r3, ip, r3, lsl r0
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L177:
	.align	2
.L176:
	.word	bullets
	.word	enemyArr
	.size	enemyShoot, .-enemyShoot
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r3, .L185
	add	r1, r3, #120
.L182:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L180
	ldr	r2, [r3]
	ldr	r0, [r3, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	strle	ip, [r3, #20]
.L180:
	add	r3, r3, #24
	cmp	r3, r1
	bne	.L182
	bx	lr
.L186:
	.align	2
.L185:
	.word	bullets
	.size	updateBullets, .-updateBullets
	.align	2
	.global	moveUFO
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveUFO, %function
moveUFO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L191
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3]
	ldr	r1, [r3, #8]
	sub	r2, r2, r1
	cmp	r2, #5
	str	r2, [r3]
	movle	r2, #0
	strle	r2, [r3, #20]
	bx	lr
.L192:
	.align	2
.L191:
	.word	ufo
	.size	moveUFO, .-moveUFO
	.align	2
	.global	moveBH
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveBH, %function
moveBH:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L197
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3]
	ldr	r1, [r3, #8]
	sub	r2, r2, r1
	cmp	r2, #5
	str	r2, [r3]
	movle	r2, #0
	strle	r2, [r3, #20]
	bx	lr
.L198:
	.align	2
.L197:
	.word	blackhole
	.size	moveBH, .-moveBH
	.align	2
	.global	moveBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveBox, %function
moveBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L203
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3]
	ldr	r1, [r3, #8]
	sub	r2, r2, r1
	cmp	r2, #5
	str	r2, [r3]
	movle	r2, #0
	strle	r2, [r3, #20]
	bx	lr
.L204:
	.align	2
.L203:
	.word	box
	.size	moveBox, .-moveBox
	.align	2
	.global	playerShoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerShoot, %function
playerShoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L218
	mov	r3, #0
	mov	r1, r4
	ldr	ip, .L218+4
	ldr	r2, .L218+8
	ldr	r0, .L218+12
	ldrh	ip, [ip]
	ldrh	r2, [r2]
	ldr	lr, [r0]
	and	ip, ip, #2
	and	r2, r2, #2
.L208:
	ldr	r0, [r1, #20]
	cmp	r0, #0
	bne	.L206
	cmp	lr, #0
	beq	.L206
	cmp	ip, #0
	beq	.L206
	cmp	r2, #0
	beq	.L217
.L206:
	add	r3, r3, #1
	cmp	r3, #5
	add	r1, r1, #24
	bne	.L208
.L205:
	pop	{r4, lr}
	bx	lr
.L217:
	mov	ip, #1
	mov	r1, #5
	mov	lr, #3
	ldr	r0, .L218+16
	add	r3, r3, r3, lsl ip
	str	r1, [r4, r3, lsl #3]
	ldr	r0, [r0]
	ldr	r1, .L218+20
	add	r3, r4, r3, lsl lr
	str	r0, [r3, #4]
	ldr	r1, [r1]
	ldr	r0, .L218+24
	str	lr, [r3, #8]
	ldr	r4, .L218+28
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	b	.L205
.L219:
	.align	2
.L218:
	.word	pBullets
	.word	oldButtons
	.word	buttons
	.word	powerup
	.word	yPosition
	.word	Gunshot_length
	.word	Gunshot_data
	.word	playSoundB
	.size	playerShoot, .-playerShoot
	.align	2
	.global	updatePlayerBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerBullets, %function
updatePlayerBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r3, .L227
	add	r1, r3, #120
.L224:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L222
	ldr	r2, [r3]
	ldr	r0, [r3, #8]
	add	r2, r2, r0
	cmp	r2, #223
	str	r2, [r3]
	strgt	ip, [r3, #20]
.L222:
	add	r3, r3, #24
	cmp	r3, r1
	bne	.L224
	bx	lr
.L228:
	.align	2
.L227:
	.word	pBullets
	.size	updatePlayerBullets, .-updatePlayerBullets
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	pBullets,120,4
	.comm	box,24,4
	.comm	blackhole,24,4
	.comm	ufo,24,4
	.comm	bullets,120,4
	.comm	enemyArr,24,4
	.comm	jetpack,4,4
	.comm	poweupTimer,4,4
	.comm	boxWait,4,4
	.comm	gotBox,4,4
	.comm	powerup,4,4
	.comm	drawBH,4,4
	.comm	bhWait,4,4
	.comm	aboveOrBelow,4,4
	.comm	bhYposition,4,4
	.comm	bhTimer,4,4
	.comm	shieldTimer,4,4
	.comm	sheild,4,4
	.comm	loseDraw,4,4
	.comm	loseCondition,4,4
	.comm	enemyX,4,4
	.comm	enemyY,4,4
	.comm	yPosition,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
