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
s
