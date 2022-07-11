#if 1

.syntax unified
.include "../Core/Src/regs.s"
.global mainasm
mainasm:
	// setup timer
	ldr R9, =TIM6
	mov R0, #1
	str R0, [R9, CNT]
	str R0, [R9, CR1]
	str R0, [R9, DIER]

mainloop:
	ldr r0, =counter
	ldrb r1, [r0, 0]
	add r1, #1
	strb r1, [r0, 0]
	bl delay

	b mainloop

delay:
	push { r0, lr }

	mov r0, #200
	bl HAL_Delay

	pop { r0, pc }

// R1: number, R2: 7seg enable bit
set_7seg:
	push { r0, r1, lr }
	ldr R0, =_7seg_table
	add R1, R0
	ldr R0, =GPIOC
	ldrb R1, [R1]
	orr R1, R2
	str R1, [R0, ODR]
	pop { r0, r1, pc }


.global HAL_TIM_PeriodElapsedCallback
HAL_TIM_PeriodElapsedCallback:
	push { r0, r1, r2, r3, r4, r5, lr }
	ldr r0, =counter
	ldrb r1, [r0, 0]

	and R3, R1, 0b11110000
	mov r3, r3, lsr 4
	and R4, R1, 0b00001111

	ldr r0, =current_seg
	ldrb r5, [r0, 0]
	cmp r5, #0
	bne .seg2

.seg1:
	mov r1, r3
	mov r2, #Bit12
	bl set_7seg
	mov r5, #1
	strb r5, [r0, 0]
	b .end

.seg2:
	mov r1, r4
	mov r2, #Bit11
	bl set_7seg
	mov r5, #0
	strb r5, [r0, 0]

.end:
	pop { r0, r1, r2, r3, r4, r5, pc }

	bx lr

/*
         - <--- Bit0
Bit5 -> | | <-- Bit1
         - <--- Bit6
Bit4 -> | | <-- Bit2
Bit3 --> - . <- Bit7
*/

.section .data
_7seg_table:
.byte 0b00111111
.byte 0b00000110
.byte 0b01011011
.byte 0b01001111
.byte 0b01100110
.byte 0b01101101
.byte 0b01111101
.byte 0b00000111
.byte 0b01111111
.byte 0b01101111
.byte 0b01110111
.byte 0b01111100
.byte 0b00111001
.byte 0b01011110
.byte 0b01111001
.byte 0b01110001

counter:
.byte 0x0

current_seg:
.byte 0x0

#endif
