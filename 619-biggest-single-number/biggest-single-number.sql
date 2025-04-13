# Write your MySQL query statement below
SELECT MAX(num) AS num FROM (SELECT num FROM MyNumbers GROUP BY num HAVING COUNT(num) = 1 ) NEW;

# 思路：
-- SELECT num
-- FROM MyNumbers
-- GROUP BY num
-- HAVING COUNT(num) = 1
-- 这一步的作用是：
-- 先将 num 按值分组
-- 然后筛选出只出现一次的数字
-- 得到的就是一个只包含“唯一数字”的中间表（比如 [1, 3, 7]）
# 然后外查询：
-- SELECT MAX(num) AS num
-- FROM (...) NEW;

# \U0001f511 那么，NEW 有什么作用？
# ✅ 答案：它是子查询的别名（alias），是必须要写的！
#  在 SQL 中，任何子查询都必须有别名，否则语法错误！

#SELECT MAX(num) AS num  FROM MyNumbers WHERE num IN (SELECT num FROM MyNumbers GROUP BY num HAVING COUNT(*) = 1);
