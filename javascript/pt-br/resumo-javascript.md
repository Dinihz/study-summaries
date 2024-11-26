Resumos de 2023;

# Variáveis:

- Responsáveis por guardar dados na memória

--> var: pode ser redeclarada e modificada (podendo vazam do bloco e criando um valor undefined)

--> let: ela permite a modificação do valor da variavel, usada em For Loop

--> const: mantem o escorpo no bloco e não pode ser modificar seu valor da variável.

# String = texto

- use '', "", ou ``
  ex:

```javascript
var text = `Hoje vou estudar ${soma} horas`;
let text02 = 'Hello'
const text03 = "hi"
```

# Operadores e Números

```javascript
const soma = 5 + 5; // 10
const subtracao = 6 - 5; // 1
const multiplicacao = 50 * 2; // 100
const divisao = 20 / 2; // 10
```

entre outros

NAN = não é um numero (ocorre quando acontece uma operreção com valores que não são numeros)
ex :

# Boolean

- true
- False

# If e Else

- if especifica um bloco de código a ser executado, se uma condição especificada for verdadeira.

- else especifica um bloco de código a ser executado, se a mesma condição for falsa.

- else if especifica uma nova condição ao testar, se a primeira condição for falsa.

- switch especifica vários blocos de código alternativos a executar.

ex:

```javascript
if (hour < 12) {
  greeting = "Bom dia";
} else {
  greeting = "Boa tarde";
}
```

## Operador lógico de negação = !
ele nega uma operação booleana

```javascript
if(!true) // false
if(!false) // true
```

## OPERADORES DE COMPARAÇÃO = > ou <

## OPERADORES DE COMPARAÇÃO == e ===
* ==: faz uma comparação não tão estrita

* ===: faz uma comparação estrita

## OPERADORES LÓGICOS && (e) (famoso ^ da tabela verdade)

```javascript
true && true; // true
true && false; // false
false && true; // false
false && false; // false
```

## OPERADORES LÓGICOS || (ou)

```javascript
true || true; // true
true || false; // true
false || true; // true
false || false; // false
```

_famoso v da tabela verdade_

# FUNÇÕES

* Bloco de código que pode ser executado e reutilizado.

```javascript
function imc(peso, altura) {
  const imc = peso / (altura ** 2);
  return imc;
}
```

### Callback : argumentos que podem ser funções
* Uma callback é uma função passada como argumento para outra função, que será executada posteriormente, geralmente em resposta a um evento ou conclusão de uma operação.

```javascript
addEventListener('scroll', function() {
    console.log('Scroll realizado!');
});
```

# OBJETOS

* Conjunto de variáveis e funções, que são chamadas de propriedades e métodos.

```javascript
var receita = {
  nome: 'bolo',
  ovos: 2,
  farinha: 'Uma xicara',
  possuiAcucar: true,
}
```

# Arrays

* Servem para guardarmos diferentes valores em uma única variável.

```javascript
const marcas = ['Motorola', 'Samsung', 'Iphone'];
```

# FOR LOOP

* O for é uma estrutura de repetição que executa um bloco de código várias vezes, enquanto uma condição for verdadeira.

```javascript
for (let i = 0; i < 10; i++) {
    console.log(`Número ${i}`);
}

// A variável `i` foi declarada com `let`, logo só existe dentro do escopo do loop
console.log(i); // Erro: `i` não está definida

```

- BREAK
* O comando break é usado para interromper a execução do loop antes de atingir a condição final.

```javascript
let marcas = ['Motorola', 'Samsung', 'Iphone', 'Xiaomi'];
for (let i = 0; i < marcas.length; i++) {
  console.log(marcas[i]);
  if(marcas[i] === 'Iphone') {
    break;
  }
}
```

# DOM

O DOM é um modelo de documento carregado pelo navegador. Este documento é representado através de uma árvore de nós, onde cada um destes nós representa uma parte do documento (por ex. um elemento, texto ou comentário).

  - WINDOW E DOCUMENT
    São os objetos principais do DOM, boa parte da manipulação é feita através dos seus métodos e propriedades.

  - NODE
    Toda tag html é representada pelo objeto Element e por isso herda os seus métodos e propriedades.

```javascript
const titulo = document.querySelector('button');
```

## ID

getElementById seleciona e retorna elementos do DOM

- **elemento** é uma referência a um objeto Element, ou null se um elemento com o ID especificado não estiver contido neste documento.

- **id** é uma string que diferência maiúsculas e minúsculas representando o ID único do elemento sendo procurado.

```javascript
const menu = document.getElementById('menu');
```

  - Document.getElementsByClassName()
    Retorna um vetor de objetos com todos os elementos filhos que possuem o nome da classe dada

