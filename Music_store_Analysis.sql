--Q5: Who is the best customer? the customer who has spent the most money will be declare the best customer. write a query that retruns the person whi has spent the most money.
select customer.customer_id,customer.first_name, customer,customer.last_name, SUM(invoice.total) as total
from customer
JOIN invoice ON customer.customer_id
 = invoice.customer_id
group by customer.customer_id,customer
ORDER by total desc
limit 1