.data 
	msg1: .asciiz "primeiro valor: "
	msg2: .asciiz "segundo valor: "
	msg3: .asciiz "maior: "
	erro1: .asciiz "n existe maior, os numero sao iguais"
.text 

.globl main

main:
	#exibe mensagem de entrada
	li $v0, 4
	la $a0, msg1
	syscall 
	
	#le primeiro valor
	li $v0, 5 
	syscall
	add $t1, $v0, 0
	
	#exibe segunda mensagem de entrada
	li $v0, 4
	la $a0, msg2 
	syscall 
	
	#le o segundo valor
	li $v0, 5
	syscall 
	add $t2, $v0, 0
	
	bgt $t1, $t2, pmaior
	bgt $t2, $t1, smaior
	j igual

pmaior:
	li $v0, 4 
	la $a0, msg3
	syscall 
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	j fimse 
smaior:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	j fimse
igual:
	li $v0, 4
	la $a0, erro1
	syscall 
fimse:
	
	