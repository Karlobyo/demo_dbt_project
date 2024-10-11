SELECT *
FROM {{ ref('fir_ship_ids') }}
WHERE fir_ship_ids.order_status != "shipped"
