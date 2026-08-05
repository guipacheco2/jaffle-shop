select
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    p.payment_method,
    p.amount,
    c.full_name as customer_name
from {{ ref('stg_orders') }} o
left join {{ ref('stg_payments') }} p on o.order_id = p.order_id
left join {{ ref('dim_customers') }} c on o.customer_id = c.customer_id
