.data
		
.text
	main:
		li $s0,10
		
		
		jal increaseMyRegister
		
		#Prints value
		li $v0,1
		move $a0, $s0
		syscall
	
	
	
	
	
	
	#Tell system the program is done. End of program MUST ALWAYS BE PRESENT
		li $v0,10
		syscall
		
	
	increaseMyRegister:
		addi $sp, $sp, -8  # we allocate 2 values because we also need to save the return adress since it is nested
		sw $s0, 0($sp)     # save the value to s0 to the first location of the stack pointer // Multiples of 4 to point
		sw $ra, 4($sp)     # save the return adress value to sp//Point to 4 since its next to up in the stack
		
		addi $s0,$s0,30	
		
		#Print new value in function
		jal printValue
		
		lw $s0,0($sp)     #Restore value after funcion call
		lw $ra,4($sp)     #Restore value after function call
		addi $sp, $sp, 4 # now old value is available in main
		
		jr $ra
		
		
	printValue:
		li $v0,1
		move $a0,$s0
		syscall
		jr $ra