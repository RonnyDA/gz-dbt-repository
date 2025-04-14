


select
    date_date,
    count(orders_id) nb_transactions,
    round(sum(revenue), 2) as revenue,
    round(sum(revenue) / count(orders_id), 2) as avg_basket,
    round(sum(margin), 2) as total_margin,
    round(sum(operational_margin), 2) as total_operational_margin,
    round(sum(purchase_cost), 2) as purchase_cost,
    round(sum(shipping_fee), 2) as shipping_fees,
    round(sum(logcost), 2) as logcosts,
    round(sum(quantity), 2) as qty_sold

from {{ ref("int_operational_margin") }}
group by date_date
