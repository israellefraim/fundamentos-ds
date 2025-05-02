# Faça um Programa que verifique se uma letra digitada é vogal ou consoante.
letra = str(input('Digite apenas \033[4;97mUMA\033[m letra: ')).lower().strip()

vogal = ['a', 'e', 'i', 'o', 'u']

if letra in vogal:
    print(f'A letra \033[1;7;97m"{letra}"\033[m é uma vogal.')
else:
    print(f'A letra \033[1;7;97m"{letra}"\033[m é uma consoante.')
