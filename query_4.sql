SELECT product_id, model, supplier, price, date,
       RANK() OVER(PARTITION BY product_id ORDER BY price) AS rank
FROM cellphones
WHERE model = "iPhone 13";