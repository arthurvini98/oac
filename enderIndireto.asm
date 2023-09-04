# Inicialize a pilha
.data
pilha: .space 8      # Espaço para 2 valores na pilha
ponteiro: .word pilha   # Ponteiro da pilha

.text
.globl main
main:
    # Inicialize o registrador $t0 com o endereço da pilha
    lw $t0, ponteiro

    # Defina os dois valores da pilha
    li $t1, 10        # Primeiro valor
    li $t2, 20        # Segundo valor

    # Empilhe o primeiro valor na pilha
    sw $t1, 0($t0) #Coloca o valor de $t1 no exato endereço de memória apontado em $t0

    # Atualize o ponteiro da pilha para apontar para o próximo espaço vazio
    addi $t0, $t0, 4

    # Empilhe o segundo valor na pilha
    sw $t2, 0($t0)

    # Desempilhando os valores da pilha

    lw $t3, 0($t0) # Carrega o valor do endereço que o ponteiro está apontando em $t3
    
    # Coloque o valor desempilhado em $t4 ou faça o que quiser com ele
    move $t4, $t3	
    # Volte para o primeiro valor
    subi $t0, $t0, 4
    lw $t5, 0($t0) # Carrega o valor do endereço que o ponteiro está apontando em $t5
    
    # Coloque o valor desempilhado em $t6 ou faça o que quiser com ele
    move $t6, $t5

    # Fim do programa
    li $v0, 10         # Código de saída do programa
    syscall
    
