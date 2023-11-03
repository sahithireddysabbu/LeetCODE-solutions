SELECT x.project_id,x.employee_id FROM
(SELECT  project_id,e.employee_id,RANK() OVER(PARTITION BY project_id ORDER BY experience_years DESC) AS rnk FROM  Employee e 
JOIN Project p USING(employee_id))x
WHERE x.rnk<2;
