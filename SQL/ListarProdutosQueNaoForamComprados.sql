select P.product_id, P.product_name from products P 
where not exists(select 1 from order_items O where P.product_id = O.product_id)
