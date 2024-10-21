algoritmo "semnome"
// Função :
// Autor :
// Data : 21/10/2024
// Seção de Declarações 
var
   diaSemana: caractere
   numero: inteiro
inicio

      Escreval("Digite um número entre 1 a 7")
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
              
                       diaSemana <- "Valor Inválido"


              FimEscolha
              
              Escreval(numero, " é ", diaSemana)
      
      
fimalgoritmo
