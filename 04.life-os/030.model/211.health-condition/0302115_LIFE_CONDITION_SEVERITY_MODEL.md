# ============================================================
# LIFE CONDITION SEVERITY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines severity expression for health-condition records.

entity_name:
life_condition_severity

meaning:
Represents normalized severity meaning for self-observed condition facts.

core_fields:
- severity_id
- source_record_type
- source_record_id
- severity_level
- severity_label
- confidence_type
- recorded_at

rules:
- severity is user-observed or lightly inferred only
- confidence_type must not imply diagnosis
