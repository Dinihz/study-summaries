algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 25/10/2024
// Se��o de Declara��es 
var

   numero, contador: inteiro
   resultado: inteiro
inicio

      contador <- 1
      Escreval("Digite o n�mero da Tabuada que deseja ver: ")
      leia(numero)
      
      Enquanto (contador <= 10) Faca
      
               resultado <-  (numero * contador)
               
               Escreval(numero," x ", contador, " = ", resultado)
               
               contador <- contador + 1
               
      
      FimEnquanto
fimalgoritmo
