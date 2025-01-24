
{{ config(
    materialized="view"
) }}


SELECT KA_TERMINAL_SW_VERSION,
       END_USER_ACCOUNT_ID,
       AIRCRAFT_ID
FROM `company-data.aganesan_dbt.flights_runner`