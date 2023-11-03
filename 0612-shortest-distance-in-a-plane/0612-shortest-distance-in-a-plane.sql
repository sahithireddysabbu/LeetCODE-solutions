# Write your MySQL query statement below
SELECT MIN(ROUND(ABS((SQRT(POW(p2.x - p1.x, 2) + POW(p2.y - p1.y, 2)))),2)) AS shortest FROM Point2D p1,point2d p2
WHERE (p1.x,p1.y)<>(p2.x,p2.y)
