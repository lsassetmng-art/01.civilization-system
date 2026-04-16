# ============================================================
# LIFE DEVICE SOURCE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines external device sources in LifeOS.

entity_name:
life_device_source

meaning:
Represents a device or source that provides measurement data.

core_fields:
- device_source_id
- user_id
- source_name
- source_type
- trust_label
- created_at
- updated_at
