### Com o Typscript, podemos indicar queal será o tipo de um valor

```typescript
const price: number = 100;

const game: {
  name: string;
  price: number;
} = {
  name: "Elden Ring",
  price: 250,
};
```

- O TS consegue inferir o tipo de um valor(inference). Entao sempre que ele conseguir, ele usa o tipo inferido nao precisamos escrever o tipo.

- Quando for funcoes vai ser necessario especificar o tipo de retorno

```typescript
function add(a: number, b: number): number {
  return a + b;
}

const ps5 = {
  name: "PlayStation 5",
  price: "3500",
};

function priceTransformer(product: { name: string; price: string }) {
  product.price = "R$" + product.price;
  return product;
}

const newProduct = priceTransformer(ps5);

console.log(newProduct);
```

### string

```typescript
const me: string = "Diniz";
```

### number

```typescript
let age: number = 19;
```

### boolean

```typescript
const condition: boolean = true;
```

- Não confundir string, number e boolean com String, Number e Boolean. Os últimos são as funções construtoras desses tipos de dados, responsáveis pela herança das propriedades e métodos dos mesmos.

```typescript
const frase1 = new String("Dinihz");
const frase2 = String("Dinihz");
const frase3 = "Dinihz";
```

### Union Types

- É comum termos funções que podem retornar ou receber tipos diferentes. Para isso usamos a barra vertical string | number | boolean.

```typescript
let all: string | number = 200;
all = "300";

function isNumber(value: string | number) {
  if (typeof value === "number") {
    return true;
  } else {
    return "Não é número";
  }
}
```

# Objects

- Usa-se uma sintaxe parecida com a criação de objetos literales, mas com um par de chaves.

```typescript
function preencherDados(dados: {
  nome: string;
  sobrenome: string;
  maiorDeIdade: boolean;
}) {
  document.body.innerHTML += `
  <div>
    <h2>${dados.nome}</h2>
    <p>${dados.sobrenome}</p>
    <p>Maior de idade: ${dados.maiorDeIdade ? "Sim" : "Não"}</p>
  </div>
  `;
}

preencherDados({
  nome: "Diniz",
  sobrenome: "Dinihz",
  maiorDeIdade: true,
});

preencherDados({
  nome: "Lucas",
  sobrenome: "Souza",
  maiorDeIdade: false,
});
```

# Types

- Cria um atalho (alias) para um tipo.

```typescript
type NumberOrString = number | string;

let TotalA: NumberOrString = 10;
TotalA = "200";

type Categoria = "A" | "B" | "C";

function isCategoria(categoria: Categoria) {
  if (categoria === "A") {
    return true;
  } else {
    return false;
  }
}

isCategoria("A");
```

# Interfaces

- Usado para definir objetos com tipos e atributos.

```typescript
interface Pessoa {
  nome: string;
  sobrenome: string;
  idade: number;
  maiorDeIdade: boolean;
}
```

## Arrays

```typescript
const numbers = [10, 40, 50, 5, 100];

function maior(data: number[]) {
  data.filter((n) => n >= 10);
}
```

### Filtrar Valores

```typescript
const valores = [10, 30, "Home", 60, "name"];

function isNumbers(data: (number | string)[]) {
  return data.filter((item) => typeof item === "number");
}
```

```typescript
const otherNumbers = [10, 30, 250, 60, 360];

function more(data: Array<number>) {
  return data.filter((n) => n > 10);
}
```

## Any

- O any indica que o dado pode conter qualquer tipo de dado do TypeScript.

- O any faz sentido no caso da função json() onde qualquer tipo de dado pode ser retornado, dependendo da API que acessarmos.

```typescript
async function fetchJSON(url: string) {
  const response = await fetch(url);
  const data = await response.json();
}

fetchJSON("https://www.openstreetmap.org/export#map=7/-19.684/-42.836");
```

## Null e Undefined

- Null é um tipo primitivo que representa a ausência de valor. É comum em funções do DOM que fazem uma busca, retornarem null quando não são bem sucedidas.

```typescript
const button05 = document.querySelector("button");
const configs = localStorage.getItem("config");

if (button !== null) {
  button.click();
}
if (button) {
  button.click();
}
if (button) button.click();
button?.click();
```

## Undefined

- variáveis/propriedades que foram instanciadas, porém, os seus valores ainda não foram definidos.

```typescript
let total05;
console.log(total); // undefined
```

# Class

- Quando definimos uma classe, o TypeScript gera a interface do objeto produzido pela mesma.

```typescript
class Produto {
  nome: string;
  preco: number;
  constructor(nome: string, preco: number) {
    this.nome = nome;
    this.preco = preco;
  }
  precoReal() {
    return `R$ ${this.preco}`;
  }
}
const livro = new Produto("Prime", 65);
```

# instanceof

- O instanceof é um operador do JavaScript que verifica se um objeto é uma instância (foi construído ou herda) de uma função construtora (class); no entanto, não funciona para interfaces definidas sem uma classe construtora.

