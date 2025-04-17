 {% macro margin_percent(margin, revenue) %}
     ROUND(SAFE_DIVIDE( {{'margin'}}, {{'revenue'}} ),2) as margin_percent
 {% endmacro %}

  {% macro revenue_prod(revenue, quantity) %}
     ROUND(SAFE_DIVIDE( {{'revenue'}}, {{'quantity'}} ),2)
 {% endmacro %}


   {% macro key(a, b) %}
     concat( {{a}},"_",{{b}} ) AS key
 {% endmacro %}


    {% macro diff_rev(a, b) %}
     {{a}}-{{b}} AS diff_rev
 {% endmacro %}