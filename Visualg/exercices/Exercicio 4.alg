algoritmo "semnome"
// Função :
// Autor :
// Data : 21/10/2024
// Seção de Declarações 
var
nascimento, const: inteiro

inicio

      Escreval("Digite o ano que voce nasceu: ")
      leia(nascimento)
      
      const <- (2024 - nascimento)

      
      
      Se (const >= 18) Entao
      
         Escreval("Voce tem ", const," anos e ja pode tirar sua carteira de motorista")

      senao

           Se(const = 17) ou (const = 16) Entao
      
           Escreval("Voce tem ", const," anos e apenas pode realizar votacao")
           
           senao
           
           Escreval("Voce tem ", const," anos e nao tem direito algum")
           
           Fimse
      
      Fimse
fimalgoritmo
