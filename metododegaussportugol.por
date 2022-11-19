programa
{
	
	inclua biblioteca Matematica 
	
	funcao inicio()
	{
		real matriz[5][6] = {
		{2.0, 4.0, 6.0, 2.0, 4.0, 6.0},
		{1.0, 2.0, -1.0, 3.0, 8.0, 4.0},
		{-3.0, 1.0, -2.0, 1.0, -2.0, 9.0},
		{1.0, 3.0, -3.0, -2.0, 6.0, 2.0},
		{3.0, 7.0, 2.0, 1.0, 4.0, 10.0}}


		escreva("======================== MATRIZ ORIGINAL ========================= \n")
		para (inteiro i = 0; i < 5; i++){
			para (inteiro j = 0; j < 6; j++){
				escreva("\t", matriz[i][j])
			}
			escreva("\n")
		}
		escreva("\n")
		escreva("======================== PROCESSO DE ESCALONAMENTO ========================= \n")
		para(inteiro j = 0; j < 6 - 2; j++){
			para(inteiro i = j; i < 5; i++){
				se(matriz[i][j] != 0){
					se(i != j){
						para(inteiro k = 0; k < 6; k++){
							real temp = matriz[i][k]
							matriz[i][k] = matriz[j][k]
							matriz[j][k] = temp
						}
					}
					para(inteiro m = j + 1; m < 5; m++){
						real a = -matriz[m][j] / matriz[j][j]
						para(inteiro n = j; n < 6; n++){
							matriz[m][n] += a * matriz[j][n]
						}	
					}
					para (inteiro x = 0; x < 5; x++){    //PRINTANDO PASSO A PASSO DO ESCALONAMENTO
						para (inteiro y = 0; y < 6; y++){
							matriz[x][y] = Matematica.arredondar(matriz[x][y], 2)
							escreva("\t", matriz[x][y])
						}
						escreva("\n")
					}
					escreva("\n")
				}
			}
		}

		//AGORA APLICANDO A SUBSTITUIÇÃO REVERSA

		inteiro d = 5 - 1
		real results[5] = {0.0, 0.0, 0.0, 0.0, 0.0}
		para(inteiro i = 0; i < 5; i++){
			inteiro j = d - i
			real soma = matriz[j][6 - 1]
			para(inteiro k = j + 1; k < 6 - 1; k++){
				soma -= matriz[j][k] * results[k]
			}
			soma /= matriz[j][j]
			soma = Matematica.arredondar(soma, 2)
			escreva("x", (j+1), " = ", soma, "\n")
			results[j] = soma
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */