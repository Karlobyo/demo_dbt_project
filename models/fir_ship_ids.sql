

WITH first_shipped AS (SELECT *
FROM {{ ref('first_orders') }}
WHERE order_status = "shipped"
)
SELECT *,
CURRENT_TIMESTAMP() AS updated_at
FROM first_shipped

-- {% if is_incremental() %}
-- WHERE CURRENT_TIMESTAMP() > (SELECT MAX(updated_at) FROM {{ this }})
-- {% endif %}
