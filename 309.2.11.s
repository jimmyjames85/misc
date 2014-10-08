.data

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
	.word 29
	.word 30
	.word 17
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0

	

	.text
.globl main
	
main:
	lui  $a0, 0x1001 	#base addr of A is in a0
	lui  $a1, 0x1001 	#base addr of B is in a1
	addi $a1, 4000
	addi $s0, $zero, 7	# c=7
loop:
	addi $t0, $zero, 0	# t0 = 0
	slti $t1, $t0, 404
	beq  $t1, $zero, end
	add  $t1, $a0, $t0
	add  $t2, $a1, $s0
	lw   $t2, 0($t2)
	add  $t2, $t2, $s0
	sw   $t2, 0($t1)
	addi $t0, $t0, 4
end:	
done: 
	jr $ra
