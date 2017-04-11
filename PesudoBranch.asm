.data
	message: .asciiz "Hi, how are you?"
	
.text
	main:
		li $s0, 4
		li $s1,10
		
		bgt $s0, $s1, displayHi #Branch if greater than
		blt $s0, $s1, displayHi #Branch if less than
		bgtz $s0, displayHi #Branch if greater than 0
		
	li $v0,10
	syscall
	
	displayHi:
		li $v0,4
		la $a0, message
		syscall