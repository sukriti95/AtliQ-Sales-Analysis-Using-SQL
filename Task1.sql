SELECT S.date,S.product_code,S.sold_quantity,P.product,P.variant ,G.gross_price,
Round(S.sold_quantity * G.gross_price,2) as Gross_Price_Total
FROM gdb0041.fact_sales_monthly S JOIN dim_product P on S.product_code = P.product_code
JOIN fact_gross_price G on S.product_code = G.product_code and fiscal_year(s.date) = G.fiscal_year
Where S.customer_code = 90002002 and
fiscal_year(date) = 2021
order by S.date
Limit 10000;