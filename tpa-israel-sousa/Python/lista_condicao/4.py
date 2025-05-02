# Pergunte o preço de três produtos e informe qual produto você deve comprar, sendo esse o mais barato.
produto_1 = float(input('Informe o preço do 1º produto: R$'))
produto_2 = float(input('Informe o preço do 2º produto: R$'))
produto_3 = float(input('Informe o preço do 3º produto: R$'))

if produto_1 < produto_2 and produto_1 < produto_3:
    print('\n\033[92mO 1º produto vale mais a pena de ser comprado.')
elif produto_2 < produto_1 and produto_2 < produto_3:
    print('\n\033[94mO 2º produto vale mais a pena de ser comprado.')
else:
    print('\n\033[95mO 3º produto vale mais a pena de ser comprado.')
