# Object

### MEétodos do Object

* Object.create(obj, defineProperties): retorna um novo objeto com as propriedades definidas no objeto original
```javascript
// Objeto base que será o protótipo
const animal = {
  tipo: 'Animal',
  fazerSom() {
    console.log(`${this.tipo} faz som!`);
  }
};

// Criando um novo objeto que herda de 'animal'
const cachorro = Object.create(animal, {
  tipo: { 
    value: 'Cachorro', 
    writable: true, 
    enumerable: true, 
    configurable: true 
  },
  raca: { 
    value: 'Golden Retriever', 
    writable: true, 
    enumerable: true, 
    configurable: true 
  },
  latir: { 
    value: function () { 
      console.log('Au au!'); 
    },
    writable: true,
    enumerable: true,
    configurable: true
  }
});

// Usando o objeto criado
console.log(cachorro.tipo);        // Cachorro (propriedade sobrescrita)
console.log(cachorro.raca);        // Golden Retriever
cachorro.latir();                  // Au au!
cachorro.fazerSom();               // Cachorro faz som! (herdado de 'animal')

// Verificando herança
console.log(Object.getPrototypeOf(cachorro) === animal); // true
```

* Object.assing(alvo, obj1, obj2, ...): atribui os valores dos objetos passados a um objeto alvo.

```javascript
// Objeto alvo
const destino = {
  nome: 'Lucas',
  idade: 25
};

// Objeto origem 1
const origem1 = {
  idade: 30, // Sobrescreve 'idade' do objeto 'destino'
  cidade: 'São Paulo'
};

// Objeto origem 2
const origem2 = {
  profissao: 'Desenvolvedor',
  pais: 'Brasil'
};

// Copiando propriedades para o objeto destino
const resultado = Object.assign(destino, origem1, origem2);


console.log(destino === resultado); // true, pois 'destino' foi modificado diretamente

// O comportamento de sobrescrita
console.log(destino.idade); // 30 (origem1 sobrescreveu a idade original)
```

 * Object.defineProperty(obj, prop, descriptor): define uma nova propriedade no objeto.

```javascript
const obj = {};
Object.defineProperty(obj, 'name', {
  value: 'Lucas',
  writable: false, // impede mudança de valor
  enumerable: true, // torna enumerável
  configurable: false // impede deletar e mudança de valor
});
```

 ### Get e Set

 * Com get e set, é possível definir comportamentos personalizados para leitura e escrita de propriedades:

    * O get é ativado ao acessar a propriedade (obj.propriedade) e retorna um valor dinâmico.
    * O set é acionado ao atribuir um valor (obj.propriedade = 'valor') e executa uma lógica antes de definir o valor.


 * Object.getOwnPropertyDescriptors(obj): Lista todos os métodos e propriedades de um objeto.

```javascript
Object.getOwnPropertyDescriptors(array); // lista os metodos e propriedades da array.
```

* Object.freeze(obj): Congela um objeto, impedindo que ele seja modificado.

* Object.seal(obj): Congela um objeto, impedindo que ele seja modificado e adicionado propriedades.

* Object.preventExtensions(obj): Impede que novas propriedades sejam adicionadas ao objeto.

* {}.propertyIsEnumerable(prop): Retorna true se a propriedade é enumerável.

* {}.constructor: Retorna a função construtora do objeto.

* {}.isprototypeof(obj): Retorna true se o objeto é um objeto protótipo.

* {}.tostring(): Retorna a representação textual do objeto.


