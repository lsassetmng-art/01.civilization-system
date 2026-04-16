# ============================================================
# LIFE MEASUREMENT IMPORT MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines import events for measurements in LifeOS.

entity_name:
life_measurement_import

meaning:
Represents an import event that ingested measurement data.

core_fields:
- measurement_import_id
- user_id
- source_name
- imported_at
- import_count
- result_label
- created_at
