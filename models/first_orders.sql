SELECT *
FROM {{ ref('shipped_orders') }}
ORDER BY order_purchase_timestamp
LIMIT 30
