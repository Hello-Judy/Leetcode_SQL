


# This could work but with low efficiency
-- SELECT DISTINCT(a.email) as "Email" FROM
-- Person as a, Person as b
-- where a.email = b.email and a.id != b.id;
# This could work but with low efficiency

# Correct Answer should be:
SELECT email AS "Email"
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

# GROUP BY email：按email分组。HAVING COUNT(*) > 1：选取出现次数大于1次的email，即重复的email。这样保证每个重复email只出现一次，避免冗余和超时问题。

# COUNT(*) 是一种聚合函数，用于统计每个分组的记录数目。注：COUNT(column_name) 只统计非NULL的行，而COUNT(*)统计所有行。


-- HAVING 的用法
-- 作用：
-- HAVING 用于对经过分组之后的数据再进行过滤。
-- 可以看成是“对分组后的结果进行二次筛选”的操作。
-- 区别于WHERE：
-- WHERE 用于分组之前的数据过滤。
-- HAVING 用于分组之后的数据过滤。





