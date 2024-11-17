select St.store_name, Br.brand_name, SUM(OI.quantity)  from stores St
inner join stocks S 
on S.store_id = St.store_id
inner join products P 
on P.product_id = S.product_id
inner join brands Br
on Br.brand_id = P.brand_id
inner join order O
on O.store_id = St.store_id
inner join order_items OI 
on OI.order_id = O.order_id
   and OI.product_id = P.product_id
group by St.store_name, Br.brand_name