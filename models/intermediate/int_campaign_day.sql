SELECT
    date_date,
    COUNT(campaign_key) AS nb_of_campaigns,
    SUM(ads_cost) AS total_ads_cost,
    SUM(impression) AS total_impression,
    SUM(click) AS total_click
FROM {{ref('int_campaigns')}}
GROUP BY date_date
ORDER BY date_date DESC 