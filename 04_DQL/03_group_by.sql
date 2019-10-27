-- SELECT ... FROM ... WHERE ... GROUP BY ...
SELECT 
  end_station_id,
  count(*) as count_station
FROM
  DQL.bike
GROUP BY
  end_station_id;
  
-- SELECT ... FROM ... WHERE ... GROUP BY ... ORDER BY ...
SELECT 
  end_station_id,
  count(*) as count_station
FROM
  DQL.bike
GROUP BY
  end_station_id
ORDER BY
  count_station;
  
-- SELECT ... FROM ... WHERE ... GROUP BY ... ORDER BY ... LIMIT ...  
SELECT 
  end_station_id,
  count(*) as count_station
FROM
  DQL.bike
GROUP BY
  end_station_id
ORDER BY
  count_station DESC
LIMIT 20;

-- SELECT ... FROM ... WHERE ... GROUP BY ... ORDER BY ... LIMIT ...  
SELECT 
  end_station_id,
  end_station_name,
  count(*) as count_station
FROM
  DQL.bike
GROUP BY
  end_station_id,
  end_station_name
ORDER BY
  count_station DESC
LIMIT 20;

-- SELECT ... FROM ... WHERE ... GROUP BY ... ORDER BY ... LIMIT ...  
SELECT 
  end_station_id,
  end_station_name,
  count(*) as count_station
FROM
  DQL.bike
WHERE
  duration > 50
GROUP BY
  end_station_id,
  end_station_name
ORDER BY
  count_station DESC
LIMIT 20;

-- SELECT ... FROM ... WHERE ... GROUP BY ... HAVING ... ORDER BY ... LIMIT ...  
SELECT 
  end_station_id,
  end_station_name,
  count(*) as count_station
FROM
  DQL.bike
WHERE
  duration > 50
GROUP BY
  end_station_id,
  end_station_name
HAVING
  count_station >= 7
ORDER BY
  count_station DESC;
  
-- SELECT ... FROM ... WHERE ... GROUP BY ... HAVING ... ORDER BY ... LIMIT ... OFFSET ...
SELECT 
  end_station_id,
  end_station_name,
  count(*) as count_station
FROM
  DQL.bike
WHERE
  duration > 50
GROUP BY
  end_station_id,
  end_station_name
HAVING
  count_station >= 5
ORDER BY
  count_station DESC
LIMIT
  10
OFFSET 
  3;
  
  
