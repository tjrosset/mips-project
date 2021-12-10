.data

#HARD CODED INPUTS
#Inputs for centroid points labeled centroidE and centroidI | in type .word
#Inputs for the 10 data points labeled A-J | Stored in type .word

centroidE:	.word 7, 3	#centroid inputs in form (x,y)
centroidI:	.word 4, 1

A:	.word 2, 2	#Ten input points in form (x,y) and labled similar to project paper
B:	.word 5, 3
C:	.word 1, 5
D:	.word 3, 3
E:	.word 2, 4
F:	.word 2, 1
G:	.word 4, 2
H:	.word 5, 1
I:	.word 6, 2
J:	.word 5, 2


test: .asciiz " is in Cluster 1"		#strings for output
test2: .asciiz " is in Cluster 2"
nl: .asciiz "\n"
endbracket: .asciiz "}"

.text


main:
	la $s0, test
	la $s1, test2
	addi $t8, $zero, 0	#index for cluster 1
	addi $t9, $zero, 0	#index for cluster 2	


#checks A
	la $a2, centroidE
	la $a3, A
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Else
	li $t5, 'A'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endif
Else:
	li $t5, 'A'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endif:
	li $v0, 4
	la $a0,nl
	syscall
#checks B
	la $a2, centroidE
	la $a3, B
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elseb
	li $t5, 'B'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifb
Elseb:
	li $t5, 'B'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifb:
	li $v0, 4
	la $a0,nl
	syscall
#checks C
	la $a2, centroidE
	la $a3, C
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elsec
	li $t5, 'C'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifc
Elsec:
	li $t5, 'C'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifc:
	li $v0, 4
	la $a0,nl
	syscall

#checks D
	la $a2, centroidE
	la $a3, D
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elsed
	li $t5, 'D'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifd
Elsed:
	li $t5, 'D'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifd:
	li $v0, 4
	la $a0,nl
	syscall

#checks E
	la $a2, centroidE
	la $a3, E
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elsee
	li $t5, 'E'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endife
Elsee:
	li $t5, 'E'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endife:
	li $v0, 4
	la $a0,nl
	syscall

#checks F
	la $a2, centroidE
	la $a3, F
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elsef
	li $t5, 'F'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endiff
Elsef:
	li $t5, 'F'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endiff:
	li $v0, 4
	la $a0,nl
	syscall

#checks G
	la $a2, centroidE
	la $a3, G
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elseg
	li $t5, 'G'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifg
Elseg:
	li $t5, 'G'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifg:
	li $v0, 4
	la $a0,nl
	syscall

#checks H
	la $a2, centroidE
	la $a3, H
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elseh
	li $t5, 'H'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifh
Elseh:
	li $t5, 'H'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifh:
	li $v0, 4
	la $a0,nl
	syscall

#checks I
	la $a2, centroidE
	la $a3, I
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elsei
	li $t5, 'I'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifi
Elsei:
	li $t5, 'I'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifi:
	li $v0, 4
	la $a0,nl
	syscall

#checks J
	la $a2, centroidE
	la $a3, J
	jal findED
	addi $t0, $v1, 0
	la $a2, centroidI
	jal findED
	addi $t1, $v1, 0
	slt $t2, $t0, $t1
	bne $t2, 1, Elsej
	li $t5, 'J'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test
	syscall
	j Endifj
Elsej:
	li $t5, 'J'
	li $v0, 11
	move $a0, $t5
	syscall	
	li $v0, 4
	la $a0,test2
	syscall
Endifj:
	li $v0, 4
	la $a0,nl
	syscall


	li $v0,10	#end main
	syscall

findED:

	lw $t6, 0($a2)		#gets p1's x
	lw $t7, 4($a2)		#gets p1's y
	
	lw $t8, 0($a3)		#gets p2's x
	lw $t9, 4($a3)		#gets p2's y

	sub $t4, $t8, $t6
	sub $t5, $t9, $t7
	mult $t4, $t4
	mflo $t4
	mult $t5, $t5
	mflo $t5
	add $v1, $t4, $t5

	jr $ra