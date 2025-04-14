{{ config(materialized='table') }}

SELECT
    vin,
    sellingprice,
    mmr,
    odometer,
    condition,
    saledate
FROM {{ ref('stg_car_sales') }}
