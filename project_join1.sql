SELECT * FROM gumeonggage_db.order_tb;

select
	ot.menu_id,
    olt.order_time
from
	order_tb ot
    left outer join order_list_tb olt on(olt.order_list_id = ot.order_list_id)
group by
	menu_id