## $r1 == 3000

# Calcule o endere�o do elemento no �ndice 5
addi $t0, $r1, 20  # Cada elemento do array tem 4 bytes (5 * 4 = 20)

# Carregue o valor no endere�o calculado em um registrador (por exemplo, $t1)
lw $t1, 0($t0)     # Carrega o valor no endere�o $t0 em $t1

# Agora, $t1 cont�m o valor no �ndice 5 do array