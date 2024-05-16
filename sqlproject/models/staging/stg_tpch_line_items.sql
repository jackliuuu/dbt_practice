SELECT 
    CONCAT_WS('|', CAST(l_orderkey AS CHAR), CAST(l_linenumber AS CHAR)) AS order_item_key,
    l_orderkey AS order_key,
    l_partkey AS part_key, 
    l_linenumber AS line_number,
    l_quantity AS quantity,
    l_extendedprice AS extended_price,
    l_discount AS discount_percentage,
    l_tax AS tax
FROM {{ source('testdb','lineitem') }}