```typescript
class Livro {
  autor: string;
  constructor(autor: string) {
    this.autor = autor;
  }
}

class Jogo {
  jogadores: number;
  constructor(jogadores: number) {
    this.jogadores = jogadores;
  }
}

function buscarProduto(busca: string) {
  if (busca === "O Hobbit") {
    return new Livro("J. R. R. Tolkien");
  }
  if (busca === "Dark Souls") {
    return new Jogo(1);
  }
  return null;
}

const produto = buscarProduto("O Hobbit");

if (produto instanceof Livro) {
  produto.autor;
}
```

## Interfaces do DOM

### querySelector

```typescript
- O objeto retornado dependerá da string que passarmos no método.

document.querySelector('video'); // HTMLVideoElement
document.querySelector('img'); // HTMLImageElement

const link1 = document.querySelector('a'); // HTMLAnchorElement
const link2 = document.querySelector('#Diihz'); // Element

link1?.href;
link2?.href; // erro no ts
```

### querySelectorAll

- O método querySelectorAll retorna todos os elementos que correspondem ao seletor CSS especificado, dentro de uma NodeList.

```typescript
const links = document.querySelectorAll(".link");
console.log(links instanceof NodeList);

links.forEach((link) => {
  if (link instanceof HTMLAnchorElement) {
    console.log(link.href);
  } else {
    console.log(typeof link);
  }
});

const anchorLinks = Array.from(links).filter(
  (link) => link instanceof HTMLAnchorElement
);
```

# Eventos

- Passamos o evento como uma string e uma função de callback no método addEventListener.

```typescript
const button = document.querySelector("button");

function handleClick(event: MouseEvent) {
  console.log(event.pageX);
}

button?.addEventListener("click", handleClick);

function handleScroll(event: Event) {
  console.log(event);
}

window.addEventListener("scroll", handleScroll);
```

- Quando uma função for executada em diferentes tipos de eventos, usamos o parâmetro Event.

```typescript
function activeMenu(event: Event) {
  console.log(event.type);
  if (event instanceof MouseEvent) {
    console.log(event.pageX);
  }
  if (event instanceof TouchEvent) {
    console.log(event.touches[0].pageX);
  }
}

document.documentElement.addEventListener("mousedown", activeMenu);
document.documentElement.addEventListener("touchstart", activeMenu);
document.documentElement.addEventListener("pointerdown", activeMenu);
```

# Generics

- Forma de declararmos um parâmetro para na função.

- Indicado por <>

```typescript
function notNull<Tipo>(arg: Tipo) {
  if (arg !== null) return arg;
  else return null;
}

notNull(200)?.toFixed();
notNull("André")?.toLowerCase();
```

```typescript
function tipoDado<T>(a: T): { dado: T; tipo: string } {
  const resultado = {
    dado: a,
    tipo: typeof a,
  };
  console.log(resultado);
  return resultado;
}

tipoDado(true);
```

## Entendendo Generics

- Indicamos o tipo genérico que deve herda com o extends.

```typescript
function extractText<Tipo extends HTMLElement>(el: Tipo): string {
  return el.innerText;
}

const link = document.querySelector("a");

if (link) {
  console.log(extractText(link));
}
```

# Functions

## Void

- No TypeScript o retorno é definido como void.

- Se a função tiper algum retorno, não terá mais o void como uma opção e sim o undefined.

```typescript
const btn = document.querySelector("button");

// Erro, void não pode ser verificado
if (btn && btn.click()) {
}

function isString(value: any) {
  if (typeof value === "string") {
    return true;
  }
}

if (isString("test")) {
  console.log("Is string");
}
```

## Never

- Utilizado em funções que geram um erro.

```typescript
function abort(mensage: string): never {
  throw new Error(mensage);
}

abort("Is not possible");
console.log("This code will never be executed");
```

## Overload

- Overload em TypeScript permite que uma função tenha múltiplas assinaturas, possibilitando diferentes formas de chamar a mesma função com base nos tipos e números de argumentos.

```typescript
// Definindo as assinaturas da função
function add(a: number, b: number): number;
function add(a: string, b: string): string;

// Implementação da função
function add(a: any, b: any): any {
  return a + b;
}

// Chamando a função com diferentes tipos de argumentos
console.log(add(1, 2)); // Saída: 3
console.log(add("Hello, ", "world!")); // Saída: Hello, world!
```

# Type Guard

- Type Guards são técnicas usadas em TypeScript para garantir a segurança de tipos (Type Safety) dentro de blocos condicionais. Eles ajudam o TypeScript a entender e estreitar (Type Narrowing) o tipo de uma variável com base em verificações de runtime, permitindo que o compilador saiba exatamente qual tipo está sendo manipulado em diferentes partes do código.

* Type Guard com typeof: Verifica o tipo primitivo de uma variável.
* Type Guard com instanceof: Verifica se um objeto é uma instância de uma classe específica.
* Type Guard com in: Verifica se uma propriedade existe em um objeto.

