.data
	number1: .word 50
	string1: .asciiz "A Message"

.text
	#Caller
	main:	
	
	#Calls function
	jal printNumber #Jump and link - Runs procedure
	jal printString
	
	#Tell system the program is done. End of program MUST ALWAYS BE PRESENT
	li $v0,10
	syscall
	
	
	
	#Called procedure
	printNumber:
		
		li $v0,1
		lw $a0,number1
		syscall
		
		jr $ra #returning to where it once came
		
	printString:
		li $v0,4
		la $a0,string1
		syscall
		
		jr $ra #returning to where it once came