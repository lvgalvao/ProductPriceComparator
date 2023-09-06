SELECT product_id, model, 
       MIN(price) AS lowest_price, 
       MAX(price) AS highest_price, 
       ROUND(AVG(price),2) AS average_price
FROM cellphones
GROUP BY product_id, model
ORDER BY product_id;
