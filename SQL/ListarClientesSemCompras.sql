select C.customer_id, C.first_name, C.last_name from customers C
where not exists(select 1 from orders O where C.customer_id = O.customer_id) 