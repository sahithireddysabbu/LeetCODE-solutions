SELECT D.pay_month,D.department_id,CASE WHEN C.comp_avg>D.dept_avg THEN 'lower'
WHEN c.comp_avg=d.dept_avg THEN 'same'
ELSE 'higher' END AS comparison
FROM 
(SELECT DATE_FORMAT(pay_date,'%Y-%m') pay_month,department_id,AVG(amount) dept_avg
FROM Salary s
JOIN Employee e USING(employee_id)
GROUP BY 1,2
ORDER BY 1,2)D
JOIN (
SELECT DATE_FORMAT(pay_date,'%Y-%m') pay_month,AVG(amount) comp_avg
FROM Salary 
GROUP BY 1
)C
USING(pay_month)
ORDER BY 2
