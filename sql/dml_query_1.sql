select	order_id,
		tc.customer_id,
		customer_city,
		order_purchase_timestamp 
from tb_order a
	left join tb_customer tc using(customer_id)	
where order_status not like '%canceled%'; 