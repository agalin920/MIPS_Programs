.data
	
.text
	main:
		#i = 0
		li $t0, 0
	
	while:
		bgt $t0,10,exit
		
		addi $t0, $t0, 1 #i++
		
		j while
		
	
	exit:		