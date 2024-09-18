SELECT r.contest_id, ROUND(COUNT(distinct r.user_id)* 100 / COUNT(distinct u.user_id) , 2) AS percentage
FROM Users u, Register r

GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
