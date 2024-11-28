### Toda função é criada com o construtor Function.

* Function.length = retorna o total de argumentos da função.

* Function.name = retorna o nome da função.

* Function.call = executa a função como um método.

```javascript
const car = {
  marca: 'toyota',
  ano: 2024
}

function descricaoCarro() {
  console.log(this.marca + ' ' + this.ano);
}

descricaoCarro.call() // undefined undefined
descricaoCarro.call(carro) // Ford 2018
```

* function.bind() = cria uma nova função com o contexto alterado.

```javascript
const li = document.querySelectorAll('li');

const filterLi = Array.prototype.filter.bind(li, function(item) {
  return item.classList.contains('ativo');
});

filterLi();
```