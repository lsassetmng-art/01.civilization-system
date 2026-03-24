# ============================================================
# CIVILIZATION MANUFACTURING LINE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical manufacturing line model.

model_type:
- production truth model

primary_key:
- manufacturing_line_id

natural_key:
- nation_id
- manufacturing_code

fields:
- manufacturing_line_id
- nation_id
- manufacturing_code
- manufacturing_status
- facility_code
- output_scope
- created_at
- updated_at

manufacturing_status_enum:
- active
- paused
- impaired
- maintenance_hold
- archived

truth_boundary:
Manufacturing line truth belongs to CivilizationOS supply-production domain.
