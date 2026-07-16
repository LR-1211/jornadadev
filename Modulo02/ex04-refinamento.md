Aplique a tÇcnica do refinamento sucessivo (vis∆o geral ? detalhamento) para o problema:

?Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cart∆o fidelidade (5%) e mostrar o total a
pagar.?

Entregue dois n°veis: o N°vel 1 (Mais simples)  e o N°vel 2 (mais detalhado).

# N÷VEL 1 / (vis∆o geral, 3?4 passos)

-Perguntar quais s∆o os itens da compra
-Calcular o Subtotal do valor da compra
-Se o cliente tiver cart∆o de fidelidade, aplica-se 5% de desconto no Subtotal.
-Mostrar o total do valor da compra.

# N÷VEL 2 / (cada passo detalhado)

# Passo 1 // Armazenar valores Iniciais
    -Registrar os valores dos itens de compra para o cliente.
    -Armazenar todas as compras em uma array da compra (ListCompra).

# Passo 2 // Calculo do Subtotal
    -Somar todos os valores da array da compra (ListCompra).
    -Armazenar o resultado da soma total numa v†riavel (Subtotal).

# Passo 3 // Conferir de cart∆o de fidelidade
    -Regisrar para o cliente se ele possui cart∆o de fidelidade (Boleano).
    -Se o cliente tiver, ser† calculado 5% de desconto do Subtotal e adicionado numa v†riavel (desconto)
    -Atribuir a v†riavel ValorFinal, a subtraá∆o do Subtotal menos o Desconto.
    -Se o cliente n∆o tiver, apenas adicione subtotal na v†riavel ValorFinal.

# Passo 4 // Mostrar Valor total da compra
    -Mostrar o ValorFinal para o cliente.
