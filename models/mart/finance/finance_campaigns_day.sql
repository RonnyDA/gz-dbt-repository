select
    date_date,
    round(operational_margin - total_ads_cost,2) as ads_margin,
    avg_basket,
    operational_margin,
    total_ads_cost,
    total_impressions,
    total_clicks,
    qty_sold as quantity,
    revenue,
    purchase_cost,
    total_margin,
    shipping_fees,
    logcosts,
    ship_costs

from {{ ref("finance_days") }}
join {{ ref("int_campaigns_day") }} using (date_date)

order by date_date desc
