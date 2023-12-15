SELECT q.id,q.year,IFNULL(n.npv,0) npv FROM Queries q
LEFT JOIN NPV n ON n.year=q.year AND n.id=q.id  
