# Write your MySQL query statement below
WITH CTE AS (SELECT * ,ROW_NUMBER() OVER(PARTITION BY e.company ORDER BY e.salary ASC) AS 'RNo',COUNT(*) OVER(PARTITION BY e.company) as 'cn' FROM
(SELECT * FROM Employee)e)
SELECT id,company,salary FROM CTE C
WHERE C.RNo>=C.cn/2 and C.RNo<=C.cn/2+1
