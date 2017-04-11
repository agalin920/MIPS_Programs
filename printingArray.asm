.data
	myArray: .space 12 # three values

.text
	
	li $s0,4
	li $s1,10
	li $s2,12
	
	#Index at 0
	li $t0, 0
	
	sw $s0, myArray($t0)
	addi $t0, $t0, 4 #Increment array position by multiples of 4
	
	sw $s1, myArray($t0)
	addi $t0, $t0, 4 #Increment array position by multiples of 4
	
	sw $s2, myArray($t0)
	
	li $t0, 0 #clear index to begin printing through
	
	
	
	while:
		beq $t0,12, exit
		
		lw $t6, myArray($t0)
		
		addi $t0,$t0,4
		
		#Print current number
		li $v0,1
		move $a0,$t6
		syscall
		
		j while
		
		
	exit:
		li $v0,10
		syscall