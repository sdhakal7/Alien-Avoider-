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
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"collide with enemy\000"
	.align	2
.LC1:
	.ascii	"collide with bullet\000"
	.align	2
.LC2:
	.ascii	"collide with ufo\000"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	game.part.0, %function
game.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4352
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #64
	strh	r1, [r2]	@ movhi
	ldr	r4, .L27
	sub	sp, sp, #20
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L27+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L27+8
	ldr	r1, .L27+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L27+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+20
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L2
	ldr	r3, .L27+24
	ldrh	r3, [r3]
	tst	r3, #256
	moveq	r2, #3
	ldreq	r3, .L27+28
	streq	r2, [r3]
.L2:
	ldr	r3, .L27+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+68
	mov	lr, pc
	bx	r3
	mov	r3, #16
	ldr	r2, .L27+72
	ldr	r6, .L27+76
	ldr	r1, [r2, #4]
	ldr	r2, [r2]
	mov	r0, #5
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r3, [sp, #12]
	mov	r2, r3
	str	r3, [sp, #8]
	ldr	r1, [r6]
	ldr	r7, .L27+80
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L3
	ldr	r3, .L27+84
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24
.L3:
	mov	r5, #16
	ldr	r4, .L27+88
	ldr	r9, .L27+84
	ldr	fp, .L27+92
	ldr	r10, .L27+96
	add	r8, r4, #120
.L5:
	mov	r3, #16
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	mov	r2, r3
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r0, #5
	str	r5, [sp, #12]
	str	r5, [sp, #8]
	ldr	r1, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	add	r4, r4, #24
	beq	.L4
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L25
.L4:
	cmp	r4, r8
	bne	.L5
	mov	r3, #16
	ldr	r4, .L27+100
	ldr	r1, [r4, #4]
	ldr	r2, [r4]
	mov	r0, #5
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r3, [sp, #12]
	mov	r2, r3
	str	r3, [sp, #8]
	ldr	r1, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L6
	ldr	r1, [r6]
.L7:
	mov	r3, #16
	ldr	r4, .L27+104
	ldr	r0, [r4, #4]
	ldr	r2, [r4]
	str	r0, [sp, #4]
	str	r2, [sp]
	mov	r0, #5
	mov	r2, r3
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L1
	ldr	r3, .L27+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1
	ldr	r3, [r4, #20]
	cmp	r3, #1
	beq	.L26
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L25:
	mov	r0, fp
	mov	lr, pc
	bx	r10
	mov	r3, #4
	ldr	r2, .L27+28
	str	r3, [r2]
	b	.L4
.L6:
	ldr	r3, .L27+84
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r1, [r6]
	bne	.L7
	ldr	r3, [r4, #4]
	cmp	r3, r1
	bge	.L7
	ldr	r3, .L27+96
	ldr	r0, .L27+108
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L27+28
	ldr	r1, [r6]
	str	r2, [r3]
	b	.L7
.L24:
	ldr	r3, .L27+96
	ldr	r0, .L27+112
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L27+28
	str	r2, [r3]
	b	.L3
.L26:
	ldr	r3, .L27+96
	ldr	r0, .L27+112
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L27+28
	str	r2, [r3]
	b	.L1
.L28:
	.align	2
.L27:
	.word	DMANow
	.word	gamescreenTiles
	.word	100726784
	.word	gamescreenMap
	.word	gamescreenPal
	.word	oldButtons
	.word	buttons
	.word	state
	.word	drawGame
	.word	gameControls
	.word	moveEnemy
	.word	enemyShoot
	.word	updateBullets
	.word	moveUFO
	.word	moveBH
	.word	moveBox
	.word	playerShoot
	.word	updatePlayerBullets
	.word	enemyArr
	.word	yPosition
	.word	collision
	.word	sheild
	.word	bullets
	.word	.LC1
	.word	mgba_printf
	.word	ufo
	.word	blackhole
	.word	.LC2
	.word	.LC0
	.size	game.part.0, .-game.part.0
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r3, #67108864
	mov	r1, #7936
	mov	ip, #8064
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L37
	ldr	r7, .L37+4
	str	r2, [r5]
	str	r2, [r7]
	ldr	r0, .L37+8
	ldr	r2, .L37+12
	ldr	r4, .L37+16
	strh	r1, [r3]	@ movhi
	sub	r1, r1, #376
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L36
.L30:
	mov	r4, #0
	mov	r3, #224
	ldr	r6, .L37+20
	ldr	r1, .L37+24
	ldr	r2, .L37+28
	ldr	r0, .L37+32
	str	r4, [r5]
	str	r3, [r6]
	ldr	r5, .L37+36
	str	r4, [r6, #20]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r7]
	str	r4, [r0]
	mov	lr, pc
	bx	r5
	mov	ip, #3
	mov	r1, #2
	ldr	r2, .L37+40
	smull	lr, r3, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #5
	add	r2, r2, r2, lsl ip
	ldr	r3, .L37+44
	sub	r2, r0, r2, lsl #4
	ldr	r0, [r6]
	str	r1, [r6, #8]
	str	r2, [r6, #4]
	add	r1, r3, #120
	add	r2, r2, #8
.L31:
	str	r4, [r3, #20]
	stm	r3, {r0, r2, ip}
	add	r3, r3, #24
	cmp	r1, r3
	bne	.L31
	mov	r3, #224
	ldr	r6, .L37+48
	str	r3, [r6]
	str	r4, [r6, #20]
	mov	lr, pc
	bx	r5
	mov	r1, #3
	mov	lr, #4
	mov	ip, #10
	mov	r5, #0
	ldr	r3, .L37+40
	smull	r7, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl r1
	sub	r0, r0, r3, lsl lr
	ldr	r3, .L37+52
	ldr	r2, .L37+56
	str	ip, [r3, #8]
	str	r4, [r3, #20]
	str	r4, [r3]
	str	r4, [r3, #4]
	stmib	r6, {r0, lr}
	ldr	r3, .L37+60
	str	ip, [r2, #8]
	str	r4, [r2, #20]
	str	r4, [r2]
	str	r4, [r2, #4]
	add	r2, r3, #120
.L32:
	str	r5, [r3, #20]
	str	r5, [r3]
	str	r5, [r3, #4]
	str	r1, [r3, #8]
	add	r3, r3, #24
	cmp	r2, r3
	bne	.L32
	ldr	r4, .L37+64
	mov	r3, #3072
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L37+68
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+72
	ldr	r1, .L37+76
	mov	lr, pc
	bx	r4
	mov	r3, #96
	mov	r0, #3
	ldr	r2, .L37+80
	ldr	r1, .L37+84
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+88
	ldr	r1, .L37+92
	mov	lr, pc
	bx	r4
	mov	r3, #96
	mov	r0, #3
	ldr	r2, .L37+96
	ldr	r1, .L37+84
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+100
	ldr	r1, .L37+104
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L37+108
	mov	lr, pc
	bx	r4
	ldr	r2, .L37+112
	ldr	r3, .L37+116
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L36:
	ldr	r3, .L37+120
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+128
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L37+132
	ldr	r3, .L37+136
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4]
	b	.L30
.L38:
	.align	2
.L37:
	.word	vOffS
	.word	hOffS
	.word	7684
	.word	7180
	.word	music
	.word	enemyArr
	.word	fliparoo
	.word	vOffI
	.word	loseFrame
	.word	rand
	.word	954437177
	.word	bullets
	.word	ufo
	.word	blackhole
	.word	box
	.word	pBullets
	.word	DMANow
	.word	startAgainTiles
	.word	100726784
	.word	startAgainMap
	.word	100679680
	.word	colorsTiles
	.word	100724736
	.word	anotherRocketMap
	.word	100712448
	.word	100720640
	.word	planetsHopeMap
	.word	colorsPal
	.word	state
	.word	waitForVBlank
	.word	setupSounds
	.word	setupSoundInterrupts
	.word	spaceMusic_length
	.word	spaceMusic_data
	.word	playSoundA
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	ldr	r2, .L41
	push	{r4, lr}
	ldr	r3, .L41+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L41+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	state
	.word	initializeSprites
	.word	loseCondition
	.size	goToGame, .-goToGame
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #4
	ldr	r3, .L44
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L47
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L50
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	ldr	r2, .L54
	ldr	r3, .L54+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	state
	.word	waitForVBlank
	.size	goToStart, .-goToStart
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L58
	ldr	r3, [r3]
	cmp	r3, #4
	bxeq	lr
	b	game.part.0
.L59:
	.align	2
.L58:
	.word	state
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #160
	push	{r4, r5, r6, lr}
	ldr	r4, .L67
	ldr	r6, .L67+4
	strh	r3, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #32]	@ movhi
	strh	r3, [r4, #40]	@ movhi
	strh	r3, [r4, #48]	@ movhi
	mov	lr, pc
	bx	r6
	ldr	r5, .L67+8
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1504
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+20
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L67+28
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L60
	ldr	r3, .L67+32
	ldrh	r3, [r3]
	ands	r4, r3, #2
	beq	.L66
.L60:
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	ldr	r3, .L67+36
	str	r4, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L67+40
	str	r4, [r3]
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, lr}
	b	initialize
.L68:
	.align	2
.L67:
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	l_screenTiles
	.word	100726784
	.word	l_screenMap
	.word	l_screenPal
	.word	oldButtons
	.word	buttons
	.word	loseCondition
	.word	state
	.size	lose, .-lose
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #1024
	mov	r6, #67108864
	ldr	r7, .L77
	strh	r5, [r6]	@ movhi
	mov	lr, pc
	bx	r7
	ldr	r4, .L77+4
	mov	r0, #3
	ldr	r3, .L77+8
	ldr	r2, .L77+12
	ldr	r1, .L77+16
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #3
	ldr	r2, .L77+20
	ldr	r1, .L77+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L77+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+32
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L70
	ldr	r3, .L77+36
	ldr	r4, .L77+40
	ldrh	r2, [r3]
.L71:
	ldr	r3, [r4]
	tst	r2, #64
	subeq	r3, r3, #1
	streq	r3, [r4]
	tst	r2, #128
	mov	r2, #67108864
	addeq	r3, r3, #1
	streq	r3, [r4]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #26]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L70:
	ldr	r5, .L77+36
	ldrh	r2, [r5]
	ands	r3, r2, #1
	ldr	r4, .L77+40
	bne	.L71
	ldr	r2, .L77+44
	str	r3, [r4]
	strh	r3, [r6, #26]	@ movhi
	strh	r3, [r6, #24]	@ movhi
	ldr	r3, .L77+48
	str	r3, [r2]
	mov	lr, pc
	bx	r7
	bl	initialize
	ldrh	r2, [r5]
	b	.L71
.L78:
	.align	2
.L77:
	.word	waitForVBlank
	.word	DMANow
	.word	11360
	.word	100696064
	.word	instructionsscreenTiles
	.word	100722688
	.word	instructionsscreenMap
	.word	instructionsscreenPal
	.word	oldButtons
	.word	buttons
	.word	vOffI
	.word	state
	.word	start
	.size	instructions, .-instructions
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r4, .L89+4
	mov	r3, #64
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L89+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L89+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L89+24
	ldr	r3, .L89+28
	strh	r1, [r2, #2]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L80
	ldr	r2, .L89+32
	ldrh	r2, [r2]
	tst	r2, #256
	moveq	r1, #2
	ldreq	r2, .L89+36
	streq	r1, [r2]
.L80:
	tst	r3, #32
	beq	.L79
	ldr	r3, .L89+32
	ldrh	r3, [r3]
	tst	r3, #32
	bne	.L79
	mov	r3, #160
	ldr	r5, .L89+40
	ldr	r2, .L89+44
	strh	r3, [r5]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #24]	@ movhi
	strh	r3, [r5, #32]	@ movhi
	strh	r3, [r5, #40]	@ movhi
	strh	r3, [r5, #48]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	b	initialize
.L79:
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	hideSprites
	.word	DMANow
	.word	pausescreenTiles
	.word	100726784
	.word	pausescreenMap
	.word	pausescreenPal
	.word	28703
	.word	oldButtons
	.word	buttons
	.word	state
	.word	shadowOAM
	.word	waitForVBlank
	.size	pause, .-pause
	.align	2
	.global	loseFrameColor
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseFrameColor, %function
loseFrameColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r1, .L95
	ldr	r2, .L95+4
	mla	r2, r3, r2, r1
	ldr	ip, .L95+8
	ldr	r1, .L95+12
	cmp	r2, ip
	ldr	r2, [r1]
	addls	r2, r2, #1
	strls	r2, [r1]
	mov	ip, #31
	ldrls	r3, [r0]
	mvn	r1, #32768
	tst	r2, #1
	mov	r2, #83886080
	add	r3, r3, #1
	strheq	ip, [r2, #2]	@ movhi
	strheq	r1, [r2, #4]	@ movhi
	strhne	ip, [r2, #4]	@ movhi
	strhne	r1, [r2, #2]	@ movhi
	str	r3, [r0]
	bx	lr
.L96:
	.align	2
.L95:
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	fliparoo
	.size	loseFrameColor, .-loseFrameColor
	.align	2
	.global	moveBackground
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveBackground, %function
moveBackground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L101
	ldr	r1, .L101+4
	ldr	r3, .L101+8
	ldr	r2, [r0]
	mla	r3, r2, r3, r1
	ldr	r1, .L101+12
	cmp	r3, r1
	str	lr, [sp, #-4]!
	bhi	.L98
	mov	r1, #67108864
	mov	lr, #0
	ldr	ip, .L101+16
	ldr	r3, [ip]
	add	r3, r3, #3
	str	r3, [ip]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #22]	@ movhi
	strh	lr, [r1, #20]	@ movhi
.L98:
	add	r3, r2, r2, lsl #4
	ldr	r1, .L101+20
	add	r3, r3, r3, lsl #8
	ldr	ip, .L101+24
	add	r3, r3, r3, lsl #16
	sub	r1, r1, r3
	cmp	r1, ip
	bcs	.L99
	mov	r1, #67108864
	mov	lr, #0
	ldr	ip, .L101+28
	ldr	r3, [ip]
	add	r3, r3, #1
	str	r3, [ip]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #28]	@ movhi
	strh	lr, [r1, #30]	@ movhi
.L99:
	add	r2, r2, #1
	str	r2, [r0]
	ldr	lr, [sp], #4
	bx	lr
.L102:
	.align	2
.L101:
	.word	.LANCHOR0
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	vOffS
	.word	143165576
	.word	286331153
	.word	hOffS
	.size	moveBackground, .-moveBackground
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L121
	mov	r0, #3
	ldr	r4, .L121+4
	ldr	r6, .L121+8
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r3, #67108864
	mov	r2, #6912
	ldr	r5, .L121+12
	ldr	r1, [r5, #4]
	cmp	r1, #0
	strh	r2, [r3]	@ movhi
	beq	.L118
.L104:
	ldr	r5, .L121+16
	ldrh	r3, [r5]
	tst	r3, #16
	beq	.L105
	ldr	r2, .L121+20
	ldrh	r4, [r2]
	ands	r4, r4, #16
	beq	.L119
.L105:
	tst	r3, #32
	bne	.L120
.L106:
	bl	moveBackground
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L103
	ldr	r3, .L121+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L103
	ldr	r3, .L121+24
	ldr	r1, .L121+28
	ldr	lr, .L121+32
	ldr	r2, .L121+36
	ldr	ip, .L121+40
	ldr	r0, .L121+44
	strh	r3, [r1]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [ip]	@ movhi
	add	ip, ip, #1024
	strh	r3, [r0]	@ movhi
	add	r2, r2, #476
	strh	r3, [r1, #170]	@ movhi
	add	ip, ip, #12
	sub	r1, r1, #204
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [lr, #232]	@ movhi
	sub	r2, r2, #524
	strh	r3, [ip, #14]	@ movhi
	sub	lr, lr, #48
	strh	r3, [r0, #78]	@ movhi
	sub	ip, ip, #672
	strh	r3, [r1, #2]	@ movhi
	add	r1, r1, #356
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	add	r2, r2, #236
	strh	r3, [ip, #12]	@ movhi
	sub	lr, lr, #264
	strh	r3, [r0, #60]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [ip, #-8]	@ movhi
	strh	r3, [r0, #-12]	@ movhi
	strh	r3, [r1, #90]	@ movhi
	strh	r3, [r2, #254]	@ movhi
	strh	r3, [r2, #246]	@ movhi
.L103:
	pop	{r4, r5, r6, lr}
	bx	lr
.L120:
	ldr	r3, .L121+20
	ldrh	r3, [r3]
	ands	r3, r3, #32
	bne	.L106
	mov	r2, #67108864
	ldr	r0, .L121+48
	ldr	r1, .L121+52
	str	r3, [r0]
	str	r3, [r1]
	strh	r3, [r2, #20]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r6
	mov	r2, #1
	ldr	r3, .L121+56
	str	r2, [r3]
	b	.L106
.L118:
	mov	r3, #3072
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L121+60
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+64
	ldr	r1, .L121+68
	mov	lr, pc
	bx	r4
	mov	r3, #96
	mov	r0, #3
	ldr	r2, .L121+72
	ldr	r1, .L121+76
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+80
	ldr	r1, .L121+84
	mov	lr, pc
	bx	r4
	mov	r3, #96
	mov	r0, #3
	ldr	r2, .L121+88
	ldr	r1, .L121+76
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+92
	ldr	r1, .L121+96
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r3, [r5, #4]
	b	.L104
.L119:
	mov	r3, #67108864
	mov	r1, #2
	ldr	r2, .L121+48
	ldr	r0, .L121+52
	str	r4, [r2]
	ldr	r2, .L121+56
	str	r4, [r0]
	strh	r4, [r3, #20]	@ movhi
	strh	r4, [r3, #22]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	ldr	r3, .L121+100
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+104
	str	r4, [r3]
	b	.L106
.L122:
	.align	2
.L121:
	.word	colorsPal
	.word	DMANow
	.word	waitForVBlank
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	4098
	.word	100721496
	.word	100721888
	.word	100721380
	.word	100721412
	.word	100721472
	.word	vOffS
	.word	hOffS
	.word	state
	.word	startAgainTiles
	.word	100726784
	.word	startAgainMap
	.word	100679680
	.word	colorsTiles
	.word	100724736
	.word	anotherRocketMap
	.word	100712448
	.word	100720640
	.word	planetsHopeMap
	.word	initializeSprites
	.word	loseCondition
	.size	start, .-start
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r2, .L135
	push	{r4, r7, fp, lr}
	ldr	r3, .L135+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r6, .L135+8
	ldr	r9, .L135+12
	ldr	r5, .L135+16
	ldr	fp, .L135+20
	ldr	r10, .L135+24
	ldr	r7, .L135+28
	ldr	r4, .L135+32
	ldr	r8, .L135+36
.L124:
	ldr	r2, [r6]
	ldrh	r3, [r9]
.L125:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L125
.L127:
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L126
.L126:
	ldr	r3, .L135+40
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r7
	mov	r0, r8
	ldr	r3, .L135+44
	mov	lr, pc
	bx	r3
	b	.L124
.L128:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r7
	b	.L124
.L130:
	ldr	r3, .L135+48
	mov	lr, pc
	bx	r3
	b	.L124
.L131:
	mov	lr, pc
	bx	fp
	b	.L124
.L129:
	ldr	r3, .L135+52
	mov	lr, pc
	bx	r3
	b	.L124
.L136:
	.align	2
.L135:
	.word	music
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	pause
	.word	hideSprites
	.word	67109120
	.word	loseFrame
	.word	lose
	.word	loseFrameColor
	.word	instructions
	.word	game.part.0
	.size	main, .-main
	.comm	state,4,4
	.comm	music,4,4
	.comm	hOffS,4,4
	.comm	vOffS,4,4
	.comm	vOffI,4,4
	.comm	bullet,52,4
	.comm	enemy,52,4
	.comm	fliparoo,4,4
	.comm	loseFrame,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
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
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	timePassed.4351, %object
	.size	timePassed.4351, 4
timePassed.4351:
	.space	4
	.type	startStart.4329, %object
	.size	startStart.4329, 4
startStart.4329:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
