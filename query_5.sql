SELECT product_id, model, supplier, price, date,
       ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY price) AS row_num
FROM cellphones
WHERE model = "iPhone 13";