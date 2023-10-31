# Write your MySQL query statement below
SELECT question_id AS survey_log FROM (SELECT question_id,ROUND(SUM(CASE WHEN action='answer' THEN 1 ELSE 0 END)/SUM(CASE WHEN action='show' THEN 1 ELSE 0 END),1)  AS x
FROM SurveyLog
GROUP BY 1
ORDER BY x DESC,1)m
LIMIT 1;
