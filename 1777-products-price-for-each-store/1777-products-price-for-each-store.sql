SELECT product_id,MIN(CASE WHEN store='store1' THEN price END) store1,
MIN(CASE WHEN store='store2' THEN price END) store2,
MIN(CASE WHEN store='store3' THEN price END) store3
FROM Products
GROUP BY product_id