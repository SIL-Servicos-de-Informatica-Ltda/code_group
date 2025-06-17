select p.product_id, p.product_name
  from products p
  where not exists (select 1 from stocks s
                    where s.product_id = p.product_id
                      and s.quantity > 0)
  union
select p.product_id, p.product_name
  from products p
 inner join stocks s on p.product_id = s.product_id
  where s.quantity = 0;