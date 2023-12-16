# Write your MySQL query statement below
SELECT DISTINCT l1.account_id FROM LogInfo l1
JOIN LogInfo l2 ON l1.account_id=l2.account_id
AND l1.ip_address!=l2.ip_address
WHERE l1.login BETWEEN l2.login AND l2.logout
OR L2.logout BETWEEN L1.login AND L1.logout
