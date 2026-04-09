.data 
	msg1: .asciiz "Primeiro angulo: "
	msg2: .asciiz "Segundo angulo: "
	msg3: .asciiz "terceiro angulo e "
	msg4: .asciiz "\n"
	
.text


.globl main

main:
	#mostra primeira mensagem 
	li $v0, 4
	la $a0, msg1
	syscall
	
	#le primeiro numero
	li $v0, 5
	syscall
	add $t1, $v0, 0

	#mostra segunda mensagem
	li $v0, 4
	la $a0 msg2
	syscall 
	
	#le segundo numero
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#calcula o terceiro angulo
	add $t1, $t1, $t2
	sub $t1, $t1, 180
	mul $t1, $t1, -1
	
	#mostra o terceiro angulo
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	
	
	
	
	