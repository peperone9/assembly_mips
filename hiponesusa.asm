#pegue a base e a alguta de um triangul0o e calcule sua area
.data
	msg1: .asciiz "Base do triangulo: "
	msg2: .asciiz "Altura do triangulo: "
		
.text

.globl main

main:
	li $v0, 4
	la $a0, msg1
	syscall 
	
	li $v0, 5
	syscall
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall 
	mul $t1, $v0, $t1
	
	div $t1, $t1, 2
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	
	

