.data
input: .space 256 # allocate space for input string
prompt: .asciiz "Enter a string: "
output: .asciiz "You entered: "

.text
.globl main

main:
    # print prompt
    li $v0, 4
    la $a0, prompt
    syscall
    
    # read input
    li $v0, 8
    la $a0, input
    li $a1, 256
    syscall
    
    # print output
    li $v0, 4
    la $a0, output
    syscall
    
    # print input
    li $v0, 4
    la $a0, input
    syscall
    
    # exit program
    li $v0, 10
    syscall
