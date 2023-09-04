## $r1 == 3000

# Calcule o endereço do elemento no índice 5
addi $t0, $r1, 20  # Cada elemento do array tem 4 bytes (5 * 4 = 20)

# Carregue o valor no endereço calculado em um registrador (por exemplo, $t1)
lw $t1, 0($t0)     # Carrega o valor no endereço $t0 em $t1

# Agora, $t1 contém o valor no índice 5 do array