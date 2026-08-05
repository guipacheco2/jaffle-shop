select
    id as product_id,
    name,
    price
from {{ ref('raw_products') }}
