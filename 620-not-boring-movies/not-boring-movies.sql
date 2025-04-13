# Write your MySQL query statement below
select * from Cinema
# 先找到 odd number id 且并不boring 的电影
where (id % 2) <> 0 and description <> 'boring'
# 且 order 顺序是descending based on rating 
order by rating DESC;