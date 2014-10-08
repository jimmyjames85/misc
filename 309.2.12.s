.data
	.word 3
	.word 3
	.word 3
	.word 3
	.word 3
	.word 3
	.word 3
	.word 3
	.word 0
	.word 1
	.word 2
	.word 3
	.word 4
	.word 5
	.word 6
	.word 7
	.word 8
	.word 9
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
	.word 31
	.word 32
	.word 33
	.word 34
	.word 35
	.word 36
	.word 37
	.word 38
	.word 39
	.word 40
	.word 41
	.word 42
	.word 43
	.word 44
	.word 45
	.word 46
	.word 47
	.word 48
	.word 49
	.word 50
	.word 51
	.word 52
	.word 53
	.word 54
	.word 55
	.word 56
	.word 57
	.word 58
	.word 59
	.word 60
	.word 61
	.word 62
	.word 63
	.word 64
	.word 65
	.word 66
	.word 67
	.word 68
	.word 69
	.word 70
	.word 71
	.word 72
	.word 73
	.word 74
	.word 75
	.word 76
	.word 77
	.word 78
	.word 79
	.word 80
	.word 81
	.word 82
	.word 83
	.word 84
	.word 85
	.word 86
	.word 87
	.word 88
	.word 89
	.word 90
	.word 91
	.word 92
	.word 93
	.word 94
	.word 95
	.word 96
	.word 97
	.word 98
	.word 99
	
 
.text
.globl main
	
main:
	addi $s5, $zero, 3  # k = 3 //condition
	addi $s3, $zero, 0  # i = 0 //starting point
	addi $s4, $zero, 2  # j = 2 //increment by j
	lui  $s6, 0x1001    # base addr of a


	sll  $t2, $s4, 2    # t2 <- 4*j
	sll  $t1, $s3, 2    # t1 <- 4*i
	add  $t1, $s6, $t1  # t1 <- base addr of a[i]
loop:
	lw $t0, 0($t1)	    # t0 <- a[i]
	add $t1, $t1, $t2   # t1 <- base addr of a[i + j]
	beq $t0, $s5, loop  # t0 <- 
exit:
done: 
	jr $ra
