SELECT
    *,
    (revenue-quantity*purchase_price) AS margin
FROM {{ref('stg_raw__sales')}}
INNER JOIN {{ref('stg_raw__product')}}
USING(products_id)
ORDER BY quantity DESC,products_id