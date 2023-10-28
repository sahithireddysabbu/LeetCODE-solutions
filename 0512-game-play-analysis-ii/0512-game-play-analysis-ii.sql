# Write your MySQL query statement below
WITH CTE AS (SELECT *,DENSE_RANK() OVER(PARTITION BY m.player_id ORDER BY m.event_date) AS rnk FROM (SELECT a.* FROM activity a)m)
SELECT c.player_id,c.device_id
FROM CTE c
WHERE c.rnk<2;
