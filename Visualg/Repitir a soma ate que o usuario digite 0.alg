algoritmo "soma_numeros_indefinidos"
var
   numero, soma: inteiro
inicio
   soma <- 0

   // Repetição até que o usuário digite 0
   repita
      escreva("Digite um número (ou 0 para parar): ")
      leia(numero)
      soma <- soma + numero
   ate numero = 0

   escreva("A soma dos números é: ", soma)
fimalgoritmo

