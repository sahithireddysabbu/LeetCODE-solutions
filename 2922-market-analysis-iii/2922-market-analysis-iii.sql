WITH CTE AS(SELECT o.seller_id,COUNT(DISTINCT item_id) num_items,RANK() OVER(ORDER BY COUNT(DISTINCT item_id) DESC ) RNK FROM Orders O 
JOIN Items i USING(item_id)
JOIN Users u USING(seller_id)
WHERE u.favorite_brand<>i.item_brand
GROUP BY 1
)
SELECT c.seller_id,c.num_items FROM CTE c
WHERE c.rnk<2
ORDER BY c.seller_id


