select * from staffs Sf 
where not exists( select 1 from orders O where O.staff_id = Sf.staff_id)