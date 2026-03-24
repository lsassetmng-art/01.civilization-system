# ============================================================
# CIVILIZATION INDUSTRY UNIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical industry unit model.

model_type:
- production truth model

primary_key:
- industry_unit_id

natural_key:
- nation_id
- industry_code

fields:
- industry_unit_id
- nation_id
- industry_code
- industry_status
- industry_class
- output_scope
- territory_code
- created_at
- updated_at

industry_status_enum:
- active
- paused
- impaired
- closed
- archived

truth_boundary:
Industry unit truth belongs to CivilizationOS production domain.
