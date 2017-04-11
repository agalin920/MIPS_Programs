.data
	message1: .asciiz "The number is less than the other"
	
.text
	main:
	li $s0, 1
	li $s1, 200
	
	slt $s3, $s0, $s1 # sets $s3 to 1 if true or 0 if fakse// true if s0 is less than s1
	bne $s3, $zero,printMessage        #branches if #s3 is not equal to 0 aka its tru
	
	li $v0,10
	syscall
	
	printMessage:
	li $v0,4
	la $a0,message1
	syscall