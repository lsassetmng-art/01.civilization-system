# ============================================================
# CIVILIZATION STOCKPILE LOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical stockpile lot model.

model_type:
- emergency reserve truth model

primary_key:
- stockpile_lot_id

natural_key:
- lot_scope
- lot_code
- lot_window

fields:
- stockpile_lot_id
- lot_scope
- lot_code
- lot_window
- lot_status
- reserve_type
- stored_quantity
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

lot_status_enum:
- current
- constrained
- released
- expired
- archived

truth_boundary:
Stockpile-lot truth belongs to CivilizationOS disaster-relief-stockpile domain.
