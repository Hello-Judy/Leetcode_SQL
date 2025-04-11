select customer_number from orders
# depend on the customer_numbeer
group by customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
