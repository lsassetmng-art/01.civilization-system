# ============================================================
# CIVILIZATION REPLAY REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical replay request model.

model_type:
- operational replay model

primary_key:
- replay_request_id

natural_key:
- replay_target_type
- replay_target_id
- correlation_id

fields:
- replay_request_id
- replay_target_type
- replay_target_id
- replay_reason
- replay_status
- requested_by
- approved_by
- correlation_id
- causation_id
- requested_at
- approved_at
- executed_at
- created_at
- updated_at

replay_status_enum:
- pending
- approved
- rejected
- executed
- cancelled

truth_boundary:
Replay requests authorize re-execution attempts.
They do not themselves change the target truth state.
