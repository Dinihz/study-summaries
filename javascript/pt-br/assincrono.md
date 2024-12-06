# Assíncrono

* Síncrono
  - Espera a tarefa ser concluída para continuar com a próxima linha de código.

* Assíncrono
  - Ele move para a próxima tarefa antes da anterior.
  - Vantagens: não trava o script enquanto espera a tarefa ser concluída.
  - E não precisa carregara página por completo.

# Promise

* Uma Promise é um objeto que representa uma operação a ser realizada.
* Uma Promise pode ser rejeitada ou aceita.
* Uma Promise pode ser rejeitada se a operação não for bem sucedida.
* Uma Promise pode ser aceita se a operação for bem sucedida.

```javascript
const promessa = new Promise(function(resolve, reject) {
  let condicao = true;
  if(condicao) {
    resolve();
  } else {
    reject();
  }
});

console.log(promessa); // Promise {<resolved>: undefined}
```

* Promice.all(): A reposta é uma array com as respostas de cada promise.

* Promice.race(): Essa nova promise terá a resposta da primeira resolvida.

## Resolve

* ele é enviado junto com a resolução da Promise.
* resolve é uma função do tipo callback.

```javascript
const promessa = new Promise(function(resolve, reject) {
  let condicao = true;
  if(condicao) {
    resolve('Estou pronto!');
  } else {
    reject();
  }
});

console.log(promessa); // Promise {<resolved>: "Estou pronto!"}
```

## Reject

* ele é enviado junto com a rejeição da Promise.Podemos indicar no console um erro, informando que a promise foi rejeitada.

```javascript
const promessa = new Promise(function(resolve, reject) {
  let condicao = false;
  if(condicao) {
    resolve('Estou pronto!');
  } else {
    reject(Error('Um erro ocorreu.'));
  }
});


console.log(promessa); // Promise {<rejected>: Error:...}
```

## Then

* then é uma função do tipo callback.
* then é usado para manipular a Promise.
* Callback deste método só será ativado quando a promise for resolvida. O argumento do callback será o valor passado na função resolve.

```javascript
const promessa = new Promise(function(resolve, reject) {
  let condicao = true;
  if(condicao) {
    resolve('Estou pronto!');
  } else {
    reject(Error('Um erro ocorreu.'));
  }
});

promessa.then(function(resolucao) {
  console.log(resolucao); // 'Estou pronto!'
});
```

* Podemos colocar then() após then() para fazer encadeamente de promessas.

```javascript
const promessa = new Promise((resolve, reject) => {
  resolve('Etapa 1');
});

promessa.then(resolucao => {
  console.log(resolucao); // 'Etapa 1';
  return 'Etapa 2';
}).then(resolucao => {
  console.log(resolucao) // 'Etapa 2';
  return 'Etapa 3';
}).then(r => r + 4)
.then(r => {
  console.log(r); // Etapa 34
});
```

## Catch

* Adiciona um callback a promise que será ativado caso a mesma seja rejeitada.

```javascript
const promessa = new Promise((resolve, reject) => {
  let condicao = false;
  if(condicao) {
    resolve('Estou pronto!');
  } else {
    reject(Error('Um erro ocorreu.'));
  }
});

promessa.then(resolucao => {
  console.log(resolucao);
}).catch(reject => {
  console.log(reject);
});
```

## Finally

* executará a função anônima assim que a promessa acabar. 

```javascript
const promessa = new Promise((resolve, reject) => {
  let condicao = false;
  if(condicao) {
    resolve('Estou pronto!');
  } else {
    reject(Error('Um erro ocorreu.'));
  }
});

promessa.then(resolucao => {
  console.log(resolucao);
}, reject => {
  console.log(reject);
}).finally(() => {
  console.log('Acabou'); // 'Acabou'
});
```
### JSON

* JavaScript Object Notation (JSON) é um formato de organização de dados, compostos por um conjunto de chave e valor.

```javascript
{
  "id": 1,
  "name": "Dinihz",
  "email": "dinihzcontato@gmail.com"
}
```

- Os valores podem ser de qualquer tipo, incluindo objetos e arrays.
- É comum possuirmos array's com objetos em cada valor da array. 

```javascript
[
  {
    id: 1,
    name: 'Pomodoro',
    tempo: '25min',
  },
  {
    id: 2,
    name: 'Intervalo',
    tempo: '15min',
  },
  {
    id: 3,
    name: 'Foco',
    tempo: '10min',
  },
];
```

- JSON.parse(): converte um texto JSON em um objeto JavaScript.
- JSON.stringify(): converte um objeto JavaScript em um texto JSON.

```javascript
const textoJSON = '{"id": 1, "titulo": "JavaScript", "tempo": "25min"}';
const textoOBJ = JSON.parse(textoJSON);

const enderecoOBJ = {
  cidade: 'Ribeirão das Neves',
  rua: 'Rua 2',
  pais: 'Brasil',
  numero: 35,
};
const enderecoJSON = JSON.stringify(enderecoOBJ);
```


