SELECT
    *,
    (quantity*purchase_price) AS purchase_cost,
    (revenue-quantity*purchase_price) AS margin,
    {{margin_percent('revenue', ('quantity * purchase_price'))}} AS margin_percent
FROM {{ref('stg_raw__sales')}}
INNER JOIN {{ref('stg_raw__product')}}
USING(products_id)
--ORDER BY quantity DESC