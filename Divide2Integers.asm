.data

.text
	li $s0,30
	li $s1,5
	
	div $t0, $s0,$s1
	
	li $v0,1
	move $a0,$t0
	syscall
	
	