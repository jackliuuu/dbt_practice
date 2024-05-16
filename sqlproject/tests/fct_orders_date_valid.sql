select
    *
from
    {{ ref('fct_orders')}}
where
    date(order_date) > CURRENT_DATE()
    of date(order_date) < date('1990-01-01')