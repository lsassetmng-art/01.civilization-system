# ============================================================
# CIVILIZATION INSPECTION MISSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical inspection mission model.

model_type:
- diplomatic verification truth model

primary_key:
- inspection_mission_id

natural_key:
- mission_scope
- mission_ref
- source_request_ref

fields:
- inspection_mission_id
- mission_scope
- mission_ref
- source_request_ref
- mission_status
- inspector_scope
- host_scope
- verification_summary
- opened_at
- closed_at
- created_at
- updated_at

mission_status_enum:
- planned
- active
- concluded
- interrupted
- cancelled
- archived

truth_boundary:
Inspection-mission truth belongs to CivilizationOS diplomatic-operations domain.
