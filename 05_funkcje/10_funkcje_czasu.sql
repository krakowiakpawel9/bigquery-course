-- Funkcje czasu
  
-- CURRENT_TIME()
SELECT CURRENT_TIME('+2:00') as current_time;

-- TIME(hour, minute, second) - towrzy obiekt TIME
SELECT TIME(10, 12, 45) as time;

-- TIME_ADD(time, INTERVAL INT64 part)
SELECT 
  CURRENT_TIME('+2:00') as now,
  TIME_ADD(CURRENT_TIME('+2:00'), INTERVAL 1 HOUR) as after_1_hour,
  TIME_ADD(CURRENT_TIME('+2:00'), INTERVAL 1 MINUTE) as after_1_min,
  TIME_ADD(CURRENT_TIME('+2:00'), INTERVAL 1 SECOND) as after_1_sec,
  TIME_ADD(CURRENT_TIME('+2:00'), INTERVAL 1 MILLISECOND) as after_1_ms;
  
-- TIME_SUB(time, INTERVAL INT64 part) 
SELECT 
  CURRENT_TIME('+2:00') as now,
  TIME_SUB(CURRENT_TIME('+2:00'), INTERVAL 1 HOUR) as one_hour_ago,
  TIME_SUB(CURRENT_TIME('+2:00'), INTERVAL 1 MINUTE) as one_min_ago,
  TIME_SUB(CURRENT_TIME('+2:00'), INTERVAL 1 SECOND) as one_sec_ago,
  TIME_SUB(CURRENT_TIME('+2:00'), INTERVAL 1 MILLISECOND) as one_ms_ago; 
  
-- TIME_DIFF(time1, time2, part)
SELECT 
  TIME_DIFF(TIME '15:00:00', TIME '14:00:00', HOUR) as hour_diff,
  TIME_DIFF(TIME '15:00:00', TIME '14:00:00', MINUTE) as minute_diff,
  TIME_DIFF(TIME '15:00:00', TIME '14:49:20', SECOND) as sec_diff;
