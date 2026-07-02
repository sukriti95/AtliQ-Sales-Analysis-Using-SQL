-- Gross Monthly Total Sales report for croma
Select s.date,Round(sum(g.gross_price * s.sold_quantity),2) as Gross_Price_Total
From fact_sales_monthly  S join fact_gross_price g
on g.product_code = s.product_code and g.fiscal_year = fiscal_year(s.date)
Where customer_code = 90002002
Group by s.date
order by s.date asc;