with

    source as (select * from {{ source("raw", "facebook") }}),

    renamed as (

        select
            date_date,
            paid_source as pd_sc,
            campaign_key,
            campgn_name as campaign_name,
            cast(ads_cost as float64) as ads_cost,
            cast(impression as int64) as impression,
            cast(click as int64) as click
        from source

    )

select *
from renamed
