CREATE TEMP TABLE temp_table (
  id STRING,
  age INT64,
  name STRING
);

INSERT INTO temp_table VALUES ('001', 25, 'Mark');
INSERT INTO temp_table VALUES ('002', 26, 'John');
INSERT INTO temp_table VALUES ('003', 22, 'Frank');
INSERT INTO temp_table VALUES ('004', 20, 'Mary');

SELECT AVG(age) FROM temp_table;
