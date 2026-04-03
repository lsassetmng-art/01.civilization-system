# ============================================================
# CIVILIZATION INVENTORY POSITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical inventory position model.

model_type:
- inventory truth model

primary_key:
- inventory_position_id

natural_key:
- inventory_scope
- inventory_code
- position_window

fields:
- inventory_position_id
- inventory_scope
- inventory_code
- position_window
- position_status
- quantity_on_hand
- quantity_reserved
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

position_status_enum:
- current
- constrained
- exhausted
- provisional
- archived

truth_boundary:
Inventory position truth belongs to CivilizationOS supply-production domain.
