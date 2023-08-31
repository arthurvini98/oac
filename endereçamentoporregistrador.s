.data
    msg_intro: .asciiz "A multiplicação de "
    msg_multiply: .asciiz " X "
    msg_result: .asciiz " é "

.text
    main:
    # Carregando valores nos registradores A e B
    li $s0, 5       # Carrega o valor 5 no registrador $s0 (A)
    li $s1, 7       # Carrega o valor 7 no registrador $s1 (B)

    # Imprimir a mensagem "A multiplicação de"
    la $a0, msg_intro
    li $v0, 4
    syscall

    # Imprimir o valor de A
    move $a0, $s0
    li $v0, 1
    syscall

    # Imprimir a mensagem " X "
    la $a0, msg_multiply
    li $v0, 4
    syscall

    # Imprimir o valor de B
    move $a0, $s1
    li $v0, 1
    syscall

    # Imprimir a mensagem " é "
    la $a0, msg_result
    li $v0, 4
    syscall

    # Multiplicação: A * B
    mul $s2, $s0, $s1   # Multiplica os valores em $s0 (A) e $s1 (B), armazenando o resultado em $s2 (C)
    
    # Imprimir o resultado em decimal
    move $a0, $s2
    li $v0, 1       # Imprimir inteiro decimal
    syscall

    # Fim do programa
    li $v0, 10      # Carrega o código de saída do programa (10)
    syscall         # Faz a chamada do sistema para sair
