# Write your MySQL query statement below
SELECT name ,IFNULL(SUM(distance),0) travelled_distance
FROM Users u
LEFT JOIN Rides r ON u.id=r.user_id
GROUP BY user_id
ORDER BY 2 DESC,1 ASC