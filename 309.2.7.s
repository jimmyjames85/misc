.text
.globl main
.ent main
main:
begin:
	addi $a0, $zero, 9	#a0<---input
	addi $t0, $zero, 0	#t0=0
	addi $t1, $zero, 1	#t1=1
loop:
	slt $t2, $a0, $t1	# if(a0<t1) then t2=1
	bne $t2, $zero, finish # if t2!=0 then goto finish
	add $t0, $t0, $t1	# t0+=t1
	addi $t1, $t1, 2	# t1 += 2
	j loop	# goto loop
finish:
	add $v0, $t0, $zero
	add $t4, $t0, $zero
	
### exit
	li $v0, 10
	syscall
.end main
