#print "Hello World"
	.data #data segment
hello:	.asciiz	"Hello, World!\n"
name: .asciiz "John Isa Palacio"
	.text #code segment
	.globl main #declare main function
	
main: #code main segment
	la $a0, hello
	li $v0, 4
	syscall
	la $a0, name
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall
	