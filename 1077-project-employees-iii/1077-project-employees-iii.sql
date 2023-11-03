# Write your MySQL query statement below
WITH CTE AS (SELECT *,DENSE_RANK() OVER(PARTITION BY p.project_id ORDER BY e.experience_years DESC)  AS rnk FROM (SELECT p.project_id,e.employee_id,e.experience_years FROM Project p 
JOIN Employee e ON p.employee_id=e.employee_id)x)
SELECT c.project_id,c.employee_id FROM CTE c
WHERE c.rnk<2;