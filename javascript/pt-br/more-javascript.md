# Classes

* Classes são uma forma de criar objetos em JavaScript.

## Constructor Function

* Função responsável pela criação de objetos.

```javascript
function Button(text, background) {
  this.text = text;
  this.background = background;
}

Button.prototype.element = function() {
  const buttonElement = document.createElement('button');
  buttonElement.innerText = this.text;
  buttonElement.style.background = this.background;
  return buttonElement;
}

const blueButton = new Button('Buy', 'Red');
```

## Function Declaration

```javascript
function somar(a,b) {
  return a + b;
}

somar(6,4);
```

## Function Expression

```javascript
const somar = function(a,b) {
  return a + b;
}

somar(6,4);
```

## Arrow Function

```javascript
const somar = (a, b) => a + b;
somar(6,4);

const quadrado = a => a * a;
quadrado(4);
```

## Class

* É uma forma de implementar funções construtoras.

```javascript
class Button {
  constructor(text, background) {
    this.text = text;
    this.background = background;
  }
  element() {
    const buttonElement = document.createElement('button');
    buttonElement.innerText = this.text;
    buttonElement.style.background = this.background;
    return buttonElement;
  }
}
```

## Constructor

* Um método especial de ma classe. Nele você irá definir todas as propriedades do objeto que será criado. 

```javascript
class Button {
  constructor(text, background, color) {
    this.text = text;
    this.background = background;
    this.color = color;
  }
}

const blueButton = new Button('Click', 'blue', 'white');
```

## This

* Faz referência ao objeto criado com o new.

```javascript
class Button {
  constructor(text) {
    this.text = text;
  }
  element() {
    const buttonElement = document.createElement('button')
    buttonElement.innerText = this.text;
    return buttonElement;
  }
  appendElementTo(target) {
    const targetElement = document.querySelector(target);
    targetElement.appendChild(this.element());
  }
}

const blueButton = new Button('Click');
blueButton.appendElementTo('body');
```

## Static

* retorna a própria classe com as propriedades.

```javascript
class Button {
  constructor(text, background) {
    this.text = text;
    this.background = background;
  }
  element() {
    const elementButton = document.createElement('button');
    elementButton.innerText = this.text;
    elementButton.style.background = this.background;
    return elementButton
  }
  static createBlue(text) {
    return new Button(text, 'blue');
  }
}

const blueButton = Button.createBlue('Buy');
```

## Super

* Usamos a palavra super para falarmos com a classe pai e fazer os acesso seus métodos e propriedades.

```javascript
class Veiculo {
  constructor(wheels) {
    this.wheels = wheels;
  }
  acelerar() {
    console.log('run');
  }
}

class Moto extends Veiculo {
  acelerar() {
    super.acelerar();
    console.log('more');
  }
}

const honda = new Moto(2);
honda.acelerar();
```

## Factory Function

* Funções que retornam um objeto sem a necessidade de usar a palavra new.

```javascript
function createButton(text) {
  function element() {
    const buttonElement = document.createElement('button');
    buttonElement.innerText = text;
    return buttonElement;
  }
  return {
    element: element,
    text: text,
  }
}

const comprarBtn = createButton('Comprar');
```

## Ice Factory

* Impede que os métodos e propriedades semjam modificados com Object.freeze.

```javascript
function criarPessoa(nome, sobrenome) {
  const nomeCompleto = `${nome} ${sobrenome}`;
  function andar() {
    return `${nomeCompleto} andou`;
  }
  return Object.freeze({
    nome,
    sobrenome,
    andar,
  });
}

const designer = criarPessoa('André', 'Rafael');
```

## Closures 

* Closure é quando uma função "lembra" o escopo no qual foi criada, mesmo depois que esse escopo já foi encerrado. Em outras palavras, uma closure permite que uma função interna acesse variáveis da função externa, mesmo após a execução da função externa.

```javascript
function criarSaudacao(nome) {
    return function() {
        console.log(`Olá, ${nome}!`);
    };
}

const saudacaoLucas = criarSaudacao("Lucas");
saudacaoLucas(); // Output: Olá, Lucas!
```

## Debugging

* Debugging é o processo de identificar e corrigir erros (bugs) no código. No JavaScript, você pode usar ferramentas como o console.log, o debugger, ou o painel de desenvolvimento do navegador.

## Destructuring

* Permite a desestruturação de Arrays e Objetos. Atribuindo suas propriedades à novas variáveis.

```javascript
const carro = {
  marca: 'Fiat',
  ano: 2018,
  portas: 4,
}

const {marca, ano} = carro;

console.log(marca); // Fiat
console.log(ano); // 2018
```

## Rest Operator (...)

* O operador Rest coleta múltiplos argumentos em uma única variável. Ele é usado em funções para lidar com um número variável de argumentos ou para agrupar valores.

```javascript
function somar(...numeros) {
    let total = 0;
    for (let numero of numeros) {
        total += numero;
    }
    return total;
}

console.log(somar(1, 2, 3, 4, 5)); // Output: 15
```

## Spread Operator (...)

* O operador Spread é o inverso do Rest: ele espalha os elementos de um array ou objeto em partes individuais.

```javascript
const usuario = { nome: "Lucas", idade: 25 };
const usuarioAtualizado = { ...usuario, cidade: "São Paulo" };

console.log(usuarioAtualizado);
// Output: { nome: "Lucas", idade: 25, cidade: "São Paulo" }
```

