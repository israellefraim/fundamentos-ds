programa
{
	
	funcao inicio()
	{
		cadeia meses[6] = {"Janeiro", "Fevereiro", "Março", "Abril", "Junho", "Julho"}
		cadeia descricao[3] = {"Receita", "Despesas", "Resultados"}
		inteiro matriz[3][6]
		
		para (inteiro l=0; l<3; l++)
		{
			para (inteiro c=0; c<6; c++)
			{
				se (l == 2)
				{
				matriz[2][c] = matriz[0][c] - matriz[1][c]
				}
				senao 
				{   
				escreva(descricao[l]," de ",meses[c],": R$")
				leia(matriz[l][c])
				limpa()
				}
			}
		}
		para (inteiro c=0; c<6; c++)
		{
			escreva("Resultado de ",meses[c], ": R$",matriz[2][c],"\n")
		}
	}
}
