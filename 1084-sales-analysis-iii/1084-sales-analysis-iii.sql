SELECT p.product_id,p.product_name
FROM Product p
JOIN Sales s
USING(product_id)
GROUP BY product_id
HAVING MIN(sale_date)>='2019-01-01' AND MAX(sale_date)<='2019-03-31'

