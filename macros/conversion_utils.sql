{% macro ethereum_conversion(args) %}

sum( {{args}} )/1e18
  
{% endmacro %}



{% macro stable_conversion(args) %}

sum( {{args}} )/1e6
  
{% endmacro %}

{% macro conversion(column_name,factor) %}

sum( {{column_name}} /power(10, {{factor}} ))
  
{% endmacro %}