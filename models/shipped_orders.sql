SELECT *
FROM {{ source('olist', 'ord') }}
WHERE order_status = "shipped"
