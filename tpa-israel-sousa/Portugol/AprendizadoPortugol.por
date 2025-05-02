programa
{
	funcao inicio()
	{
		cadeia nomes[4] = {"Israel", "Gustavo", "Luis", "Pedro"}
		real notas[4][4] = {{10.0, 9.5, 10.0, 8.0},
						{7.0, 8.0, 10.0, 9.9},
						{9.0, 10.0, 10.0, 7.9},
						{5.0, 3.0, 10.0, 5.7}}
		real medias[4]
		geraMedia(notas,medias)
		inteiro aluno
		escreva("Insira o código do aluno: ")
		leia(aluno)

		limpa()

		cadeia apr
		
		se(aprovadx(medias[aluno]))
		{
			apr = "APROVADO/A"
		}
		senao 	
		{
			apr = "REPROVADO/A"
		}

		geraRelatorio(nomes[aluno], notas[aluno][0], notas[aluno][1], notas[aluno][2], notas[aluno][3], medias[aluno], apr)

	}

	funcao logico aprovadx(real nota){
		se(nota >= 6){
			retorne verdadeiro
		}
		senao{
			retorne falso
		}
	}

	funcao geraMedia(real n[][], real &medias[]){
		para(inteiro a = 0; a < 4; a++)
		{
			real acum = 0.0
			para(inteiro b = 0; b < 4; b++)
			{
				acum += n[a][b] 
			}
			medias[a] = acum / 4
		}
	}

	funcao escreveLinha(logico forte){
		se (forte){
			escreva("====================", "\n")
		}
		senao{
			escreva("--------------------", "\n")
		}
	}

	funcao geraRelatorio(cadeia nome, real n0, real n1, real n2, real n3, real media, cadeia apr){
		escreveLinha(verdadeiro)
		escreva("  Aluno/a: ", nome, "\n")
		escreveLinha(falso)
		escreva("    1B  :  ", n0, "\n")
		escreva("    2B  :  ", n1, "\n")
		escreva("    3B  :  ", n2, "\n")
		escreva("    4B  :  ", n3, "\n")
		escreveLinha(falso)
		escreva("  Média :  ", media, "\n")
		escreva("    ", apr, "\n")
		escreveLinha(verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 872; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */