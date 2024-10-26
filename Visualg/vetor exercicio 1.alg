algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2024
// Seção de Declarações 
var

   numerosDigitados : vetor [1..5] de inteiro
   contador, total: inteiro
   
inicio

      Para contador de 1 ate 5 Faca

           Escreval("Digite um numero: ")
           leia(numerosDigitados[contador])
           
           total <- total + numerosDigitados[contador]
           
      Fimpara
      
      Escreval("A soma dos numeros e: ",total)
      
      Escreval("Os numeros digitados foram: ")
      Para contador de 1 ate 5 Faca
             Escreval("Numero ", contador, " - ", numerosDigitados[contador] )
      Fimpara
fimalgoritmo
