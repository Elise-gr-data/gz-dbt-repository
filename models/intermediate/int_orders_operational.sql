SELECT 
    orders_id,
    date_date,
    revenue,
    (margin+shipping_fee-logcost-ship_cost) AS operational_margin,
    quantity,
    purchase_cost,
    margin,
    shipping_fee,
    ship_cost,
    logcost
FROM {{ref('int_orders_margin')}}
INNER JOIN {{ref('stg_raw__ship')}}
USING(orders_id)