SELECT COUNT(*) AS num_orders_today
FROM {{ ref ("stg_orders")}}
WHERE date(Order_date) = CURRENT_DATE
HAVING COUNT(*) > 0