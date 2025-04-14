{{ config(materialized='table') }}

SELECT DISTINCT
    make,
    model,
    trim,
    body,
    transmission,
    color,
    interior,
    year AS vehicle_year
FROM {{ ref('stg_car_sales') }}
