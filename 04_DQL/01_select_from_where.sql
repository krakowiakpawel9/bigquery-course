-- SELECT 
SELECT 3;
SELECT 3 AS number;
SELECT 'python' AS language_;

SELECT 
  3 AS number,
  'python' AS lang,
  4.5 AS rating;
  
-- FROM
CREATE TABLE DQL.bike AS SELECT * FROM `bigquery-public-data.london_bicycles.cycle_hire` LIMIT 1000;

SELECT * FROM DQL.bike;

SELECT
  rental_id,
  duration,
  start_date,
  end_date
FROM 
  DQL.bike
LIMIT
  5;
 
SELECT
  rental_id,
  start_station_id,
  end_station_id
FROM
  DQL.bike;
  
-- SELECT ALL
-- SELECT DISTINCT
SELECT
  DISTINCT *
FROM
  DQL.bike;
  
-- SELECT ... EXCEPT(...)
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
FROM
  DQL.bike;
  
-- SELECT ... REPLACE(...) 
SELECT 
  * REPLACE (duration / 60 AS duration)
FROM
  DQL.bike;

-- SELECT ... EXCEPT(...) REPLACE(...)
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike;
  
-- WHERE
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  end_station_id = 512;
  
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  1 = 0;
  
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  duration / 60 > 300;
  
-- WHERE ... OR ...  
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  end_station_id = 512 OR end_station_id = 700;  
  
-- WHERE ... AND ...
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  end_station_id = 512 AND duration / 60 > 10;
  
-- WHERE ... IN ...
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  end_station_id IN (512, 700, 257, 259);
  
-- WHERE ...  NOT IN ...
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  end_station_id  NOT IN (512, 700, 257, 259);  


SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  duration / 60 >= 30 AND duration / 60 <= 35;
  
-- BETWEEN ... AND ...
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  duration / 60 BETWEEN 30 AND 35;
  
-- BETWEEN ... AND ...
SELECT
  * EXCEPT (end_station_logical_terminal, start_station_logical_terminal, end_station_priority_id)
  REPLACE (duration / 60 AS duration)
FROM
  DQL.bike
WHERE
  start_date BETWEEN '2015-04-01' AND '2015-04-07';
