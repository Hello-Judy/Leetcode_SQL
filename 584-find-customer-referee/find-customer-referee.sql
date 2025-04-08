# Write your MySQL query statement below
select name from Customer
where referee_id <> 2 or referee_id is null
# 记住 is null 不是 = null