.data

#HARD CODED INPUTS
#p1 = data point in form (x,y) | Stored in type .word
#p2 = data point in form (x,y) | Stored in type .word

p1:	.word 9, 4	#input points
p2:	.word 7, 6

test: .asciiz "The euclidean distance is: "

.text


main:
	la $s0, test
	la $a2, p1
	la $a3, p2
	
	la $t3, p1
	lw $t6, 0($a2)		#gets p1's x
	lw $t7, 4($a2)		#gets p1's y
	
	la $t3, p2
	lw $t8, 0($a3)		#gets p2's x
	lw $t9, 4($a3)		#gets p2's y

	sub $t4, $t8, $t6
	sub $t5, $t9, $t7
	mult $t4, $t4
	mflo $t4
	mult $t5, $t5
	mflo $t5
	add $s7, $t4, $t5


	li $v0, 4		#print words
	la $a0, test
	syscall

	li $v0, 1             #print ed
	la $a0, ($s7)
	syscall

	li $v0,10
	syscall