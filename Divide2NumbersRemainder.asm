.data

.text
	li $s0,30
	li $s1,4
	
	div $s0, $s1
	
	mflo $t0 #quotient
	mfhi $t1 #remainder
	
	li $v0,1
	move $a0,$t0
	syscall
	
	