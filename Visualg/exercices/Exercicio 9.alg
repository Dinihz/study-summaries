algoritmo "semnome"
// Função :
// Autor :
// Data : 24/10/2024
// Seção de Declarações 
var

   nota, soma: real
   nome: caracter
   contador: inteiro
inicio

      nota <- 0
      
      Escreval("Digite o nome do aluno: ")
      leia(nome)
      
      contador <- 1
      
      Enquanto (contador < 5) Faca
      
               Escreval("Digite a nota ", contador, ": ")
               leia(nota)
               
               soma <- soma + nota
               
               contador <- contador + 1
               
      FimEnquanto
      
      Escreval("Aluno: ", nome)
      Escreval("Média: ", soma/4)

fimalgoritmo
