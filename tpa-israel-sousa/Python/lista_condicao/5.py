# Receba um salário, o salário antes do reajuste; o percentual de aumento; o valor do aumento e o novo salário
from time import sleep
salario = float(input('\033[97mInsira o valor do seu salário para análise: R$'))
print("\033[34mPROCESSANDO...\033[m")
sleep(3)
if salario < 280:
    print(f'\nSalário base: \033[1;7;97mR${salario:.2f}\033[m'  
          f'\nPercentual de aumento: \033[1;97m20%\033[m'
          f'\nValor de aumento: \033[1;7;97mR${salario*0.2:.2f}\033[m'
          f'\nNovo salário: \033[1;7;97mR${salario*1.2:.2f}\033[m')
elif salario < 700:
    print(f'\nSalário base: \033[1;7;97mR${salario:.2f}\033[m'
          f'\nPercentual de aumento: \033[1;97m15%\033[m'
          f'\nValor de aumento: \033[1;7;97mR${salario*0.15:.2f}\033[m'
          f'\nNovo salário: \033[1;7;97mR${salario*1.15:.2f}\033[m')
elif salario < 1500:
    print(f'\nSalário base: \033[1;7;97mR${salario:.2f}\033[m'
          f'\nPercentual de aumento: \033[1;97m10%\033[m'
          f'\nValor de aumento: \033[1;7;97mR${salario*0.10:.2f}\033[m'
          f'\nNovo salário: \033[1;7;97mR${salario*1.10:.2f}\033[m')
else:
    print(f'\nSalário base: \033[1;7;97mR${salario:.2f}\033[m'
          f'\nPercentual de aumento: \033[1;97m5%\033[m'
          f'\nValor de aumento: \033[1;7;97mR${salario*0.5:.2f}\033[m'
          f'\nNovo salário: \033[1;7;97mR${salario*1.05:.2f}\033[m')
