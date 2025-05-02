from time import sleep as tempo
a = float(input("Insira o comprimento da 1ª reta: "))
b = float(input("Insira o comprimento da 2ª reta: "))
c = float(input("Insira o comprimento da 3ª reta: "))
print("\nPROCESSANDO...\n")
tempo(3)
if a + b > c and a + c > b and b + c > a:
    print("As retas inseridos podem formar um triângulo.")
    if a == b and b == c:
        print('Sendo esse, um triângulo equilátero.')
    elif a == b or a == c or b == c:
        print('Sendo esse, um triângulo isósceles.')
    else:
        print('Sendo esse, um triângulo escaleno.')
else:
    print("As retas inseridas não podem formar um triângulo.")
