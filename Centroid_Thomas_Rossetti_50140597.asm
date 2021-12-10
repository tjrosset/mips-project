.data

#HARD CODED INPUTS
#Inputs for centroid points labeled centroidE and centroidI | in type .word
#Inputs for the 10 data points labeled A-J | Stored in type .word

centroidE:	.word 2, 4	#centroid inputs in form (x,y)
centroidI:	.word 6, 2	#these are the initial centroids

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


test: .asciiz "New Left Centroid is ("		#strings for output
test2: .asciiz "New Right Centroid is ("
test3: .asciiz ","
test4: .asciiz ")"
nl: .asciiz "\n"
endbracket: .asciiz "}"

.text


main:
	la $s0, test
	la $s1, test2



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

	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endif
Else:

	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endif:

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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifb
Elseb:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifb:

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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifc
Elsec:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifc:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifd
Elsed:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifd:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endife
Elsee:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endife:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endiff
Elsef:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endiff:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifg
Elseg:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifg:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifh
Elseh:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifh:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifi
Elsei:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifi:


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
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s5, $s5, $t6
	add $s2, $s2, $t7
	addi $s6, $s6, 1
	j Endifj
Elsej:
	lw $t6, 0($a3)		#gets x
	lw $t7, 4($a3)		#gets y
	add $s3, $s3, $t6
	add $s4, $s4, $t7
	addi $s7, $s7, 1
Endifj:

	div $s5, $s5, $s6
	mflo $s5
	div $s2, $s2, $s6
	mflo $s2
	div $s3, $s3, $s7
	mflo $s3
	div $s4, $s4, $s7
	mflo $s4

	li $v0, 4
	la $a0,test
	syscall
	li $v0, 1
	add $a0, $s5, $zero
	syscall
	li $v0, 4
	la $a0,test3
	syscall
	li $v0, 1
	add $a0, $s2, $zero
	syscall
	li $v0, 4
	la $a0,test4
	syscall

	li $v0, 4
	la $a0,nl
	syscall

	li $v0, 4
	la $a0,test2
	syscall
	li $v0, 1
	add $a0, $s3, $zero
	syscall
	li $v0, 4
	la $a0,test3
	syscall
	li $v0, 1
	add $a0, $s4, $zero
	syscall
	li $v0, 4
	la $a0,test4
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