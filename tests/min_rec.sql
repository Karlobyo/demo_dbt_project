{% set expected_count = {
    "ord": 20,
    "geo": 20,
    "ordit":15,
    "fordids": 30,
    "cust": 20}
    %}

{% for table, exp_count in expected_count.items()  %}
  SELECT (SELECT COUNT(*)
    FROM {{ source('olist', table) }}) AS record_count,
    '{{ table }}' AS table_name,
  {{ exp_count }} AS expected_count
  FROM {{ source('olist', table) }}
  WHERE (SELECT COUNT(*)
    FROM {{ source('olist', table) }}) < {{ exp_count }}
  {% if not loop.last %} UNION ALL {% endif %}
{% endfor %}
