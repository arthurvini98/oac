.data
    array: .word 10, 20, 30, 40, 50  # Exemplo de array na memória a partir do endereço 2000
    newline: .asciiz "\n"            # String de nova linha

.text
    main:
    # Carregar o valor do endereço 2005 para um registrador
    la $t1, array      # Carrega o endereço base do array para o registrador $t1
    lw $t0, 20($t1)    # Carrega o valor do endereço 2005 (5 * 4 bytes offset) no registrador $t0

    # Mostrar o valor para o usuário
    move $a0, $t0      # Mover o valor de $t0 para o argumento de impressão
    li $v0, 1          # Carregar o código de serviço para impressão inteira
    syscall            # Fazer a chamada do sistema para imprimir

    # Imprimir uma nova linha
    li $v0, 4          # Carregar o código de serviço para impressão de string
    la $a0, newline    # Carregar o endereço da string newline
    syscall            # Fazer a chamada do sistema para imprimir string

    # Fim do programa
    li $v0, 10         # Carregar o código de saída do programa (10)
    syscall            # Fazer a chamada do sistema para sair
