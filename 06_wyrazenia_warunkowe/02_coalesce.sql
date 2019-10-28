-- COALESCE(expr1, ..., exprN)

CREATE OR REPLACE TABLE functions.coal (
  user_id STRING NOT NULL,
  is_purchased_ad_1 STRING,
  is_purchased_ad_2 STRING,
  is_purchased_ad_3 STRING,
  is_purchased_ad_4 STRING
);

INSERT INTO functions.coal VALUES ('01', 'YES', null, null, null);
INSERT INTO functions.coal VALUES ('02', null, null, null, null);
INSERT INTO functions.coal VALUES ('03', null, 'YES', null, null);
INSERT INTO functions.coal VALUES ('04', null, null, null, 'YES');

SELECT * FROM functions.coal;

SELECT 
  *,
  COALESCE(is_purchased_ad_1, is_purchased_ad_2, is_purchased_ad_3, is_purchased_ad_4) AS flag
FROM
  functions.coal;
