algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2024
// Seção de Declarações 
var

   vetorNumero1 : vetor [1..5] de inteiro
   vetorNumero2 : vetor [1..5] de inteiro
   posicaoNumero : inteiro
   
inicio

      Para posicaoNumero de 1 ate 5 Faca
      
           Escreval("Digite um numero: ")
           
                            leia(vetorNumero1[posicaoNumero])
                            vetorNumero2[posicaoNumero] <- vetorNumero1[posicaoNumero] * 2
           
           Fimpara
           
           Escreval("Resultado: ")
           Para posicaoNumero de 1 ate 5 Faca
           
           Escreval(vetorNumero1[posicaoNumero], " - ",vetorNumero2[posicaoNumero])
           
           Fimpara

fimalgoritmo
