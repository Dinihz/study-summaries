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
