SELECT name FROM (SELECT name,COUNT(*) FROM Candidate c
JOIN Vote v
ON c.id=v.candidateId
GROUP BY name
ORDER BY COUNT(*) DESC)s
Limit 1;

