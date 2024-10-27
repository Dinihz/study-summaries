algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2024
// Seção de Declarações 
var

   ListaNumerosVetor: vetor [1..5] de inteiro
   numeroPesquisa, posicao: inteiro
   
inicio
      Para posicao de 1 ate 5 Faca
      
           Escreval("Digite o numero ", posicao)
           leia(ListaNumerosVetor[posicao])
      
      FimPara
      
      
      
      Escreval("Digite um numero para pesquisar: ")
      leia(numeroPesquisa)
      
      posicao <- 1
      
      Enquanto (posicao < 5 ) e (ListaNumerosVetor[posicao] <> numeroPesquisa) Faca
      
               posicao <- posicao + 1
               
      FimEnquanto
      
      
      Se ListaNumerosVetor[posicao] = numeroPesquisa Entao
      
         Escreval("Numero encontrado na posicao: ", posicao)
         
      Senao
         
          Escreval("Numero nao foi encontrado")
          
      Fimse
fimalgoritmo
