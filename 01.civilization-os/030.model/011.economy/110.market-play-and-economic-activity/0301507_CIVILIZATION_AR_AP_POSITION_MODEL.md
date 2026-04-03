# ============================================================
# CIVILIZATION AR AP POSITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical accounts receivable/payable position model.

model_type:
- accounting position model

primary_key:
- ar_ap_position_id

natural_key:
- position_scope
- position_code
- position_window

fields:
- ar_ap_position_id
- position_scope
- position_code
- position_window
- position_status
- receivable_value
- payable_value
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

position_status_enum:
- current
- provisional
- stale
- invalid
- archived

truth_boundary:
AR/AP position truth belongs to CivilizationOS organization-economy domain.
