#whoa
.data
var1: .asciiz "\nEnter fullname: "
var2: .asciiz "Good Morning! "
var3: .asciiz "\nEnter 1st integer value: "
var4: .asciiz "\nEnter 2nd integer value: "
var5: .asciiz "Answer is: "
var6: .asciiz "\nThe integer is equal"
var7: .asciiz "\nThe integer is not equal"
repeat: .asciiz "\nRepeat? [y/n]? "
buffer: ""

.text
.globl main

main:
	la $a0,var1
	li $v0, 4
	syscall
	
	la $a0,buffer
	li $a1,256
	li $v0,8
	syscall
	move $s0,$a0
	
	la $a0,var2
	li $v0, 4
	syscall
	
	move $a0,$s0
	syscall
	# first int
	la $a0,var3
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $s0,$v0
	
	la $a0,var5
	li $v0, 4
	syscall
	
	add $s2,$s0,$s0
	move $a0,$s2
	li $v0, 1
	syscall
	
	#second int
	la $a0,var4
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $s1,$v0
	
	la $a0,var5
	li $v0, 4
	syscall
	
	add $s3,$s1,$s1
	move $a0,$s3
	li $v0, 1
	syscall
	
	beq $s2,$s3,equal
	j notequal

equal:  la $a0,var6
	li $v0, 4
	syscall
	j end
	
notequal: la $a0,var7
	li $v0, 4
	syscall
	j end 
	
end:	la $a0,repeat
	li $v0, 4
	syscall
	
	li $v0,12
	syscall
	
	beq $v0,'y',main
	beq $v0,'Y',main
	
	li $v0,10
	syscall
	
	
	