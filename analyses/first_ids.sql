WITH first_shipped AS (SELECT *
FROM {{ ref('first_orders') }})
SELECT *
FROM first_shipped
WHERE first_shipped.order_status = "shipped"
