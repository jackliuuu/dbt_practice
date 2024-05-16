{% macro discount_amount(extended_price, discount_percentage, scale=2) %}
    CAST((-1 * {{extended_price}} * {{discount_percentage}}) AS DECIMAL(16,{{scale}}))
{% endmacro %}