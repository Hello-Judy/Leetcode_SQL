# Write your MySQL query statement below

select distinct(author_id) as "id" from Views
group by viewer_id
having viewer_id = author_id;