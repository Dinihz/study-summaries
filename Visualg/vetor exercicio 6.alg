algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2024
// Seção de Declarações 
var

   vetorNumerosPares: vetor[1..4] de inteiro
   vetorNumerosImpares: vetor[1..4] de inteiro
   numeroDigitado, posicaoNumero: inteiro
   
inicio

      Para posicaoNumero de 1 ate 4 Faca
           Escreval("Digite um numero: ")
           leia(numeroDigitado)

           Se (numeroDigitado % 2 = 0) Entao
              vetorNumerosPares[posicaoNumero] <- numeroDigitado
           Senao
              vetorNumerosImpares[posicaoNumero] <- numeroDigitado
           FimSe
      FimPara

      Escreval("Numeros Pares: ")
      Para posicaoNumero de 1 ate 4 Faca
           Escreval(vetorNumerosPares[posicaoNumero])
      FimPara

      Escreval("Numeros Impares: ")
      Para posicaoNumero de 1 ate 4 Faca
           Escreval(vetorNumerosImpares[posicaoNumero])
      FimPara
fimalgoritmo
