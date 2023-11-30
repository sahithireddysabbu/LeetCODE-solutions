# Write your MySQL query statement below
SELECT ROUND(SUM(CASE WHEN order_Date=customer_pref_delivery_date THEN 1
ELSE 0 END)*100/COUNT(*),2) immediate_percentage
FROM Delivery