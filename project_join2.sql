SELECT * FROM gumeonggage_db.menu_tb;

select
	mt.menu_id,
    mt.menu_name,
    count(menu_count) as count,
    mt.menu_price
from
	menu_tb mt
    left outer join order_tb ot on(ot.menu_id = mt.menu_id)
group by
	menu_id