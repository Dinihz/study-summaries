algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2024
// Seção de Declarações 
var

letrasDigitadas: vetor [1..5] de caractere
posicaoLetra: inteiro
inicio

      Para posicaoLetra de 1 ate 5 Faca
      
           Escreval("Digite uma letra: ")
           leia(letrasDigitadas[posicaoLetra])
           
      Fimpara
      
      Escreval("As letras digitadas foram: ")

      Para posicaoLetra de 1 ate 5 Faca
      
           Escreval(letrasDigitadas[posicaoLetra])
           
      Fimpara
      
      
       Escreval("As letras digitadas em ordem inversa foram: ")

      Para posicaoLetra de 5 ate 1 passo -1 Faca

           Escreval(letrasDigitadas[posicaoLetra])

      Fimpara
fimalgoritmo
