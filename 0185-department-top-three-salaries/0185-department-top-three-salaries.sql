# Write your MySQL query statement below
WITH CTE AS (SELECT *,DENSE_RANK() OVER(PARTITION BY x.department ORDER BY x.SALARY DESC) AS RNK FROM
(SELECT d.name AS Department,e.name AS Employee,e.salary FROM Employee e 
JOIN Department d on e.departmentid=d.id )x )
SELECT c.Department,c.Employee,c.Salary FROM CTE C
WHERE rnk<4;