# Write your MySQL query statement below
SELECT s.student_id,s.student_name,ss.subject_name,count(e.subject_name) as attended_exams FROM students s
JOIN Subjects ss
LEFT JOIN Examinations e ON s.student_id=e.student_id and ss.subject_name=e.subject_name
GROUP BY s.student_id,ss.subject_name
order by s.student_id,ss.subject_name
;