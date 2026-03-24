# ============================================================
# CIVILIZATION MINING UNIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical mining unit model.

model_type:
- production truth model

primary_key:
- mining_unit_id

natural_key:
- nation_id
- mining_code

fields:
- mining_unit_id
- nation_id
- mining_code
- mining_status
- territory_code
- extraction_scope
- created_at
- updated_at

mining_status_enum:
- active
- paused
- impaired
- exhausted
- archived

truth_boundary:
Mining unit truth belongs to CivilizationOS supply-production domain.
