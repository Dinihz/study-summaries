algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 21/10/2024
// Se��o de Declara��es 
var
   diaSemana: caractere
   numero: inteiro
inicio

      Escreval("Digite um n�mero entre 1 a 7")
      leia(numero)
      
      Escolha numero
      
              Caso 1
              
                   diaSemana <- "Domingo"

              Caso 2
              
                   diaSemana <- "Segunda"
                   
              Caso 3
              
                   diaSemana <- "Terca"
                   
              Caso 4
              
                   diaSemana <- "Quarta"

              Caso 5
              
                   diaSemana <- "Quinta"
                   
              Caso 6
              
                   diaSemana <- "Sexta"
                   
              Caso 7
              
                   diaSemana <- "Sabado"
                   
              Outrocaso
              
                       diaSemana <- "Valor Inv�lido"


              FimEscolha
              
              Escreval(numero, " � ", diaSemana)
      
      
fimalgoritmo
