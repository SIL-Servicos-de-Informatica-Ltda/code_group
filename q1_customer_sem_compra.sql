select c.customer_id, c.first_name, c.last_name, c.email
  from customers c
  where not exists (select 1
                    from orders o
                    where o.customer_id = c.customer_id
                      and o.status = 'completed')