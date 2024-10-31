### Number & Mat

## Number 

* É uma construta de números.

```
const price = 200
```

 --> number.isNaN(NaN) --> verifica se é um NaN

Number.isInteger(10) -> ele verifica se o número é inteiro.

Number.parseFloat("Reais 50")//100 -> faz uma string virar um numero. Mas a String tem que comecar com um numero.

Number.parseInt -> mesma coisa do float porem o float tem dicimal o integer nao.

ToFixed:

* Arredonda um numero com base no total de casas decimais.

```
const price = 200.99

price.ToFixed(); //201
```

N.TOLOCALSTRING: formata um numero de acordo com a linguagem

```
const car = 15.000

car.toLocalString('pt-BR'), {style: 'currency', currency: 'BRL'} // R$ 15000,00

```

## MATH

* Objeto nativo.

Math.abs(-10.10) // 10.1 --> transforma negativo em positivo.

Math.ceil(6.3) // 7 --> sempre arredonda para cima

Math.floor(2.6) // 2 --> sempre arredonda para baixo

Math.round(7.3) //7 --> arredonda da maneira tradicional

Math.max(10,3,6,8,30); // 30 -> retorna o maior valor da lista

Math.min(1,6,9,42); // 1 -> retorna o menor valor da lista

Math.random(); -> gera um numero random

