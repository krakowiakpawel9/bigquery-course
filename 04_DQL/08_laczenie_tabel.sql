CREATE TABLE IF NOT EXISTS DQL.employees (id STRING, emp_name STRING, salary INT64);

INSERT INTO DQL.employees VALUES ('001', 'James', 4000);
INSERT INTO DQL.employees VALUES ('002', 'Henry', 6000);
INSERT INTO DQL.employees VALUES ('003', 'Jack', 3000);
INSERT INTO DQL.employees VALUES ('004', 'Tom', 7000);

SELECT * FROM DQL.employees;

CREATE TABLE IF NOT EXISTS DQL.departments (emp_id STRING, dep_name STRING, dep_code STRING);

INSERT INTO DQL.departments VALUES ('001', 'Marketing', 'MRK');
INSERT INTO DQL.departments VALUES ('002', 'Information Technology', 'IT');
INSERT INTO DQL.departments VALUES ('005', 'Sales', 'SLS');

SELECT * FROM DQL.departments;
  
SELECT 
  * 
FROM 
  DQL.employees AS t1
JOIN
  DQL.departments AS t2
ON t1.id = t2.emp_id;

SELECT 
  * 
FROM 
  DQL.employees AS t1
INNER JOIN
  DQL.departments AS t2
ON t1.id = t2.emp_id;

SELECT 
  * 
FROM 
  DQL.employees AS t1
LEFT JOIN
  DQL.departments AS t2
ON t1.id = t2.emp_id;

SELECT 
  * 
FROM 
  DQL.employees AS t1
RIGHT JOIN
  DQL.departments AS t2
ON t1.id = t2.emp_id;

SELECT 
  * 
FROM 
  DQL.employees AS t1
FULL OUTER JOIN
  DQL.departments AS t2
ON t1.id = t2.emp_id;
  
SELECT 
  * 
FROM 
  DQL.employees AS t1
CROSS JOIN
  DQL.departments AS t2;

SELECT 
  t1.emp_name,
  t2.dep_name
FROM 
  DQL.employees AS t1
CROSS JOIN
  DQL.departments AS t2;
