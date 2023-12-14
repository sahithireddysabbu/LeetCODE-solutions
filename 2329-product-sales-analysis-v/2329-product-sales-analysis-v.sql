# Write your MySQL query statement below
SELECT user_id,SUM(quantity*price) AS spending
FROM Sales
JOIN Product USING(product_id)
GROUP BY user_id
ORDER BY 2 DESC
