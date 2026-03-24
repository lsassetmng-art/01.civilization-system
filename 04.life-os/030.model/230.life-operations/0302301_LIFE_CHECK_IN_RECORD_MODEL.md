# ============================================================
# LIFE CHECK IN RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life check-in record model.

model_type:
- check-in truth model

primary_key:
- life_check_in_record_id

natural_key:
- check_in_scope
- check_in_ref
- correlation_id

fields:
- life_check_in_record_id
- check_in_scope
- check_in_ref
- correlation_id
- check_in_status
- owner_scope
- check_in_summary
- source_state_version
- checked_in_at
- created_at
- updated_at

check_in_status_enum:
- planned
- submitted
- accepted
- missed
- archived

truth_boundary:
Life check-in truth belongs to LifeOS life-operations domain.
