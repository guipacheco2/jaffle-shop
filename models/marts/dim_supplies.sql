select
    supply_id,
    name,
    cost
from {{ ref('stg_supplies') }}
