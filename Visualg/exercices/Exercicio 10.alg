algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 24/10/2024
// Se��o de Declara��es 
var
   numero, contador : inteiro
   fatorial: real
   
   
inicio

      Escreval("Digite um n�mero")
      leia(numero)
      
      contador <- 1
      
      fatorial <- numero
      

      se numero >= 0 entao


         Enquanto (contador <= numero) faca
               fatorial <- fatorial * contador
               contador <- contador + 1
         FimEnquanto

      Escreval("O fatorial de ", numero, " � ", fatorial, ".")

      senao
         Escreval("N�o � poss�vel calcular o fatorial de n�meros negativos.")
      fimse
      

      
      
fimalgoritmo
