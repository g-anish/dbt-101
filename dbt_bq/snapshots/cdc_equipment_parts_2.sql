{% snapshot cdc_equipment_parts_2 %}
    -- invalidate_hard_deletes=False
    -- True: tracks the changes with 'dbt_valid_to'
    -- False: doesn't track the changes with 'dbt_valid_to' (Its always null)
{{ config (
    target_schema='aganesan_dbt',
    target_table='cdc_equipment_parts_2',
    strategy='check',
    unique_key=['ID', 'BAND_PART_NUMBER', 'NETWORK', 'EQUIPMENT_TYPE'],
    check_cols=['BAND_PART_NUMBER', 'COMMON_PRODUCT_DESCRIPTION', 'BAND_PART_NUMBER_DESCRIPTION', 'DEACTIVATED_TSTAMP', 'NETWORK', 'EQUIPMENT_TYPE', 'ID', 'STATUS', 'NOTES', 'SERIAL_NUMBER_FORMAT', 'SERIAL_NUMBER_FORMAT_DESCRIPTION', 'SERIAL_NUMBER_FORMAT_REGEX'],
    invalidate_hard_deletes=True
) }}

select *,
    from `company-data.aganesan_dbt.equipment_parts`

             hard_deletes='new_record'
) }}

{% endsnapshot %}