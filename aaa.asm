.data
	msg1: .asciiz "primeiro valor: "
	msg2: .asciiz "segundo valor: "
	msg3: .asciiz "resultado: "
	
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
	
	bge $t1, $t2, pmenor 
	bge $t2, $t1, smenor
pmenor:
	sub $t1,  $t1, $t2
	j fimse
smenor:
	sub $t1, $t2, $t1
fimse:
	li $v0, 4
	la $a0, msg3
	syscall 
	
	li $v0, 1
	add $a0, $t1, 0
	syscall