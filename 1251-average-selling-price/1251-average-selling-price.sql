/* Write your T-SQL query statement below */
select Prices.product_id, 
isnull(round(sum(Prices.price * UnitsSold.units * 1.0) / sum(UnitsSold.units),2), 0)
as average_price
from Prices left join UnitsSold
on Prices.product_id = UnitsSold.product_id
and UnitsSold.purchase_date between start_date and Prices.end_date
group by Prices.product_id