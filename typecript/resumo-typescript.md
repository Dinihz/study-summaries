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
