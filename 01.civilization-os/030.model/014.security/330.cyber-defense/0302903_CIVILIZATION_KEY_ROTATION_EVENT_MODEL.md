# ============================================================
# CIVILIZATION KEY ROTATION EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical key rotation event model.

model_type:
- key lifecycle truth model

primary_key:
- key_rotation_event_id

natural_key:
- rotation_scope
- rotation_ref
- source_secret_code

fields:
- key_rotation_event_id
- rotation_scope
- rotation_ref
- source_secret_code
- rotation_status
- rotation_reason
- source_state_version
- correlation_id
- rotated_at
- created_at
- updated_at

rotation_status_enum:
- scheduled
- active
- completed
- failed
- cancelled
- archived

truth_boundary:
Key-rotation truth belongs to CivilizationOS cyber-defense domain.
