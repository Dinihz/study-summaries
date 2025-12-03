# Resumo de SQL

## Tipos de dados
- INTEGER: dados numéricos inteiros.
- TEXT: dados do tipo texto.

## SELECT
- SELECT: extrai dados de uma tabela e exibe os resultados.

## Alias (AS)
- Usado para dar nomes a colunas ou expressões.
- Também pode ser usado para renomear uma coluna no resultado.

## Funções
- ROUND(valor, casas): arredonda números para o número de casas decimais indicado.

## Concatenação de texto
- Para concatenar texto usa-se o operador '||'.

## Exemplos

```sql
SELECT * FROM PRODUCT;
```

```sql
SELECT PRODUCT_ID,
       DESCRIPTION,
       PRICE,
       ROUND(PRICE * 1.07, 2) AS TAXED_PRICE
FROM PRODUCT;
```

```sql
SELECT NAME,
       CITY || ', ' || STATE AS LOCATION
FROM CUSTOMER;
```

```sql
SELECT NAME,
       STREET_ADDRESS || ' ' || CITY || ', ' || STATE || ' ' || ZIP AS SHIP_ADDRESS
FROM CUSTOMER;
```
# Filtragem e Operadores

Este resumo cobre os principais comandos e operadores usados na cláusula **WHERE** para filtrar e manipular dados em consultas SQL.

---

## 1. Operadores de Comparação e Lógicos

Esses operadores são fundamentais para criar condições na cláusula `WHERE`.

| Operador | Significado | Uso | Observação |
| :--- | :--- | :--- | :--- |
| `<>` ou `!=` | **Diferente de** (Not Equal) | `WHERE coluna <> 'valor'` | Ambos são equivalentes. `<>` é o padrão ANSI SQL. |
| `AND` | **E** (Conjunção) | `WHERE cond1 AND cond2` | Retorna TRUE apenas se **ambas** as condições forem TRUE. |
| `OR` | **OU** (Disjunção) | `WHERE cond1 OR cond2` | Retorna TRUE se **pelo menos uma** das condições for TRUE. |
| `%` (Módulo) | **Resto da Divisão** | `WHERE ID % 2 = 0` | Usado para verificar divisibilidade (ex: IDs pares) ou múltiplos. |

**⚠️ Precedência (Prioridade):** O `AND` é avaliado antes do `OR`. Use **parênteses `()`** para forçar a ordem de avaliação, garantindo a lógica correta (ex: `WHERE A AND (B OR C)`).

---

## 2. Filtragem de Listas e Valores

| Comando | Significado | Exemplo | Explicação |
| :--- | :--- | :--- | :--- |
| `IN` | **Incluído na Lista** | `WHERE MONTH IN (3, 6, 9)` | Simplifica múltiplas condições `OR` contra uma mesma coluna. |
| `NOT IN` | **Não Incluído na Lista** | `WHERE MONTH NOT IN (3, 6, 9)` | Retorna linhas cujo valor **não** está na lista. |
| `DISTINCT` | **Valores Únicos** | `SELECT DISTINCT CITY FROM...` | Usado após o `SELECT` para remover linhas duplicadas no resultado. |

---

## 3. Filtragem de Padrões de Texto (`LIKE`)

O operador `LIKE` permite buscar *strings* que correspondam a um padrão, usando caracteres curinga.

| Curinga | Significado | Exemplo | Resultado |
| :--- | :--- | :--- | :--- |
| **`%`** | Zero, um ou mais caracteres | `LIKE 'A%'` | Começa com 'A' (Ex: 'Ana', 'Abril'). |
| **`_`** | Exatamente um caractere | `LIKE 'B_C%'` | Começa com 'B', tem qualquer letra no meio e continua com 'C'. |

**Exemplo:** `SELECT REPORT_CODE FROM STATION_DATA WHERE report_code LIKE 'B_C%'`

---

## 4. Tratamento de Valores Nulos

O valor **NULL** (nulo) representa dados ausentes ou desconhecidos e é tratado de forma diferente dos valores comuns.

| Comando | Significado | Exemplo | Explicação |
| :--- | :--- | :--- | :--- |
| `IS NULL` | **É Nulo** | `WHERE snow_depth IS NULL` | Verifica se o campo não possui valor. Não use `=` ou `!=`. |
| `IS NOT NULL` | **Não É Nulo** | `WHERE precipitation IS NOT NULL` | Verifica se o campo possui algum valor. |
| `COALESCE()` | **Substituir Nulo** | `COALESCE(precipitation, 0)` | Retorna o primeiro valor não nulo em uma lista. Útil para tratar `NULL`s como um valor padrão (ex: `0`) em cálculos ou filtros. |

**Exemplo:** `SELECT * FROM STATION_DATA WHERE COALESCE(precipitation, 0) <= 0.5;`

---

## 5. Funções de String

| Função | Uso | Exemplo |
| :--- | :--- | :--- |
| `LENGTH()` | Retorna o número de caracteres em uma string. | `WHERE LENGTH(report_code) != 6` |
