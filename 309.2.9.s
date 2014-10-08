.data
	.word 90
	.word 1
	.word 2
	.word 333
	.word 4
	.word 5
	.word 6
	.word 7
	.word 8
	.word 91
	.word 10
	.word 11
	.word 12
	.word 13
	.word 14
	.word 15
	.word 16
	.word 17
	.word 18
	.word 19
	.word 20
	.word 21
	.word 22
	.word 23
	.word 24
	.word 25
	.word 26
	.word 27
	.word 28
	.word 29
	.word 30

.text
.globl main
	
main:
	lui $s0, 0x1001 	#base addr of B is in s0

	lw $t0, 0($s0)
	addi $t1, $s0, 40
	addi $s0, $s0, 4
loop:
	beq  $s0, $t1, done
	lw $t2, 0($s0)
	blt $t2, $t0, skip
	addi $t0, $t2, 0
skip:
	addi $s0, $s0, 4
	j loop
done: 
	jr $ra
