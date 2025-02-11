## Vale a pena estudar lógica de programação com Portugol?

Vou expor minha opinião sobre o uso do Portugol para aprender lógica de programação, especialmente para quem está começando e teve experiência com ele.

Em geral, não vale a pena focar no Portugol, pois temos a possibilidade de estudar lógica de programação diretamente com a linguagem que escolhermos.

Por exemplo, com Python, Java ou JavaScript, é possível praticar lógica e desenvolver habilidades ao mesmo tempo. Com exercícios, vídeos no YouTube e pequenos projetos, você consegue aprender e aprimorar sua lógica de programação.

No entanto, recomendo o estudo de Portugol em três situações específicas:

* __Dificuldade com a primeira linguagem:__ Caso você tenha começado a estudar programação por outra linguagem e esteja com dificuldades de compreensão, seja pelo inglês ou por outras razões.

* __Faculdade:__ Se você está no início da faculdade e seu professor utiliza Portugol para ensinar lógica, vale a pena segui-lo, pois você terá o auxílio de um profissional para acompanhar o aprendizado com exercícios práticos.

* __Iniciantes totais:__ Para quem nunca teve contato com computadores e está começando agora, o Portugol pode ser uma introdução simples e visualmente amigável para entender a lógica.

### Estrutura Básica do Portugol

Para começarmos, vamos explorar cada parte do Portugol:

Na sua primeira linha, temos `algoritmo` e ao seu lado uma string chamada "semnome", onde você pode substituir pelo título do seu arquivo.

Logo abaixo, temos a seção `var`, onde vamos declarar nossas variáveis.

As variáveis no Portugol são caracterizadas pelos seguintes tipos:

- `caractere` = texto
- `inteiro` = número inteiro
- `real` = números reais

Com isso, podemos criar nossas primeiras variáveis, como no exemplo abaixo:

portugol
```
numero : inteiro
total : real
loja : caractere
```

Também temos um tipo de variável mais complexo, que é o vetor, usado para armazenar uma lista de valores. Por exemplo:

```nome : vetor [1..4] de caractere```

# Bloco Principal: inicio

Dentro do bloco inicio e fimalgoritmo, vamos colocar a mão na massa, executando as operações do nosso algoritmo. Aqui você pode manipular variáveis, realizar cálculos, exibir mensagens e muito mais.
Exibindo Informações com escreva e escreval

O comando escreva permite exibir mensagens na tela sem pular para a próxima linha, enquanto escreval exibe o texto e pula para a linha seguinte.

Exemplo:

```
escreva("Olá, ")
escreval("Mundo!")
```

Saída:

```
Olá, Mundo!
```

# Entrada de Dados com leia

Para receber valores do usuário e armazená-los em variáveis, usamos o comando leia. Ele permite que o usuário insira informações que serão salvas em variáveis específicas.

Exemplo:
```
leia(numero)
```

# Estruturas Condicionais: se, entao, senao

Usamos as estruturas condicionais para realizar verificações e decisões no programa.

Exemplo:
```
se (numero > 10) entao
    escreval("Número é maior que 10.")
senao
    escreval("Número é 10 ou menor.")
fimse
```

# Estruturas de Repetição: enquanto e para

Essas estruturas permitem executar blocos de código várias vezes, dependendo de uma condição.

Exemplo com enquanto:

```
enquanto (numero < 5) faca
    escreval("Número é menor que 5.")
    numero := numero + 1
fimenquanto
```

Exemplo com para:

```
para i de 1 ate 5 faca
    escreval("Valor de i: ", i)
fimpara
```

# Funções Básicas

Com o comando funcao, você pode definir blocos de código reutilizáveis para realizar tarefas específicas. As funções são úteis para organizar e simplificar seu código.

Exemplo:
```
funcao soma(x : inteiro, y : inteiro) : inteiro
    retorno x + y
fimfuncao
```

# Vetores
```
nome: vetor [1..4] de caractere 
```
Esse exemplo cria um vetor chamado nome com 4 posições para armazenar valores do tipo caractere. Você pode acessar e manipular cada posição individualmente:
```
nome[1] <- "Alice"
nome[2] <- "Bob"
nome[3] <- "Carlos"
nome[4] <- "Diana"
```
Para exibir o conteúdo de uma posição específica do vetor, você pode usar o comando escreva:
```
escreval(nome[2])
```

Esses são os comandos básicos que você precisa para começar a desenvolver algoritmos em Portugol. Experimente combinar variáveis, condicionais e laços para criar programas interativos. Na pasta `comandos-basicos`, deixei mais alguns exemplos para você explorar e praticar.

Para aprofundar seus conhecimentos, busque exercícios na internet ou peça ao ChatGPT para gerar alguns desafios para você. Também incluí alguns exemplos de exercícios na pasta `exercices` para facilitar seu aprendizado. Boa prática :)!!!
