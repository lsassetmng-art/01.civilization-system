# ============================================================
# CIVILIZATION CONTROL ACTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical control action record model.

model_type:
- operational control truth model

primary_key:
- control_action_record_id

natural_key:
- action_scope
- action_ref
- correlation_id

fields:
- control_action_record_id
- action_scope
- action_ref
- correlation_id
- action_status
- action_type
- target_scope
- action_summary
- source_state_version
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- executed
- failed
- reversed
- cancelled
- archived

idempotency_rule:
action_scope + action_ref must suppress duplicate effective control action.

truth_boundary:
Control-action truth belongs to CivilizationOS observability-control domain.
