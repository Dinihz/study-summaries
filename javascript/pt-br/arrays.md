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

