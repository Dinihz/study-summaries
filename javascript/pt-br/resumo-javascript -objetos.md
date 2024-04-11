# Function() construtor

Chamar o construtor diretamente pode criar funções dinamicamente, mas sofre de segurança e problemas de desempenho semelhantes (mas muito menos significativos) como eval(). No entanto, ao contrário eval (que pode ter acesso ao escopo local), o Function o construtor cria funções que são executadas apenas no escopo global.

- new (cria um novo objeto)

- ex:

```
function Dom() {
  this.seletor = 'li';
  const element = document.querySelector(this.seletor);
  this.active = function() {
    element.classList.add('active');
  };
}

const list = new Dom();
list.seletor = 'ul';
list.ativo();

```
