/*
DDL - Data Definition Language - pozwala tworzyć i modfikować zasoby przy pomocy standardowego
języka SQL, np:
 - tworzenie tabel, widoków, funkcji zdefiniowanych przez użytkownika
 - zmiana tabel
 - usuwanie tabel i widoków
  
Tworzenie tabeli - SYNTAX
  
{CREATE TABLE | CREATE TABLE IF NOT EXISTS | CREATE OR REPLACE TABLE}
table_name
[(
  column_name column_schema[, ...]
)]
[PARTITION BY partition_expression]
[CLUSTER BY clustering_column_list]
[OPTIONS(table_option_list)]
[AS query_statement]
*/

-- Pierwsza tabela
CREATE TABLE DDL.01_table (
  id STRING,
  age INT64,
  name STRING
);

-- Wstawienie wartości
INSERT INTO DDL.01_table VALUES ('001', 25, 'Mark');
INSERT INTO DDL.01_table VALUES ('002', 26, 'John');
INSERT INTO DDL.01_table VALUES ('003', 27, 'Frank');
INSERT INTO DDL.01_table VALUES ('004', 20, 'Mary');

-- Zapytanie
SELECT * FROM DDL.01_table;

-- Usuwanie
DROP TABLE DDL.01_table;

CREATE TABLE IF NOT EXISTS DDL.01_table (
  id STRING,
  age INT64,
  name STRING
);

CREATE OR REPLACE TABLE DDL.01_table (
  id STRING,
  age INT64,
  name_2 STRING
);
