algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 21/10/2024
// Se��o de Declara��es 
var
         operacao: inteiro
         numero1, numero2, resultado : real
inicio

      Escreval("Digite qual sinal de opera��o voc� deseja: ")
      Escreval("1: Somar, 2: Subtrair, 3: Dividir , 4: Multiplicar")
      leia(operacao)
      
      
      
      
      
      
      
      Escreval("Digite o numero 1 ")
      leia(numero1)
      Escreval("Digite o numero 2 ")
      leia(numero2)
      
      
      
      Escolha operacao
      
              Caso 1

                   resultado <- numero1 + numero2

               Caso 2

                   resultado <- numero1 - numero2

                Caso 3

                   Se ((numero1 = 0) ou (numero2 = 0)) Entao
                      Escreval("Erro ao dividir o numero")
                      
                   Senao
                        resultado <- numero1 / numero2
                   Fimse
                   
                Caso 4

                   resultado <- numero1 * numero2
         Fimescolha
         
         Se ((operacao >= 1) e (operacao <= 4)) Entao
            Escreval("Total: ", resultado)
            
         Senao
              Escreval("Escolha Incorreta.")
              
         Fimse

      
fimalgoritmo
