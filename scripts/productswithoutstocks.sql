SELECT p.*
FROM products c
LEFT JOIN stocks s ON p.product_id = s.product_id
WHERE s.quantity IS NULL OR s.quantity = 0;