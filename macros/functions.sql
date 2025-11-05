{% macro margin_percent (revenue, purchase_cost, nb_decimal)%}
    ROUND(SAFE_DIVIDE({{revenue}},{{purchase_cost}}),{{nb_decimal}})
{% endmacro %}