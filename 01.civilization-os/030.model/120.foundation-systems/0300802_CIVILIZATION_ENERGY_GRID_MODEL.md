# ============================================================
# CIVILIZATION ENERGY GRID MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical energy grid model.

model_type:
- infrastructure truth model

primary_key:
- energy_grid_id

natural_key:
- grid_scope
- grid_code

fields:
- energy_grid_id
- grid_scope
- grid_code
- grid_status
- grid_class
- territory_scope
- controlling_authority_scope
- created_at
- updated_at

grid_status_enum:
- active
- constrained
- impaired
- offline
- archived

truth_boundary:
Energy grid truth belongs to CivilizationOS infrastructure domain.
