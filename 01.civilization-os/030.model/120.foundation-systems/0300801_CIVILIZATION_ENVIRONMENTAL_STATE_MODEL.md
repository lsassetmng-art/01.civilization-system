# ============================================================
# CIVILIZATION ENVIRONMENTAL STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical environmental state model.

model_type:
- domain truth model

primary_key:
- environmental_state_id

natural_key:
- environment_scope
- environment_code
- state_window

fields:
- environmental_state_id
- environment_scope
- environment_code
- state_window
- state_value
- state_status
- source_lineage
- source_state_version
- measured_at
- created_at
- updated_at

state_status_enum:
- current
- provisional
- revised
- archived

truth_boundary:
Environmental state truth belongs to CivilizationOS environmental domain.
