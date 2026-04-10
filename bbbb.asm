.data 
	msg1: .asciiz "tempo de percurso: "
	msg2: .asciiz "velocidade media: "
	msg3: .asciiz "litros de gasolina gasta: "
	
.text 

.globl main


main:
	#exibe e pega entradas
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
	
	#!calcula distancia 
	mul $t1, $t1, $v0
	#calcula quantidade de litros gasto
	div $t1, $t1, 12
	
	li $v0, 4
	la $a0, msg3
	syscall 
	
	li $v0, 1
	add $a0, $t1, 0
	syscall