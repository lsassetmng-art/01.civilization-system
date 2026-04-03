# ============================================================
# CIVILIZATION APPROVAL EXECUTION BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval-to-execution binding model.

model_type:
- governance binding model

primary_key:
- approval_execution_binding_id

natural_key:
- approval_request_id
- execution_target_type
- execution_target_id

fields:
- approval_execution_binding_id
- approval_request_id
- execution_target_type
- execution_target_id
- binding_status
- correlation_id
- causation_id
- bound_at
- executed_at
- created_at
- updated_at

binding_status_enum:
- pending
- approved
- executed
- rejected
- expired

truth_boundary:
This model binds governance approval to downstream execution path.
