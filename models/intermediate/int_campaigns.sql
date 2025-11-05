SELECT * FROM {{ref('stg_raw__adwords')}}
UNION
SELECT * FROM {{ref('stg_raw__bing')}}
UNION
SELECT * FROM {{ref('stg_raw__criteo')}}
UNION
SELECT * FROM {{ref('stg_raw__facebook')}}