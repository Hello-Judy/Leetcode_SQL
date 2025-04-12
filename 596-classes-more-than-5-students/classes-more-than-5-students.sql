# Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;

# 思路： group class 找到对应的 student count然后返回class
