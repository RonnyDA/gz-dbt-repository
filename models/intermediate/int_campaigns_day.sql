select
    date_date,
    sum(ads_cost) as total_ads_cost,
    sum(impression) as total_impressions,
    sum(click) as total_clicks

from {{ ref("int_campaigns") }}
group by date_date
order by date_date desc
