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
		addi $sp, $sp, -4  # -4 allocates memory to stack
		sw $s0, 0($sp)     # save the value to s0 to the first location of the stack pointer // Multiples of 4 to point
		
		addi $s0,$s0,30	
		
		#Print new value in function
		li $v0,1
		move $a0, $s0
		syscall
		
		lw $s0,0($sp)
		addi $sp, $sp, 4 # now old value is available in main
		
		jr $ra
		
		
	