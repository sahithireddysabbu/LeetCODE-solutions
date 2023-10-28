# Write your MySQL query statement below
SELECT p.product_name,SUM(unit) as unit  FROM Products p
JOIN Orders o USING(product_id)
WHERE order_date between '2020-02-01' and '2020-02-29' 
GROUP BY o.product_id
HAVING sum(unit)>=100
ORDER BY O.PRODUCT_ID;
