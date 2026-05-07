.data
	msg1: .asciiz "Digite um valor: "
	msg2: .asciiz "Maior: "
	msg3: .asciiz "\nMenor: "
.text

main:
    	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t2, $v0, 0
	
loop:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t1, $v0, 0
    
	add $s0, $s0, 1
	
	bgt $t1, $t0, se1
	blt $t1, $t2, se2
	
	blt $s0, 9, loop
	
	j fim_loop
	
se1:
	add $t0, $t1, 0
	j main
	
se2:
	add $t2, $t1, 0
	j main
	
fim_loop:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
