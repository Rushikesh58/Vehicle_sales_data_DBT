{{ config(materialized='table') }}


SELECT DISTINCT
    seller
FROM {{ ref('stg_car_sales') }}
WHERE seller IS NOT NULL
