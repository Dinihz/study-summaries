algoritmo "semnome"
// Função :
// Autor :
// Data : 18/10/2024
// Seção de Declarações 
var
nota1,nota2,nota3,nota4,media,recuperacao,equacao: real

inicio
      Escreval("Digite a nota da primeira prova")
      leia(nota1)
      
      Escreval("Digite a nota da segunda prova")
      leia(nota2)
      
      Escreval("Digite a nota da terceira prova")
      leia(nota3)
      
      Escreval("Digite a nota da quarta prova")
      leia(nota4)
      
      media <- (nota1 + nota2 + nota3 + nota4) / 4
      
      Escreval("A media do aluno foi ",media)
      
      Se (media >= 7) Entao

         Escreval("O aluno passou de ano!)
      
      Senao (media < 7) Entao
      
      Escreval("O aluno nao passou de ano, faca uma recuperacao")
      leia(recuperacao)
      
       equacao <- (media + recuperacao) / 2
      
            Se  ( equacao >= 7) Entao
            Escreval("Passou com a recuperacao com ",equacao)
            
            Senao
            Escreval("reprovou, media de ",equacao)

            
            FimSe
      
      FimSe
      
      
fimalgoritmo
