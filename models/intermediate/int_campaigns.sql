With union_ads as (


select *
from {{ ref("stg_raw__adwords") }}

union all
select *
from {{ ref("stg_raw__bing") }}

union all
select *
from {{ ref("stg_raw__criteo") }}

union all
select *
from {{ ref("stg_raw__facebook") }}
)

Select 

*
, paid_source as source

FROM union_ads