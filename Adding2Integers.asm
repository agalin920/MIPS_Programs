.data
	number1: .word 5
	number2: .word 10

.text 
	lw $s0, number1 #s0=20
	lw $s1, number2 #s1=8
	
	add $t0, $s1, $s0
	
	li $v0, 1
	move $a0, $t0 #moving value from t0 to a0
	syscall