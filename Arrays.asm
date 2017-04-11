.data
	myArray: .space 12

.text
	
	li $s0,4
	li $s1,10
	li $s2,12
	
	li $t0, 0
	
	sw $s0, myArray($t0)
	addi $t0, $t0, 4 #Increment array position by multiples of 4
	
	sw $s1, myArray($t0)
	addi $t0, $t0, 4 #Increment array position by multiples of 4
	
	sw $s2, myArray($t0)