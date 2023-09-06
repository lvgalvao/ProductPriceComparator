WITH SupplierA_Prices AS (
    SELECT model, price AS SupplierA_price
    FROM cellphones
    WHERE supplier = 'SupplierA' AND date = '2023-01-01'
), 
SupplierB_Prices AS (
    SELECT model, price AS SupplierB_price
    FROM cellphones
    WHERE supplier = 'SupplierB' AND date = '2023-01-01'
)

SELECT a.model, a.SupplierA_price, b.SupplierB_price, 
       (a.SupplierA_price - b.SupplierB_price) AS price_difference
FROM SupplierA_Prices a
JOIN SupplierB_Prices b ON a.model = b.model;
