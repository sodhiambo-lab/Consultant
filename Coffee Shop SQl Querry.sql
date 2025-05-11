use [CENTRAL]
go
select max(transaction_time) from [Coffee Shop Sales];
select 
	transaction_id,
	transaction_date,
FORMAT(transaction_date, 'MMMM') AS Month_name,
FORMAT(transaction_date, 'dddd')  AS Day_of_week,
	transaction_time,
case
	When transaction_time between '06:00:00' and '11:59:59' then '6am -11am'
	When transaction_time between '12:00:00' and '16:59:59' then '12:00: to 4pm'
	When transaction_time between '17:00:00' and '19:59:59' then '5pm - 7pm'
	else '8pm - Midnight'
	End as Time_Interval,
	transaction_qty,
	store_id,
	store_location,
	product_id,
	unit_price,
cast(replace(unit_price,',','.') As Float) * transaction_qty As Revenue,
	product_category,
	product_type,
	product_detail,
Case
	When transaction_time between '06:00:00' and '11:59:59' then 'Morning'
	When transaction_time between '12:00:00' and '16:59:59' then 'Afternoon'
	When transaction_time between '17:00:00' and '19:59:59' then 'Evening'
	else 'Night'
	End as Time_Bracket
from [Coffee Shop Sales];