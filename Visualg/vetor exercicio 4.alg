algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2024
// Seção de Declarações 
var

   matriz: vetor[1..3, 1..3] de real
   soma : real
   linha, coluna: inteiro
   
inicio

      Para linha de 1 ate 3 Faca
           Para coluna de 1 ate 3 Faca
                Escreval("Digite o numero [Linha: ", linha, " - Coluna: ", coluna, "]")
                leia(matriz[linha, coluna])
           FimPara
      FimPara
      
      Para linha de 1 ate 3 Faca
           Para coluna de 1 ate 3 Faca
                Escreva(matriz[linha,coluna])
                
           FimPara
           
           Escreval
      FimPara
      
      
      Para linha de 1 ate 3 Faca
           Para coluna de 1 ate 3 Faca
           
                soma <- (matriz[1,1] + matriz[2,1] + matriz[3,1])
                
           FimPara
           
           Escreval("Soma da diagonal:", soma)
           
      FimPara
      
           
           
      
      
fimalgoritmo
