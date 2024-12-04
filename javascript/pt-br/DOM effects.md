## Dataset

*  Há uma coleção de dados disponível em [HTMLElement: dataset property](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dataset) que pode ser usado para estudar os efeitos de DOM.

# Data Atributes

*  Há uma coleção de dados disponível em [Utilizando data attributes](https://developer.mozilla.org/pt-BR/docs/Learn/HTML/Howto/Use_data_attributes) que pode ser usado para estudar os efeitos de DOM.

# Modules

* usamos o export default para exportar o módulo.

* Para importar mais de um módulo usando as chaves.

```javascript
import { nomeDoModulo1, nomeDoModulo2 } from "./nomeDoArquivo";
```

# Strict

* Ele previne que você faça alterações indesejadas ao DOM.

* Para habilitar o modo estrito, você pode usar o comando `use strict`.

```javascript
'use strict';
```

# SetTimeout()

* Ativa o callback após tempo.

```javascript
function espera(texto) {
  console.log(texto);
}
setTimeout(espera, 5000, 'Depois de 5s');
```

* Imediato

```javascript
setTimeout(() => {
  console.log('Após 0s?');
});
```

# ClearInterval(var)

* Para parar um intervalo usamos clearInterval.

```javascript
const contarAte50 = setInterval(callback, 5000);

let i = 0;
function callback() {
  console.log(i++);
  if (i > 10) {
    clearInterval(contarAte50);
  }
}
```

# New Date

 - O construtor Date é usado para criar objetos Date, que representam uma data e hora especificas.
  ```javascript
  const agora = new Date();
  agora;
  // Semana Mês Dia Ano HH:MM:SS GMT
  agora.getDate() // Dia
  agora.getDay() // Dia da Semana ex: 5 = Fri
  agora.getMonth() // Número dia mês
  agora.getFullYear() // Ano
  agora.getHours() // Hora
  agora.getMinutes() // Minutos
  agora.getTime() // ms desde 1970
  agora.getUTCHours() - 3 // Brasília
  ```

# GetTime()

 - O método getTime() retorna o tempo atual em milissegundos desde o Unix Epoch (1 de janeiro 1970 00:00:00 UTC).

  ```javascript
  const agora = new Date();
  agora.getTime(); //

  
  const diasPassados = agora.getTime() / (24 * 60 * 60 * 1000);
  ```

