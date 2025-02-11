# Casos Especiais

- Class: Já que o Class é uma palavra reservada, não podemos usar ela como nome de variável.

```jsx
const App = () => {
  return <div className='grid'>Dinihz</div>;
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
const frutas = ['Maçã', 'Banana', 'Laranja'];

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

## Propriedades

- Passamos argumentos aos componentes como propriedades.

```jsx
const Titulo = (props) => {
  return <h1>{props.texto}</h1>;
};

const App = () => {
  return (
    <section>
      <Titulo texto='Teste de Titulo' />
      <Titulo texto='Teste de Titulo2' />
    </section>
  );
};
```

# Hooks

- Hooks são uma maneira de usar estado e outras funcionalidades do React em componentes funcionais.

## useState

- O Hook `useState` permite adicionar estado a um componente funcional. Vamos ver um exemplo simples:

```jsx
import React, { useState } from 'react';

const Contador = () => {
  // Declaramos uma variável de estado chamada "contador" e uma função para atualizá-la chamada "setContador"
  const [contador, setContador] = useState(0);

  return (
    <div>
      <p>Você clicou {contador} vezes</p>
      <button onClick={() => setContador(contador + 1)}>Clique aqui</button>
    </div>
  );
};
```

- Neste exemplo, useState(0) inicializa o estado contador com o valor 0. A função setContador é usada para atualizar o valor de contador.

## UseEffect

- O Hook useEffect permite executar efeitos colaterais em componentes funcionais, como buscar dados, configurar um subscrição ou alterar o DOM. Vamos ver um exemplo:

```jsx
import React, { useState, useEffect } from 'react';

const Relogio = () => {
  const [hora, setHora] = useState(new Date());

  useEffect(() => {
    const intervalo = setInterval(() => {
      setHora(new Date());
    }, 1000);

    // Limpa o intervalo quando o componente é desmontado
    return () => clearInterval(intervalo);
  }, []);

  return (
    <div>
      <p>Hora atual: {hora.toLocaleTimeString()}</p>
    </div>
  );
};
```

- Neste exemplo, useEffect configura um intervalo que atualiza o estado hora a cada segundo. O retorno da função useEffect é uma função de limpeza que limpa o intervalo quando o componente é desmontado.

## useContext

- O Hook useContext permite acessar o contexto em componentes funcionais. Vamos ver um exemplo:

```jsx
import React, { useContext } from 'react';

const TemaContexto = React.createContext('claro');

const Caixa = () => {
  const tema = useContext(TemaContexto);
  return <div className={`caixa ${tema}`}>Tema atual: {tema}</div>;
};

const App = () => {
  return (
    <TemaContexto.Provider value='escuro'>
      <Caixa />
    </TemaContexto.Provider>
  );
};
```

- Neste exemplo, useContext(TemaContexto) acessa o valor do contexto TemaContexto, que é fornecido pelo TemaContexto.Provider.
