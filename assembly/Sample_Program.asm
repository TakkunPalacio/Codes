.data
str1: .asciiz "Enter Integer: "
srt2: .asciiz "Entered Integer: "
str3: .asciiz "\nRepeat? [y/n]: "
str4: .asciiz "Hello, "
str5: .asciiz "\nEnter name: "
input: ""
.text
.globl main

main:
    la $a0, str5
    li $v0, 4
    syscall
    
    li $v0, 8
    la $a0, input
    li $a1, 20 
    
    move $s0,$a0

    syscall
    
    la $a0, str4
    li $v0, 4
    syscall

    la $a0, input
    move $a0,$s0
    li $v0, 4
    syscall
    

    la	$a0, str1
    li	$v0, 4				
    syscall							

    li	$v0, 5				
    syscall					
    add $s0, $v0, $v0		#modified	
    la	$a0, srt2		
    li	$v0, 4				
    syscall		
    
    li	$v0, 1
    move $a0, $s0    
    syscall		

    la	$a0, str3
    li	$v0, 4				
    syscall							

    li	$v0, 12				
    syscall	

    move $s0,$v0					
    				
    beq	$s0, 'y', main
    beq $s0, 'Y', main

    li 	$v0, 10		
    syscall					
