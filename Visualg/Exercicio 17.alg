algoritmo "semnome"
// Função :
// Autor :
// Data : 25/10/2024
// Seção de Declarações 
var

   numero, maior: real
inicio

      maior <- 0
      
      Repita

            Escreval("Digite um número")
            leia(numero)
            
            Se (numero > maior) Entao
            
               maior <- numero
               
            Fimse
            
            Ate numero = 0
            
            Escreval("O maior número é: ", maior)
fimalgoritmo
