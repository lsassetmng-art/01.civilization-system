# ============================================================
# CIVILIZATION INTERFACE SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical interface session model.

model_type:
- boundary execution model

primary_key:
- interface_session_id

natural_key:
- session_scope
- session_ref

fields:
- interface_session_id
- session_scope
- session_ref
- session_status
- requester_scope
- target_interface_code
- approved_permission_ref
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

session_status_enum:
- opened
- active
- suspended
- revoked
- closed
- expired
- archived

truth_boundary:
Interface-session truth belongs to CivilizationOS interface-governance domain.
