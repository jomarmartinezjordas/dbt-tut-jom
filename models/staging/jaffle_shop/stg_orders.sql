--------VERSION 2----------

with

source as (

    select *
    from {{ source('jaffle_shop', 'orders') }}

),

staged as (

    select
         id as order_id
        ,user_id as customer_id
        ,order_date
        ,status
    from source

)

select * from staged

--------VERSION 1----------

-- with orders as (

--     select
--         id as order_id,
--         user_id as customer_id,
--         order_date,
--         status

--     from raw.jaffle_shop.orders

-- )

-- select * 
-- from orders
