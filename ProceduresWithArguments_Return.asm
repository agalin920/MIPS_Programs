.data
	
.text
	#Caller
	main:	
	
	li $a0, 50		#By convention arguments are stored in a registers
	li $a1, 100
	
	jal addNumbers #Jump and link - Runs procedure
	jal printNumbers

	
	
	#Tell system the program is done. End of program MUST ALWAYS BE PRESENT
	li $v0,10
	syscall
	
	
	
	#Called procedure
	printNumbers:
		
		li $v0,1
		move $a0, $v1
		syscall
		
		jr $ra #returning to where it once came
		
	addNumbers:
		add $v1, $a0, $a1 #By convention sum is stored in v1 because v registers are for return values
		jr $ra