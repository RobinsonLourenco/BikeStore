select S.store_name, Sf.first_name, Sf.last_name from staff Sf 
inner join stores S 
on S.store_id = Sf.store_id
where not exists(select 1 from orders O where O.staff_id = Sf.staff_id)