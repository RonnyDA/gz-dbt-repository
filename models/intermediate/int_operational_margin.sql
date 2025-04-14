select
    orders_id,
    quantity,
    date_date,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost,
    round(margin + shipping_fee - logcost - ship_cost, 2) as operational_margin
from {{ ref("int_orders_margin") }}
join {{ ref("stg_raw__ship") }} using (orders_id)
