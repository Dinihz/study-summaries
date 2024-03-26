Resumos de 2023;

# Variáveis:
* Responsáveis por guardar dados na memória
  
--> var: pode ser redeclarada e modificada (podendo vazam do bloco e criando um valor undefined)

--> let: ela permite a modificação do valor da variavel, usada em For Loop

--> const: mantem o escorpo no bloco e não pode ser modificar seu valor da variável.

# String = texto

* use '', "", ou ``
ex:
```
var text = `Hoje vou estudar ${soma} horas`;
let text02 = 'Hello'
const text03 = "hi"
```

# Operadores e Números
```
const soma = 5 + 5; // 10
const subtracao = 6 - 5; // 1
const multiplicacao = 50 * 2; // 100
const divisao = 20 / 2; // 10
```
entre outros

NAN = não é um numero (ocorre quando acontece uma operreção com valores que não são numeros)
ex : 
```
let valor = 100 / "Car"
```

# Boolean 
* true
* False

# If e Else

* if especifica um bloco de código a ser executado, se uma condição especificada for verdadeira

* else especifica um bloco de código a ser executado, se a mesma condição for falsa

* else if especifica uma nova condição ao testar, se a primeira condição for falsa

* switch especifica vários blocos de código alternativos a executar

ex:
```
if (hour < 12) {
  greeting = "Bom dia";
} else {
  greeting = "Boa tarde";
}
```
true = verdadeiro

false = falso

Operador lógico de negação = !
ele nega uma operação booleana
```
if(!true) // false
if(!false) // true
```

OPERADORES DE COMPARAÇÃO = > ou <

OPERADORES DE COMPARAÇÃO == e ===
 ==: faz uma comparação não tão estrita
 ===: faz uma comparação estrita

OPERADORES LÓGICOS && (e)
famoso ^ da tabela verdade
```
true && true; // true
true && false; // false
false && true; // false
false && false; // false
```

OPERADORES LÓGICOS || (ou)
```
true || true; // true
true || false; // true
false || true; // true
false || false; // false
```
famoso v da tabela verdade

# FUNÇÕES
Bloco de código que pode ser executado e reutilizado.
```
function imc(peso, altura) {
  const imc = peso / (altura ** 2);
  return imc;
}
```
Callback : argumentos que podem ser funções 

addEventListener('Scroll', function() {
  console.log('Scroll');
});

# OBJETOS

Conjunto de variáveis e funções, que são chamadas de propriedades e métodos.
```
var receita = {
  nome: 'bolo',
  ovos: 2,
  farinha: 'Uma xicara',
  possuiAcucar: true,
}
```

# Arrays
Servem para guardarmos diferentes valores em uma única variável.
```
const marcas = ['Motorola', 'Samsung', 'Iphone'];
```

# FOR LOOP
Cria algo repetido até que uma condição seja atingida.
```
for(let i = 0; i < 10; i++) {
  console.log(`Número ${i}`);
}
console.log(i); // i is not defined
```
* BREAK
ele para o loop
```
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

* WINDOW E DOCUMENT
São os objetos principais do DOM, boa parte da manipulação é feita através dos seus métodos e propriedades.

* NODE
Toda tag html é representada pelo objeto Element e por isso herda os seus métodos e propriedades.

```
const titulo = document.querySelector('button');
```

# ID
getElementById seleciona e retorna elementos do DOM

* __elemento__ é uma referência a um objeto Element, ou null se um elemento com o ID especificado não estiver contido neste documento.

* __id__ é uma string que diferência maiúsculas e minúsculas representando o ID único do elemento sendo procurado.

```
const menu = document.getElementById('menu');
```

-> Document.getElementsByClassName()
Retorna um vetor de objetos com todos os elementos filhos que possuem o nome da classe dada

```
const elements = document.getElementsByClassName(names);
```

 -> Document.getElementsByName()
Retorna uma coleção de elementos NodeList com um dado nome no documento.

```
const elements = document.getElementsByName(names);
```

-> querySelector
Retorna o primeiro elemento dentro do documento

-> querySelectorAll
Retorna uma lista de elementos presentes no documento que coincidam com o grupo de seletores especificado.

```
const menu = document.querySelector('#menu');
const listas = document.querySelectorAll('ul');
const fotos = document.querySelectorAll('.listas img');
```

# forEach
O forEach executa o callback fornecido uma vez para cada elemento da ordem com um valor atribuido.
```
* Parâmetros do forEach
O primeiro parâmetro é o callback, ou seja, a função que será ativada a cada item.

imgs.forEach(function(valorAtual, index, array){
  console.log(item); // o item atual no loop
  console.log(index); // o número do index
  console.log(array); // a Array completa
});
```

# Arrow functions
Uma expressão arrow function possui uma sintaxe mais curta quando comparada a uma expressão de function

```
const imgs = document.querySelectorAll('img');

imgs.forEach((item) => {
  console.log(item);
});
```
# classList
O Element.classList é uma propriedade somente leitura que retorna uma coleção ativa dos atributos de classe do elemento.

```
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

# attributes
A propriedade Element. attributes retorna uma coleção de todos os atributos registrados para um nó especificado.

```
const grid = document.querySelector('.grid');

grid.attributes; // retorna todos os atributos
grid.attributes[0]; // retorna o primeiro atributo
```

* getAttribute E setAttribute
Métodos que retornam ou definem de acordo com o atributo selecionado.

```
const copy = document.querySelector('copy');

copy.getAttribute('src'); // valor do src
copy.setAttribute('alt', 'Texto Alternativo'); // muda o alt
copy.hasAttribute('id'); // true / false
copy.removeAttribute('alt'); // remove o alt

copy.hasAttributes(); // true / false se tem algum atributo
```


# window
O objeto window implementa a interface Window.

```
window.innerWidth; // width do janela
window.innerHeight; // height do janela
window.pageYOffset; // distância total do scroll vertical
window.pageXOffset; // distância total do scroll horizontal
```
[mais](https://developer.mozilla.org/pt-BR/docs/Web/API/Window)

# Event
A interface de event representa qualquer evento de DOM. Ele contém propriedades comuns e métodos para qualquer evento.

Construtor:
Event()
Cria um objeto Event.

Metodos:
Esta interface não herda nenhum método.

Propriedades do event:
```
function executarCallback(event) {
  const currentTarget = event.currentTarget; // this
  const target = event.target; // onde o clique ocorreu
  const type = event.type; // tipo de evento
  const path = event.path;
  console.log(currentTarget, target, type, path);
}
```
# addEventListener()
addEventListener() registra uma única espera de evento em um único alvo.

```
h1.addEventListener('click');
h1.addEventListener('mouseenter');
window.addEventListener('scroll');
window.addEventListener('resize');
window.addEventListener('keydown');
```

Por que usar addEventListener?

addEventListener é a maneira de registrar uma espera de evento como especificada no W3C DOM. Seus benefícios são os seguintes:

    * Permite mais de um manipulador por evento. Isso é particularmente útil em bibliotecas DHTML ou em extensões Mozilla que precisam trabalhar bem mesmo com outras bibliotecas/extensões sendo usadas.
    
    * Te dá um pente-fino do estágio em que a espera de evento é ativada (captura ou borbulha).

    * Funciona em qualquer elemento DOM, não só para elementos HTML.

