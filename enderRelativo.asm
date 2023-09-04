.data
mensagem_zero:
    .asciiz "\nO valor é igual a zero.\n"
mensagem_continuacao:
    .asciiz "O programa continua sequencialmente.\n"

.text
    li $t0, 0

    beq $t0, $zero, igual_a_zero
    
    li $v0, 4
    la $a0, mensagem_continuacao
    syscall

igual_a_zero:
    li $v0, 4
    la $a0, mensagem_zero
    syscall

    li $v0, 10
    syscall