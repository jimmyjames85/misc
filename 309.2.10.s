.data
	.word 4
	.word 1
	.word 2
	.word 333
	.word 4
	.word 5
	.word 6
	.word 0
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
	lui  $a0, 0x1001 	#base addr of B is in s0
	lui  $a1, 0x1001 	#base addr of B is in s0
	addi $a1, 44
loop:
	lw   $v1,0($a0)		# Read next word from source
	addi $v0,$v0, 1		# Increment count of words copied
	sw   $v1,0($a1)		# Write to destination
	addi $a0,$a0, 4		# Advance pointer to next source
	addi $a1,$a1, 4		# Advance pointer to next destination
	bne  $v1,$zero, loop	# Loop if word copied is ≠ 0
	addi $v0, -1
done: 
	jr $ra
