# Write your MySQL query statement below
SELECT
    project_id
FROM
    Project
GROUP BY
    project_id
HAVING
    COUNT(employee_id) >= ALL(SELECT COUNT(employee_id) FROM Project GROUP BY project_id);

# Having 思路单独拉一个表出来比所有count都要多的情况