```javascript
const elements = document.getElementsByClassName(names);
```

  - Document.getElementsByName()
    Retorna uma coleção de elementos NodeList com um dado nome no documento.

```javascript
const elements = document.getElementsByName(names);
```

  - querySelector
    Retorna o primeiro elemento dentro do documento

  - querySelectorAll
    Retorna uma lista de elementos presentes no documento que coincidam com o grupo de seletores especificado.

```javascript
const menu = document.querySelector('#menu');
const listas = document.querySelectorAll('ul');
const fotos = document.querySelectorAll('.listas img');
```

# forEach

O forEach executa o callback fornecido uma vez para cada elemento da ordem com um valor atribuido.


* Parâmetros do forEach
O primeiro parâmetro é o callback, ou seja, a função que será ativada a cada item.
```javascript
imgs.forEach(function(valorAtual, index, array){
  console.log(item); // o item atual no loop
  console.log(index); // o número do index
  console.log(array); // a Array completa
});
```

## Arrow functions

Uma expressão arrow function possui uma sintaxe mais curta quando comparada a uma expressão de function

```javascript
const imgs = document.querySelectorAll('img');

imgs.forEach((item) => {
  console.log(item);
});
```

### classList

O Element.classList é uma propriedade somente leitura que retorna uma coleção ativa dos atributos de classe do elemento.

```javascript
const summay = document.querySelector('.summay');

summay.className; // string
summay.classList; // lista de classes
summay.classList.add('ativo');
summay.classList.add('ativo', 'mobile'); // duas classes
summay.classList.remove('ativo');
summay.classList.toggle('ativo'); // adiciona/remove a classe
summay.classList.contains('ativo'); // true ou false
summay.classList.replace('ativo', 'inativo');
```

### attributes

A propriedade Element. attributes retorna uma coleção de todos os atributos registrados para um nó especificado.

```javascript
const grid = document.querySelector('.grid');

grid.attributes; // retorna todos os atributos
grid.attributes[0]; // retorna o primeiro atributo
```

  - getAttribute E setAttribute
    Métodos que retornam ou definem de acordo com o atributo selecionado.

```javascript
const copy = document.querySelector('copy');

copy.getAttribute('src'); // valor do src
copy.setAttribute('alt', 'Texto Alternativo'); // muda o alt
copy.hasAttribute('id'); // true / false
copy.removeAttribute('alt'); // remove o alt

copy.hasAttributes(); // true / false se tem algum atributo
```

### window

O objeto window implementa a interface Window.

```javascript
window.innerWidth; // width do janela
window.innerHeight; // height do janela
window.pageYOffset; // distância total do scroll vertical
window.pageXOffset; // distância total do scroll horizontal
```

[mais](https://developer.mozilla.org/pt-BR/docs/Web/API/Window)

# Event

A interface de event representa qualquer evento de DOM. Ele contém propriedades comuns e métodos para qualquer evento.

Construtor:
Event() (Cria um objeto Event).

Metodos:
Esta interface não herda nenhum método.

Propriedades do event:

```javascript
function executarCallback(event) {
  const currentTarget = event.currentTarget; // this
  const target = event.target; // onde o clique ocorreu
  const type = event.type; // tipo de evento
  const path = event.path;
  console.log(currentTarget, target, type, path);
}
```

### addEventListener()

addEventListener() registra uma única espera de evento em um único alvo.

```javascript
h1.addEventListener('click');
h1.addEventListener('mouseenter');
window.addEventListener('scroll');
window.addEventListener('resize');
window.addEventListener('keydown');
```

### INNERTEXT E INNERHTML

```javascript
const header = document.querySelector('.header');

header.innerText; // texto, sem as tags
header.innerHTML; // html todo
```

### Node

* é uma interface da qual diversos tipos do DOM herdam, e que permite que esses tipos sejam tratados de forma similar.

--> Metodos

- Node.appendChild
- Node.cloneNode
- Node.insertBefore
- Node.removeChild
- Node.replaceChild
- [mais](https://developer.mozilla.org/pt-BR/docs/Web/API/Node)

```javascript
const home = document.querySelector(".home");
const market = document.querySelector(".market");
const h1 = home.querySelector("h1");

market.appendChild(home); // move home para o final do market
market.cloneNode(market) // duplica o market
market.insertBefore(home, h1); // insere o home antes de h1
market.removeChild(h1); // remove h1 do home
market.replaceChild(home, h1); // substitui h1 por home
```

- Diferença de node e element:
  O element representa o html, já o node pode ser qualquer coisa do codigo até um espaço em uma linha.
