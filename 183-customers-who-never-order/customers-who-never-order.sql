# Write your MySQL query statement below
-- select Customers.name as "Customers" 
-- from Customers  
-- where Orders.customerId <> Customers.id；

select customers.name as 'Customers' 
from customers
where customers.id not in # 这步非常的重要
(select customerid from orders);

-- The IN operator allows you to specify multiple values in a WHERE clause. The IN operator is a shorthand for multiple OR conditions.
-- The IN operator allows you to specify multiple values in a WHERE clause.
-- By using the NOT keyword in front of the IN operator, you return all records that are NOT any of the values in the list.


