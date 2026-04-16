# ============================================================
# LIFE SENSOR READING MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines raw or near-raw sensor readings in LifeOS.

entity_name:
life_sensor_reading

meaning:
Represents a sensor-provided measurement fact.

core_fields:
- sensor_reading_id
- user_id
- device_source_id
- measured_at
- measurement_type
- measurement_value_text
- unit_text
- created_at
