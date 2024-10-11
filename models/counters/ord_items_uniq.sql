{{ dbt_utils.deduplicate(
    relation=source('olist', 'ordit'),
    partition_by='order_id',
    order_by="price"
   )
}}
