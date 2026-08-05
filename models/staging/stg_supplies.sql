select
    id as supply_id,
    name,
    cost
from {{ ref('raw_supplies') }}
