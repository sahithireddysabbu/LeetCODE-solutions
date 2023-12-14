# Write your MySQL query statement below
SELECT country,gold_medals,silver_medals,bronze_medals 
FROM(
    SELECT *,row_number() OVER(ORDER BY gold_medals DESC ,silver_medals DESC ,bronze_medals DESC  ,country ASC) rn FROM Olympic)t
ORDER BY t.rn
