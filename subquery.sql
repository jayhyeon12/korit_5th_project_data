select
	ott.order_year,
    ott.order_month,
    ott.menu_id,
    sum(ott.menu_count) as total_count,
    sum(ott.menu_count) * mt.menu_price as sales
from
	(select
		date_format(order_time, "%Y") as order_year,
		date_format(order_time, "%m") as order_month,
		menu_id,
		menu_count
	from
		order_tb ot
		left outer join order_list_tb olt on(olt.order_list_id = ot.order_list_id)) ott
	left outer join menu_tb mt on(mt.menu_id = ott.menu_id)
group by
	ott.order_year,
    ott.order_month,
    ott.menu_id