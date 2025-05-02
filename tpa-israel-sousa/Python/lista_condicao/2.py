# Leia 3 notas de um aluno, calcule a sua média. Para ser aprovado sua média deve ser maior ou igual a 7,0
# Para estar de Recuperação sua média deve ser maior ou igual a 5,0. Caso contrário o aluno está reprovado.
nota1 = float(input('\033[95mInsira sua 1ª nota: '))
nota2 = float(input('\033[95mInsira sua 2ª nota: '))
nota3 = float(input('\033[95mInsira sua 3ª nota: '))

media = (nota1 + nota2 + nota3) / 3

if media >= 7:
    print('\033[1;96m\nParabéns! Você foi APROVADO!')
elif media >= 5:
    print('\033[1;93m\nVocê está de RECUPERAÇÃO.')
else:
    print('\033[1;91m\nQue pena! Você foi REPROVADO!')
