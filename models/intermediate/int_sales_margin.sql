with
    joining as (

        select
            *,
            quantity * purchase_price as purchase_cost,
            round(revenue - (quantity * purchase_price), 2) as margin,

        from {{ ref("stg_raw__sales") }}
        left join {{ ref("stg_raw__product") }} using (products_id)
    )

select 
{{ margin_percent("margin", "revenue") }},
{{ revenue_prod ( 'revenue', 'quantity' ) }} AS diff_rev ,
{{ key ('products_id', 'orders_id') }},
 *
from joining






