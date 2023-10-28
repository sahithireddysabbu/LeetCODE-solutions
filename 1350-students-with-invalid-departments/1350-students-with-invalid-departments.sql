# Write your MySQL query statement below
SELECT DISTINCT id,name FROM Students
WHERE Department_id NOT IN (SELECT id FROM Departments);