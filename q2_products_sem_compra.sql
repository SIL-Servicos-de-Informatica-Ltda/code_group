select p.product_id, p.product_name
  from products p
  where not exists (select 1
                      from order_items oi
                     inner join orders o on oi.order_id = o.order_id
                     inner join customers c on o.customer_id = c.customer_id
                     where oi.product_id = p.product_id
                       and o.status = 'completed');