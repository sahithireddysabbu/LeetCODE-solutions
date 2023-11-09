# Write your MySQL query statement below
SELECT followee AS follower,COUNT(*) AS num
FROM follow
WHERE followee IN (SELECT follower  FROM follow)
GROUP BY followee
ORDER BY follower
 