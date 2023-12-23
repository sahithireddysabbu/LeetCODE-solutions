# Write your MySQL query statement below
SELECT name,IFNULL(SUM(rest),0) rest ,IFNULL(SUM(paid),0) paid,IFNULL(SUM(canceled),0) canceled,IFNULL(SUM(refunded),0) refunded FROM Product P
LEFT JOIN Invoice i USING(product_id)

GROUP BY name
ORDER BY name
