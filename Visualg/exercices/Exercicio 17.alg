algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 25/10/2024
// Se��o de Declara��es 
var

   numero, maior: real
inicio

      maior <- 0
      
      Repita

            Escreval("Digite um n�mero")
            leia(numero)
            
            Se (numero > maior) Entao
            
               maior <- numero
               
            Fimse
            
            Ate numero = 0
            
            Escreval("O maior n�mero �: ", maior)
fimalgoritmo
