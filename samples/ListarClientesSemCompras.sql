select customer_id, first_name, last_name from customers C
where not exists(select 1 from orders O where c.customer_id = o.customer_id) 