# Write your MySQL query statement below
SELECT u.user_id,name,IFNULL(SUM(distance),0) "traveled distance"
FROM users u
LEFT JOIN Rides
USING(user_id)
GROUP BY u.user_id
ORDER BY u.user_id