select
    location_id,
    name,
    address
from {{ ref('stg_locations') }}
