# ============================================================
# CIVILIZATION EMERGENCY_STOCKPILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical emergency stockpile model.

model_type:
- resilience truth model

primary_key:
- emergency_stockpile_id

natural_key:
- stockpile_scope
- stockpile_code

fields:
- emergency_stockpile_id
- stockpile_scope
- stockpile_code
- stockpile_status
- stockpile_class
- stored_quantity
- territory_scope
- source_state_version
- created_at
- updated_at

stockpile_status_enum:
- active
- constrained
- depleted
- replenishing
- archived

truth_boundary:
Emergency stockpile truth belongs to CivilizationOS resilience domain.
