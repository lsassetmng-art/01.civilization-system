# ============================================================
# CIVILIZATION WELFARE SUPPORT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical welfare support record model.

model_type:
- public support truth model

primary_key:
- welfare_support_record_id

natural_key:
- support_scope
- support_ref

fields:
- welfare_support_record_id
- support_scope
- support_ref
- support_status
- support_type
- target_population_scope
- support_value
- source_state_version
- correlation_id
- provided_at
- created_at
- updated_at

support_status_enum:
- pending
- active
- completed
- failed
- cancelled
- archived

truth_boundary:
Welfare support truth belongs to CivilizationOS civic-life domain.
