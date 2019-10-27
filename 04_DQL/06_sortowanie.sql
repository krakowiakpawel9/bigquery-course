SELECT * FROM `bigquery-course-257019.DQL.bike`;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY bike_id;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY bike_id ASC;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY bike_id DESC;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY duration DESC LIMIT 3;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY duration DESC LIMIT 3 OFFSET 3;

SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY end_station_id, duration;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY end_station_id DESC, duration DESC;
SELECT * FROM `bigquery-course-257019.DQL.bike` ORDER BY 5 DESC, 2 DESC;
SELECT rental_id, end_station_id, duration FROM `bigquery-course-257019.DQL.bike` ORDER BY 2 DESC, 3 DESC;
