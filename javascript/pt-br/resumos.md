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
