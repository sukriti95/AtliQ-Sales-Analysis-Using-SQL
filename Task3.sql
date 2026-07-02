-- Yearly Report for croma
Select fiscal_year(s.date) as fiscal_year, Round(sum(g.gross_price * s.sold_quantity),2) as Yearly_Sales
From fact_sales_monthly  S join fact_gross_price g
on g.product_code = s.product_code and g.fiscal_year = fiscal_year(s.date)
Where customer_code = 90002002
Group by fiscal_year(s.date)
order by fiscal_year(s.date) asc;