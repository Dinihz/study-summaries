algoritmo "semnome"
// Função :
// Autor :
// Data : 24/10/2024
// Seção de Declarações 
var
   numero, contador : inteiro
   fatorial: real
   
   
inicio

      Escreval("Digite um número")
      leia(numero)
      
      contador <- 1
      
      fatorial <- numero
      

      se numero >= 0 entao


         Enquanto (contador <= numero) faca
               fatorial <- fatorial * contador
               contador <- contador + 1
         FimEnquanto

      Escreval("O fatorial de ", numero, " é ", fatorial, ".")

      senao
         Escreval("Não é possível calcular o fatorial de números negativos.")
      fimse
      

      
      
fimalgoritmo
