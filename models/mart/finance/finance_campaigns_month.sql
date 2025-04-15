select
    extract(month from date_date) as date_month,
    round(sum(operational_margin) - sum(total_ads_cost), 2) as ads_margin,
    round(sum(avg_basket), 2) as avg_basket,
    round(sum(operational_margin), 2) as operational_margin,
    round(sum(total_ads_cost), 2) as total_ads_costs,
    round(sum(total_impressions), 2) as total_impressions,
    round(sum(total_clicks), 2) as total_clicks,
    round(sum(quantity), 2) as quantity,
    round(sum(revenue), 2) as revenue,
    round(sum(purchase_cost), 2) as purchase_costs,
    round(sum(total_margin), 2) as total_margin,
    round(sum(shipping_fees), 2) as shipping_fees,
    round(sum(logcosts), 2) as logcosts,
    round(sum(ship_costs), 2) as ship_costs

from {{ ref("finance_campaigns_day") }}
group by date_month
order by date_month desc
