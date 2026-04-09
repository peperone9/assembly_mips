.data 
	msg1: .asciiz "valor 1: "
	msg2: .asciiz "valor 2: "	
	msg3: .asciiz "\n"
.text 
.globl main

main:
	li $v0, 4
	la $a0, msg1
	syscall 
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall 
	add $t2, $v0, 0
	
	add $t3, $t1, 0 
	add $t1, $t2, 0
	add $t2, $t3, 0
	
	li $v0, 4
	la $a0, msg1
	syscall 
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall 
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	