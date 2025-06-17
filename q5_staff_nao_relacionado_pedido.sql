select s.id, s.name
  from staffs s
 where not exists (select 1
                     from orders o
                    where o.staff_id = s.id);