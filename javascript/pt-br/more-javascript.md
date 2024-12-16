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