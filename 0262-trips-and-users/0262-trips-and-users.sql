WITH CTE AS (sELECT users_id FROM Users
WHERE banned="NO")

SELECT request_at as Day , ROUND(SUM(CASE WHEN status LIKE 'cancelled%' THEN 1 ELSE 0 END)/COUNT(*),2) AS 'Cancellation Rate'
FROM Trips
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
AND client_id IN (SELECT * FROM CTE ) AND driver_id IN (SELECT * FROM CTE )
GROUP BY request_at;

