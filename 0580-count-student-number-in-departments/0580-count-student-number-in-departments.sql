# Write your MySQL query statement below
SELECT dept_name,SUM(CASE WHEN s.dept_id THEN 1 ELSE 0 END) AS student_number
FROM Department d
LEFT JOIN Student s
ON  s.dept_id=d.dept_id
GROUP BY 1
ORDER BY COUNT(s.dept_id) DESC,1;
