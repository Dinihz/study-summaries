# String

- STR.LENGTH:

--> total de caracteres da string

```
const oi = 'oii';
frase.length; // 3
```

- STR.CHARAT(N):

--> Retorna o caracter de acordo com o index de (n)

```
const linguagem = 'JavaScript';

linguagem.charAt(0); // J
linguagem.charAt(2); // v
linguagem.charAt(linguagem.length - 1); // t
```

- STR.CONCAT(STR2, STR3, ...):

--> Procura pela string exata dentro de outra string. A procura é case sensitive

```
const fruta = 'Maça';
const listaFrutas = 'Melancia, Maça, ';

listaFrutas.includes(fruta); // true
fruta.includes(listaFrutas); // false

```

- STR.ENDSWITH(SEARCH) E STR.STARTSWITH(SEARCH):

```
const fruta = 'Banana';

fruta.endsWith('nana'); // true
fruta.startsWith('Ba'); // true
fruta.startsWith('na'); // false

```

- STR.SLICE(START, END:

--> Corta a string de acordo com os valores de start e end
