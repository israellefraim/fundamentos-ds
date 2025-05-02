# Faça um programa que verifique se o usuário já atingiu a idade para poder obter a CNH
idade = int(input('\033[1;32mInsira sua idade: '))
print('\033[1;4;94mVocê tem idade para emitir sua CNH.' if idade >= 18 else
      '\033[1;4;91mVocê ainda não tem idade para emitir uma CNH.')
