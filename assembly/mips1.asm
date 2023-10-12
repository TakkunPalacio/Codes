addi $t0, $t0, 8 
addi $t1, $t1, 12
add $t2, $t0, $t1
sw $t2, 0x10010008
lw $t3, 0x10010008
move $a0, $t3
li $v0, 1
syscall
li $v0, 10
syscall