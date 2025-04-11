SELECT
date_date
,count(orders_id) nb_transactions
,ROUND(sum(revenue),2) as revenue
,ROUND(sum(revenue)/count(orders_id),2) as avg_basket
,ROUND(sum(margin),2) as total_margin
,ROUND(sum(operational_margin),2) as total_operational_margin
,ROUND(sum(purchase_cost),2) as purchase_cost
,ROUND(sum(shipping_fee),2) as shipping_fees
,ROUND(sum(logcost),2)as logcosts
,ROUND(sum(quantity),2)as qty_sold

FROM {{ ref('int_operational_margin') }}
GROUP by
date_date
