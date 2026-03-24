# ============================================================
# CIVILIZATION HOST PROTOCOL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical host protocol record model.

model_type:
- diplomatic protocol truth model

primary_key:
- host_protocol_record_id

natural_key:
- protocol_scope
- protocol_ref
- correlation_id

fields:
- host_protocol_record_id
- protocol_scope
- protocol_ref
- correlation_id
- protocol_status
- host_scope
- guest_scope
- protocol_summary
- recorded_at
- created_at
- updated_at

protocol_status_enum:
- recorded
- revised
- superseded
- invalidated
- archived

truth_boundary:
Host-protocol truth belongs to CivilizationOS diplomatic-operations domain.
