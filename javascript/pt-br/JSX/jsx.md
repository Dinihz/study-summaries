# Casos Especiais

- Class: Já que o Class é uma palavra reservada, não podemos usar ela como nome de variável.

```jsx
const App = () => {
  return <div className="grid">Dinihz</div>;
};
```

- Empressões e variáveis são colocadas dentor do jsx usando chaves.

```jsx
const App = () => {
  const desconto = 50;
  const preco = 250;
  return <p>{preco - desconto}</p>;
};
```

# JSX Arrays

## Map

- O método map() é usado para percorrer um array e criar algo novo com cada item. No React, ele é usado para gerar elementos JSX a partir de um array.

```jsx
const frutas = ["Maçã", "Banana", "Laranja"];

const ListaDeFrutas = () => {
  return (
    <ul>
      {frutas.map((fruta) => (
        <li>{fruta}</li>
      ))}
    </ul>
  );
};
```

## Keys

- Sempre que renderizamos listas no React, o React precisa identificar cada item individualmente. Para isso, usamos a prop key.

```jsx
<ul>
  {frutas.map((fruta, index) => (
    <li key={index}>{fruta}</li>
  ))}
</ul>
```

## Array com Objetos

- Muitas vezes, os dados que queremos exibir não são apenas strings simples, mas objetos com múltiplas informações.

```jsx
const ListaDeProdutos = () => {
  return (
    <ul>
      {produtos.map((produto) => (
        <li key={produto.id}>
          {produto.nome} - R$ {produto.preco}
        </li>
      ))}
    </ul>
  );
};
```
