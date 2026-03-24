# ============================================================
# CIVILIZATION OWNERSHIP POSITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ownership position model.

model_type:
- ownership truth model

primary_key:
- ownership_position_id

natural_key:
- position_scope
- holder_scope
- instrument_code
- position_window

fields:
- ownership_position_id
- position_scope
- holder_scope
- instrument_code
- position_window
- position_status
- held_units
- ownership_ratio
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

position_status_enum:
- current
- provisional
- diluted
- extinguished
- archived

truth_boundary:
Ownership-position truth belongs to CivilizationOS capital-markets domain.
