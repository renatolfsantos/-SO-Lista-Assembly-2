.data
	msg1: .asciiz "Primeira nota: "
	msg2: .asciiz "Segunda nota: "
	msg3: .asciiz "VTerceira nota: "
	msg4: .asciiz "Quarta nota: "
	msg5: .asciiz "APROVADO"
	msg6: .asciiz "EXAME"
	msg7: .asciiz "RETIDO"
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
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	add $t4, $t0, $t1
	add $t4, $t4, $t2
	add $t4, $t4, $t3
	
	li $t5, 4
	div $t4, $t5
	mflo $t4
	
	bge $t4, 6, c1
	bge $t4, 3, c2
	j c3
	
c1:
	li $v0, 4
	la $a0, msg5
	syscall
	j fim_se
	
c2:
	li $v0, 4
	la $a0, msg6
	syscall
	j fim_se
c3:
	li $v0, 4
	la $a0, msg7
	syscall
	
fim_se:
	
	