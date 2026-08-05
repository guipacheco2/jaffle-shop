select
    oi.order_item_id,
    oi.order_id,
    oi.product_id,
    oi.quantity,
    p.name as product_name,
    p.price,
    (oi.quantity * p.price) as item_total,
    o.customer_id,
    o.order_date,
    o.status
from {{ ref('stg_order_items') }} oi
join {{ ref('stg_products') }} p on oi.product_id = p.product_id
join {{ ref('stg_orders') }} o on oi.order_id = o.order_id
