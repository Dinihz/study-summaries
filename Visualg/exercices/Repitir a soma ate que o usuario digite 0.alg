algoritmo "soma_numeros_indefinidos"
var
   numero, soma: inteiro
inicio
   soma <- 0

   // Repeti��o at� que o usu�rio digite 0
   repita
      escreva("Digite um n�mero (ou 0 para parar): ")
      leia(numero)
      soma <- soma + numero
   ate numero = 0

   escreva("A soma dos n�meros �: ", soma)
fimalgoritmo

