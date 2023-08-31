.data
    result_msg: .asciiz "Resultado: "  # Mensagem para mostrar o resultado

.text
.globl main

main:
    # Carregar o valor imediato 10 no registrador $t0
    li $t0, 10

    # Carregar o valor imediato 20 no registrador $t1
    li $t1, 20

    # Somar os valores nos registradores $t0 e $t1 e armazenar o resultado em $t2
    add $t2, $t0, $t1

    # Imprimir a mensagem de resultado
    li $v0, 4         # Código da syscall para imprimir string
    la $a0, result_msg  # Carregar o endereço da mensagem em $a0
    syscall

    # Imprimir o valor da soma
    li $v0, 1         # Código da syscall para imprimir inteiro
    move $a0, $t2     # Carregar o valor da soma em $a0
    syscall

    # Finalizar o programa
    li $v0, 10       # Código da syscall para encerrar o programa
    syscall

