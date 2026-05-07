.data
	msg1: .asciiz "Digite o primeiro numero: "
	msg2: .asciiz "Digite o segundo numero: "
	msg3:  .asciiz "Soma dos impares: "
.text

main:
   	li $v0, 4
    	la $a0, msg1
    	syscall

    	li $v0, 5
    	syscall
    	add $t0, $v0, 0

    	li $v0, 4
    	la $a0, msg2
    	syscall

    	li $v0, 5
    	syscall
    	add $t1, $v0, 0

    	ble $t0, $t1, ordem

    	add $t2, $t1, 0
    	add $t3, $t0, 0
    	j inicio

ordem:
    	add $t2, $t0, $zero
    	add $t3, $t1, $zero

inicio:
    	li $t4, 0

    	addi $t2, $t2, 1

loop:
	bge $t2, $t3, fim

    	andi $t5, $t2, 1
    	beq $t5, 0, prox

    	add $t4, $t4, $t2

prox:
    	addi $t2, $t2, 1
    	j loop

fim:
    	li $v0, 4
    	la $a0, msg3
    	syscall

    	li $v0, 1
    	add $a0, $t4, 0
    	syscall
