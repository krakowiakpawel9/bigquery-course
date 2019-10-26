CREATE TABLE IF NOT EXISTS DDL.02_table (
  id INT64,
  name STRING,
  has_married BOOL,
  date_of_birth DATE,
  insert_timestamp TIMESTAMP
);

INSERT INTO DDL.02_table VALUES (1, 'MARK', true, '1990-10-01', CURRENT_TIMESTAMP());
INSERT INTO DDL.02_table VALUES (2, 'TOM', true, '1992-10-01', CURRENT_TIMESTAMP());
INSERT INTO DDL.02_table VALUES (3, 'JOHN', true, '1989-10-01', CURRENT_TIMESTAMP());

SELECT * FROM DDL.02_table;

-- Tworzenie tabeli z zapytania
SELECT * FROM `bigquery-public-data.github_repos.languages` LIMIT 10;

CREATE TABLE git.lang AS SELECT * FROM `bigquery-public-data.github_repos.languages` LIMIT 10;

-- Kolumna wymagana
CREATE TABLE IF NOT EXISTS DDL.03_table (
  id INT64 NOT NULL,
  name STRING,
  has_married BOOL,
  date_of_birth DATE,
  insert_timestamp TIMESTAMP
);
  
INSERT INTO DDL.03_table VALUES (1, 'Mark', false, '1990-01-01', CURRENT_TIMESTAMP());
INSERT INTO DDL.03_table VALUES (2, 'Oleg', NULL, NULL, CURRENT_TIMESTAMP());
INSERT INTO DDL.03_table VALUES (NULL, 'Mike', NULL, NULL, CURRENT_TIMESTAMP());
