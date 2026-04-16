# ============================================================
# LIFE DEVICE SYNC STATE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines sync state for device integrations in LifeOS.

entity_name:
life_device_sync_state

meaning:
Represents the current sync state of an external data source.

core_fields:
- device_sync_state_id
- user_id
- device_source_id
- last_synced_at
- sync_result_label
- retry_state
- created_at
- updated_at
