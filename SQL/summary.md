# 📚 Resumo Completo de Estudos em SQL

Este resumo consolida anotações sobre seleção de dados, funções básicas, operadores lógicos e tratamento de dados ausentes (NULL) e agrupamento.

---

## 1. Fundamentos e Seleção de Dados (`SELECT`)

| Conceito | Exemplo | Descrição |
| :--- | :--- | :--- |
| **SELECT** | `SELECT * FROM PRODUCT;` | Extrai colunas e exibe os resultados da tabela. |
| **Alias (`AS`)** | `ROUND(PRICE * 1.07, 2) AS TAXED_PRICE` | Usado para dar um nome temporário a uma coluna ou expressão no resultado. |
| **Concatenação** | `CITY || ', ' || STATE` | Combina strings (texto) usando o operador `||`. |
| **Tipos Básicos** | `INTEGER`, `TEXT` | Representam dados numéricos inteiros e dados do tipo texto, respectivamente. |
| **Função `ROUND()`** | `ROUND(valor, casas)` | Arredonda números para o número de casas decimais indicado. |

---

## 2. Filtragem de Dados (`WHERE`) e Operadores

A cláusula `WHERE` aplica condições a **registros individuais** antes que os dados sejam retornados ou agrupados.

### 2.1. Operadores de Comparação e Lógicos

| Operador | Significado | Exemplo | Prioridade |
| :--- | :--- | :--- | :--- |
| `<>` ou `!=` | **Diferente de** | `WHERE coluna <> 'valor'` | Média |
| `AND` | **E** (Conjunção) | `WHERE cond1 AND cond2` | Alta (avalia primeiro) |
| `OR` | **OU** (Disjunção) | `WHERE cond1 OR cond2` | Baixa (avalia depois) |
| `%` | **Módulo** (Resto da Divisão) | `WHERE ID % 2 = 0` | Média |

> 💡 **Dica de Prioridade:** Use **parênteses `()`** para forçar a ordem de avaliação se misturar `AND` e `OR`.

### 2.2. Filtragem de Listas e Padrões

| Comando | Tipo | Uso | Exemplo |
| :--- | :--- | :--- | :--- |
| **`IN` / `NOT IN`** | Lista | Simplifica múltiplas condições `OR`. | `WHERE MONTH IN (3, 6, 9)` |
| **`LIKE`** | Padrão | Busca strings com caracteres curinga. | `WHERE report_code LIKE 'A%'` |
| **Curinga `%`** | Padrão | Zero, um ou mais caracteres. | `'A%'` (começa com A) |
| **Curinga `_`** | Padrão | Exatamente um caractere. | `'B_C%'` (qualquer caractere na segunda posição) |

### 2.3. Tratamento de NULL e Funções de String

| Comando | Finalidade | Exemplo |
| :--- | :--- | :--- |
| **`IS NULL`** | Verifica se o valor está ausente. | `WHERE snow_depth IS NULL` |
| **`IS NOT NULL`**| Verifica se o valor está presente. | `WHERE precipitation IS NOT NULL` |
| **`COALESCE()`** | Substitui um valor `NULL` por um valor padrão. | `COALESCE(precipitation, 0)` |
| **`LENGTH()`** | Retorna o número de caracteres em uma string. | `WHERE LENGTH(report_code) != 6` |

---

## 3. Agregação, Agrupamento e Ordenação

Essas cláusulas permitem resumir e organizar os dados.

### 3.1. Funções de Agregação

Operam sobre um conjunto de linhas para retornar um único valor de resumo.

| Função | Finalidade | Regra de NULL |
| :--- | :--- | :--- |
| **`COUNT(*)`** | Total de linhas. | Inclui NULLs. |
| **`SUM()`, `AVG()`, `MIN()`, `MAX()`** | Soma, Média, Mínimo, Máximo. | **Ignoram** valores NULL. |

### 3.2. Agrupamento (`GROUP BY`)

| Conceito | Exemplo | Descrição |
| :--- | :--- | :--- |
| **`GROUP BY`** | `GROUP BY year` | Agrupa linhas com valores idênticos para aplicar funções agregadas a cada grupo. |
| **`GROUP BY 1, 2`** | `GROUP BY 1, 2` | Usa a posição da coluna no `SELECT` para agrupar, útil para expressões longas. |
| **`DISTINCT`** | `SELECT DISTINCT CITY FROM...` | Usado para remover linhas duplicadas no resultado final da consulta. |

### 3.3. Filtragem de Agregações (`HAVING`)

| Cláusula | Função | Nível de Execução |
| :--- | :--- | :--- |
| **`WHERE`** | Filtra **registros individuais**. | **Antes** do `GROUP BY`. |
| **`HAVING`** | Filtra **grupos** (valores agregados). | **Depois** do `GROUP BY`. |

**Exemplo:**
```sql
 GROUP BY year HAVING SUM(precipitation) > 30
```

### 3.4. Ordenação (ORDER BY)

| Comando | Finalidade | Direção |
| :--- | :--- | :--- |
| **`ORDER BY`** | Ordena a ordem final dos resultados. | É a última cláusula executada (depois do `SELECT`, `FROM`, `WHERE`, `GROUP BY`, e `HAVING`). |
| **`ASC`** | Ordem Crescente (padrão). | Ex: `ORDER BY year ASC` (A-Z, 1-10) |
| **`DESC`** | Ordem Decrescente. | Ex: `ORDER BY year DESC` (Z-A, 10-1) |
