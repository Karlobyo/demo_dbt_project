{% snapshot order_st %}

{{ config(
  target_schema= 'olist',
  unique_key= 'order_id',
  strategy= 'check',
  check_cols= ['order_status'])
}}

SELECT *
FROM {{ source('olist', 'fordids') }}

{% endsnapshot %}
