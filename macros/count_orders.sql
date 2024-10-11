-- count n of records in tables
{% macro count_ord(table_name) %}
SELECT COUNT(*) AS count, "{{table_name}}" AS table_name
FROM {{ source('olist', table_name) }}
{% endmacro %}

-- count n of records in the order table with a specific status
{% macro count_ord_st(ord_status) %}
SELECT COUNT(*) AS count, "ord" AS table_name
FROM {{ source('olist', 'ord') }}
WHERE order_status = "{{ord_status}}"
{% endmacro %}
