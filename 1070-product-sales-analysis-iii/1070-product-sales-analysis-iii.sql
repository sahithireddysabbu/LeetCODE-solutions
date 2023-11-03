# Write your MySQL query statement below
SELECT product_id , year AS first_year , quantity , price FROM Sales s
JOIN Product p USING(product_id) 
WHERE (year,product_id) IN (SELECT MIN(year),product_id FROM Sales
GROUP BY product_id);