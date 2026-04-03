# ============================================================
# CIVILIZATION READINESS STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical readiness state model.

model_type:
- military posture truth model

primary_key:
- readiness_state_id

natural_key:
- state_scope
- unit_scope
- readiness_window

fields:
- readiness_state_id
- state_scope
- unit_scope
- readiness_window
- readiness_status
- readiness_level
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

readiness_status_enum:
- current
- elevated
- degraded
- restored
- archived

truth_boundary:
Readiness-state truth belongs to CivilizationOS military-operations domain.
