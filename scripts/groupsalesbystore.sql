SELECT s.store_id, b.brand_name , COUNT(oi.product_id) AS  total_vendas
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN brands b ON p.brand_id = b.brand_id
JOIN stores s ON oi.store_id = s.store_id
GROUP BY s.store_id, b.brand_name;