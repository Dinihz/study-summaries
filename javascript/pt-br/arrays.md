### Arrays

Arrays armazenam uma coleção de elementos como strings, booleanos, números, etc.

- `array.from()`: transforma um array-like em um array.

  ```javascript
  const li = Array.from(document.querySelectorAll('li'));
  
  const loja = {
    0: 'agua',
    1: 'refrigerante',
    2: 'leite',
    length: 4,
  };
  
  const lojaArray = Array.from(loja);
  ```

- `array.isArray()`: verifica se o valor passado é uma array.

  ```javascript
  let li = document.querySelectorAll('li');
  Array.isArray(li); // false

  li = Array.from(li);
  Array.isArray(li); // true
  ```

- `[].length`: retorna o tamanho da array.

# Métodos Modificadores de Arrays

- `array.sort()`: organiza os elementos.
- `array.unshift()`: adiciona elementos no início da array.
- `array.push()`: adiciona elementos no final da array.
- `array.pop()`: remove o último elemento da array.
- `array.shift()`: remove o primeiro elemento da array.
- `array.splice()`: remove uma quantidade de elementos e retorna esses elementos.
- `array.copyWithin()`: copia uma parte da array, preenchendo-a a partir do índice especificado.
- `array.fill()`: preenche a array com o valor passado, do início até o fim.

# Métodos de Acesso a Elementos de Arrays

- `array.concat()`: junta duas ou mais arrays.
- `array.includes()`: verifica se a array possui o valor e retorna `true` ou `false`.
- `array.indexOf()`: retorna o índice do valor na array, ou -1 se não estiver presente.
- `array.lastIndexOf()`: retorna o último índice do valor passado.
- `array.join()`: junta todos os valores da array em uma string.
- `array.slice()`: retorna uma parte da array, começando pelo índice inicial até o final especificado.


# Interação

- `array.forEach()`: executa uma função para cada elemento da array.

- `Arrow Functions`: Funções de forma simples, que podem ser usadas em lugar de funções normais.

´´´´
const li = document.querySelectorAll('li');

li.forEach(i => i.classList.add('ativa'));

li.forEach(function(item) {
  item.classList.add('ativa');
});
´´´

- `array.map()`: retorna um novo array com os valores da array original, transformando-os em um novo tipo.

# Uso do Método `reduce` em JavaScript

 - O método `reduce` permite acumular valores de um array em uma única saída. Ele recebe uma função de acumulação e um valor inicial.


```javascript
array.reduce((acumulador, valorAtual) => {
  // Lógica de acumulação
  return novoAcumulador;
}, valorInicial);

Ex:

```

const numeros = [1, 2, 3, 4, 5];
const soma = numeros.reduce((acumulador, valorAtual) => acumulador + valorAtual, 0);

console.log(soma); // Saída: 15
´´´´

