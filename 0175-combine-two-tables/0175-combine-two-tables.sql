# Write your MySQL query statement below
SELECT 
    lastName,
    firstName,
    city,
    state
FROM Person p
LEFT JOIN Address a USING(personId)
