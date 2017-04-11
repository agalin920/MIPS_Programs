.data
	message1: .asciiz "The numbers are equal"
	message2: .asciiz "Nothing happned."

.text
	main:
		li $s0, 20
		li $s1, 20
		
		beq $s0, $s1, numbersEqual
		
	
	
	
	li $v0, 10
	syscall
	
	
	numbersEqual:
		li $v0,4
		la $a0,message1
		syscall
		
		#Since it is not called u dont need the ja $ra