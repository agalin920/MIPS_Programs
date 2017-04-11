.data
	
.text
	li $s0,10	
	li $s1,4
	
	#addi $s0,$zero,10 #Not taking data from memory, s0 = zero + 10
	#addi $s1,$zero,4 
	
	mul $t0, $s0, $s1 # mult takes three arguments while mult only takes two
	
	li $v0, 1
	move $a0, $t0
	syscall
