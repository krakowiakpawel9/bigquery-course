-- DML - Data Manipulation Language
-- Umożliwia takie operacje jak UPDATE, INSERT, DELETE

CREATE OR REPLACE TABLE DML.products (
  product_id INT64 NOT NULL,
  product_name STRING,
  quantity INT64,
  price FLOAT64
);

CREATE OR REPLACE TABLE DML.orders (
  order_id INT64 NOT NULL,
  product_id INT64 NOT NULL,
  quantity INT64,
  price FLOAT64
);

-- INSERT
INSERT INTO DML.products VALUES (1, 'book', 30, 19.99);
INSERT INTO DML.products VALUES (2, 'car', 10, 19900.00);
INSERT INTO DML.products VALUES (3, 'oven', 100, 199.99);
INSERT INTO DML.products VALUES (4, 'tv', 15, 399.99);

SELECT price FROM DML.products WHERE product_id = 1;

INSERT INTO DML.orders VALUES (1, 1, 2, (SELECT price FROM DML.products WHERE product_id = 1));
INSERT INTO DML.orders VALUES (2, 4, 1, (SELECT price FROM DML.products WHERE product_id = 4));
INSERT INTO DML.orders VALUES (3, 2, 2, (SELECT price FROM DML.products WHERE product_id = 2));

-- DELETE
DELETE DML.orders WHERE order_id = 2;

DELETE DML.orders;

DELETE DML.orders WHERE order_id IN (SELECT order_id FROM DML.orders WHERE price > 1000);

SELECT order_id FROM DML.orders WHERE price > 1000;

-- UPDATE
UPDATE DML.products SET price = 24.99 WHERE product_id = 1;
UPDATE DML.products SET quantity = 99 WHERE product_id = 3;
UPDATE DML.products SET quantity = 99;

