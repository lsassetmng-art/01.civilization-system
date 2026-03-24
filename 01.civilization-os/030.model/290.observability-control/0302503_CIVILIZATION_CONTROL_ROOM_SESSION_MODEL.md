# ============================================================
# CIVILIZATION CONTROL ROOM SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical control room session model.

model_type:
- operations coordination truth model

primary_key:
- control_room_session_id

natural_key:
- session_scope
- session_ref

fields:
- control_room_session_id
- session_scope
- session_ref
- session_status
- session_class
- duty_team_scope
- opened_at
- closed_at
- created_at
- updated_at

session_status_enum:
- opened
- active
- escalated
- closed
- archived

truth_boundary:
Control-room session truth belongs to CivilizationOS observability-control domain.
