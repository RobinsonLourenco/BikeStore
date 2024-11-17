select St.store_id, St.store_name, P.product_id, P.product_name from stores St
inner join stocks S 
on S.store_id = St.store_id
inner join products P
on S.product_id = P.product_id
where S.quantity = 0