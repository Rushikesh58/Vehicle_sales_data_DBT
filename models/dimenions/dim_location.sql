{{ config(materialized='table') }}


SELECT DISTINCT
    state
FROM {{ ref('stg_car_sales') }}
WHERE state IS NOT NULL
