create table staging.stg_customers as
select
    *
from
    raw.raw_customers;
create table staging.stg_orders as
select
    *
from
    raw.raw_orders;
create table staging.stg_order_items as
select
    *
from
    raw.raw_order_items;
create table staging.stg_reviews as
select
    *
from
    raw.raw_reviews;
create table staging.stg_products as
select
    *
from
    raw.raw_products;
create table staging.stg_session_activities as
select
    *
from
    raw.raw_session_activities;
create table staging.stg_website_sessions as
select
    *
from
    raw.raw_website_sessions;
with cte1 as (
        select
            distinct *,
            row_number() over(
                partition by customer_id,
                first_name,
                last_name,
                gender
                order by
                    customer_id
            ) as duplicate_count
        from
            staging.stg_customers
    )
select
    *
from
    cte1
where
    duplicate_count > 1;
with cte2 as (
        select
            distinct *,
            row_number() over(
                partition by order_id,
                order_date,
                customer_id,
                order_day,
                year_month,
                subtotal_amount
                order by
                    order_id
            ) as duplicate_count
        from
            staging.stg_orders
    )
select
    *
from
    cte2
where
    duplicate_count > 1;
with cte3 as (
        select
            distinct *,
            row_number() over(
                partition by order_item_id,
                order_id,
                product_id,
                quantity,
                unit_price
                order by
                    order_item_id
            ) as duplicate_count
        from
            staging.stg_order_items
    )
select
    *
from
    cte3
where
    duplicate_count > 1;
with cte4 as (
        select
            distinct *,
            row_number() over(
                partition by product_id,
                seller_id,
                category,
                product_name,
                created_at
                order by
                    product_id
            ) as duplicate_count
        from
            staging.stg_products
    )
select
    *
from
    cte4
where
    duplicate_count > 1;
with cte5 as (
        select
            distinct *,
            row_number() over(
                partition by review_id,
                review_date,
                review_text
                order by
                    review_id
            ) as duplicate_count
        from
            staging.stg_reviews
    )
select
    *
from
    cte5
where
    duplicate_count > 1;
with cte6 as (
        select
            distinct *,
            row_number() over(
                partition by ACTIVITY_ID,
                session_id,
                page_url,
                session_start_time,
                session_end_time
                order by
                    activity_id
            ) as duplicate_count
        from
            staging.stg_session_activities
    )
select
    *
from
    cte6
where
    duplicate_count > 1;
with cte7 as (
        select
            distinct *,
            row_number() over(
                partition by session_id,
                user_id,
                session_date,
                session_start_time,
                session_end_time
                order by
                    session_id
            ) as duplicate_count
        from
            staging.stg_website_sessions
    )
select
    *
from
    cte7
where
    duplicate_count > 1;
CREATE TABLE staging.stg_sessions AS
SELECT
    act.activity_id,
    act.session_id,
    act.page_url as event_page,
    act.session_start_time,
    act.session_end_time,
    web.device_type,
    web.utm_source as traffic_source,
    web.user_id,
    web.order_id,
    web.campaign_id
FROM
    staging.stg_session_activities AS act
    Left JOIN staging.stg_website_sessions AS web ON act.session_id = web.session_id;
update
    staging.stg_sessions
set
    event_page = case
        when event_page = '/cart' then 'Add to cart'
        when event_page = '/home' then 'Product view'
        when event_page = '/products' then 'Home page'
        when event_page = '/checkout' then 'Checkout'
        when event_page = '/billing' then 'Payments'
        when event_page = '/thank-you-for-your-order' then 'Thank you page'
        when event_page = '/contact-us' then 'Contact us'
        when event_page = '/about-us' then 'About us'
    end
Delete from
    staging.stg_sessions
WHERE
    event_page = 'Contact us'
    or event_page = 'About us'
    or event_page = 'Thank you page';