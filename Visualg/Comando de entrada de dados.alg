algoritmo "Comanddo de entrada de dados"
// Função :
// Autor :
// Data : 16/10/2024
// Seção de Declarações 
var

   cliente : caractere
   quantidade : inteiro // 1, 2, 3,
   preco : real // 1,3333
   produto : caractere
   totalApagar : real
   
inicio
      Escreval("Digite o nome do Cliente:")
      leia(cliente) //Amarzana o dados que for digitado
      
      
      Escreval("Digite a quantidade de protutos que o cliente comprou:")
      leia(quantidade)
      
      
      Escreval("Digite o proço do produto:")
      leia(preco)
      
      Escreval("Digite o nome do produto:")
      leia(produto)
      
      totalApagar <- quantidade * preco
      
      Escreval("Segue os dados do cliente:")
      Escreval("Nome do cliente: ", cliente)
      Escreval("Quantidade do produto: ", quantidade)
      Escreval("Preço do produto ", preco)
      Escreval("Nome do produto: ", produto)
      Escreval("Valor total a pagar: ", totalApagar)

fimalgoritmo
