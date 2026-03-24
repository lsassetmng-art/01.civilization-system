# ============================================================
# CIVILIZATION LEGAL ENFORCEMENT ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical legal enforcement action model.

model_type:
- governance action model

primary_key:
- legal_enforcement_action_id

natural_key:
- enforcement_case_id
- action_code
- correlation_id

fields:
- legal_enforcement_action_id
- enforcement_case_id
- action_code
- action_type
- action_status
- target_scope
- governing_rule_ref
- approval_request_id
- executed_by
- executed_at
- correlation_id
- causation_id
- created_at
- updated_at

action_status_enum:
- pending
- approved
- executed
- rejected
- cancelled
- failed

truth_boundary:
This model stores canonical enforcement action state.
