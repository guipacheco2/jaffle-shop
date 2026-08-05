select
    id as location_id,
    name,
    address
from {{ ref('raw_locations') }}
