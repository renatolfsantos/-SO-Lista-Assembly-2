.data
	msg1: .asciiz "Primeiro valor: "
	msg2: .asciiz "Segundo valor: "
	msg3: .asciiz "Valor da diferença: "
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
	
	bgt $t0, $t1, se
	j senao
	
se:
	sub $t2, $t0, $t1
	j fim_se
	
senao:
	sub $t2, $t1, $t0
	
fim_se:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
			
	
	