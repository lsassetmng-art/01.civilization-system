# ============================================================
# LIFE CONDITION TRIGGER MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines possible trigger observations linked to condition changes.

entity_name:
life_condition_trigger

meaning:
Represents a user-noted possible trigger related to a symptom or condition.

core_fields:
- condition_trigger_id
- user_id
- source_record_id
- trigger_type
- trigger_note
- observed_at
- confidence_type
- created_at

rules:
- triggers remain possible associations unless strongly grounded
