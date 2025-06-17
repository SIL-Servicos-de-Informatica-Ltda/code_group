-- Substituir <Store A> pelo nome da loja desejada
-- Consulta para obter o total vendido por marca em uma loja específica
select b.name as Marca, sum(oi.quantity) as Total_Vendido
  from brands b
 inner join products p on b.id = p.brand_id
 inner join order_items oi on oi.product_id = p.id
 inner join orders o on oi.order_id = o.id
 inner join stores s on o.store_id = s.id
 where s.store_name = 'Store A'
   and o.status = 'delivered'
 group by b.name;

 -- Para Listar todas as lojas adicionar a coluna store_name na cláusula select e group by
-- e remover a cláusula where que filtra por loja específica .   