```typescript
function isString(value: any): value is string {
  return typeof value === "string";
}

function example(value: any) {
  if (isString(value)) {
    // Aqui o TypeScript sabe que 'value' é uma string
    console.log(value.toUpperCase());
  } else {
    console.log("Not a string");
  }
}

example("Hello");
example(123);
```

```typescript
class Dog {
  bark() {
    console.log("Woof!");
  }
}

class Cat {
  meow() {
    console.log("Meow!");
  }
}

function speak(animal: Dog | Cat) {
  if (animal instanceof Dog) {
    // Aqui o TypeScript sabe que 'animal' é um Dog
    animal.bark();
  } else {
    // Aqui o TypeScript sabe que 'animal' é um Cat
    animal.meow();
  }
}

speak(new Dog());
speak(new Cat());
```

```typescript
interface Fish {
  swim: () => void;
}

interface Bird {
  fly: () => void;
}

function move(animal: Fish | Bird) {
  if ("swim" in animal) {
    // Aqui o TypeScript sabe que 'animal' é um Fish
    animal.swim();
  } else {
    // Aqui o TypeScript sabe que 'animal' é um Bird
    animal.fly();
  }
}

const fish: Fish = { swim: () => console.log("Swimming") };
const bird: Bird = { fly: () => console.log("Flying") };

move(fish);
move(bird);
```

## Unknown

O tipo `unknown` em TypeScript representa um valor cujo tipo não é conhecido. Ele é mais seguro que o tipo `any`, pois força a verificação de tipo antes de usar o valor.

```typescript
let value: unknown;

value = "Hello, world!";
value = 42;
value = true;

// Não é possível acessar propriedades ou métodos diretamente em um valor do tipo unknown
// console.log(value.toUpperCase()); // Erro: Object is of type 'unknown'

// Usando Type Guards para verificar o tipo antes de usar
if (typeof value === "string") {
  // Aqui o TypeScript sabe que 'value' é uma string
  console.log(value.toUpperCase()); // Saída: HELLO, WORLD!
} else if (typeof value === "number") {
  // Aqui o TypeScript sabe que 'value' é um número
  console.log(value.toFixed(2)); // Saída: 42.00
} else {
  console.log("Tipo desconhecido");
}
```

### Verificar Array

- Usando o Type Guard `Array.isArray` para verificar se um valor é um array.

```typescript
const isArray = Array.isArray([1, 2, 3]);
console.log(isArray); // true
```

- Usando o Type Guard `instanceof` para verificar se um valor é um array.

```typescript
const isArray = [1, 2, 3] instanceof Array;
console.log(isArray); // true
```

## Type Predicate

Type Predicates são usados para informar ao TypeScript sobre o tipo de uma variável após uma verificação de tipo. Eles são especialmente úteis em funções de guarda de tipo (Type Guards).

```typescript
function isString(value: any): value is string {
  return typeof value === "string";
}

function example(value: any) {
  if (isString(value)) {
    // Aqui o TypeScript sabe que 'value' é uma string
    console.log(value.toUpperCase());
  } else {
    console.log("Not a string");
  }
}

example("Hello"); // Saída: HELLO
example(123); // Saída: Not a string
```

### Verificação de Objetos

- Usando `typeof` para verificar se um valor é um objeto.
- Usando Type Predicate para verificar se um objeto possui uma estrutura específica.

```typescript
function isObject(value: any): boolean {
  return typeof value === "object" && value !== null;
}

const value1 = { name: "Alice" };
const value2 = "Hello";

console.log(isObject(value1)); // Saída: true
console.log(isObject(value2)); // Saída: false
```

```typescript
interface Person {
  name: string;
  age: number;
}

function isPerson(value: any): value is Person {
  return (
    typeof value === "object" &&
    value !== null &&
    typeof value.name === "string" &&
    typeof value.age === "number"
  );
}

const person = { name: "Alice", age: 30 };
const notPerson = { name: "Bob" };

if (isPerson(person)) {
  // Aqui o TypeScript sabe que 'person' é do tipo 'Person'
  console.log(person.name); // Saída: Alice
  console.log(person.age); // Saída: 30
}

if (!isPerson(notPerson)) {
  console.log("notPerson não é um Person"); // Saída: notPerson não é um Person
}
```

# Type Assertion

- Type Assertion é uma forma de informar ao TypeScript qual é o tipo de uma variável, mesmo que o TypeScript não consiga inferir esse tipo automaticamente. É como se você estivesse dizendo ao compilador: "Confie em mim, eu sei o que estou fazendo".

## as

- O operador as é usado para fazer uma asserção de tipo. Por exemplo, se você sabe que uma variável é de um tipo específico, você pode usar as para informar isso ao TypeScript.

```typescript
let someValue: unknown = "this is a string";
let strLength: number = (someValue as string).length;
```

## ! (Non-Null Assertion)

O operador ! é usado para informar ao TypeScript que uma expressão não é nula ou indefinida. Isso pode ser útil quando você tem certeza de que uma variável não será nula, mas o TypeScript não consegue inferir isso.

```typescript
let someValue: string | null = "this is a string";
console.log(someValue!.length); // OK, someValue não é nulo
```

