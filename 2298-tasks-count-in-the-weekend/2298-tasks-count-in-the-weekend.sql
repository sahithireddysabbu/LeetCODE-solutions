SELECT 
    COUNT(IF(WEEKDAY(submit_date) >= 5,1,NULL)) AS weekend_cnt,
    COUNT(IF(WEEKDAY(submit_date) <= 4,1,NULL)) AS working_cnt
FROM Tasks
