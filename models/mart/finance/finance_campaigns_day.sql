{{config(materialized='view')}}

SELECT
    date_date,
    ROUND((operational_margin-total_ads_cost),2) AS ads_margin,
    average_basket,
    operational_margin,
    total_ads_cost AS ads_cost,
    total_impression AS ads_impression,
    total_click AS ads_click,
    total_quantity_sold AS quantity,
    total_revenue AS revenue,
    total_purchase_cost AS purchase_cost,
    ROUND((total_revenue-total_purchase_cost),2) AS margin,
    total_shipping_fee AS shipping_fee,
    total_log_cost AS log_cost,
    total_ship_cost AS ship_cost
FROM {{ref('finance_days')}}
INNER JOIN {{ref('int_campaign_day')}}
USING(date_date)