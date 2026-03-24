# ============================================================
# CIVILIZATION AGRICULTURE UNIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical agriculture unit model.

model_type:
- production truth model

primary_key:
- agriculture_unit_id

natural_key:
- nation_id
- agriculture_code

fields:
- agriculture_unit_id
- nation_id
- agriculture_code
- agriculture_status
- territory_code
- crop_scope
- created_at
- updated_at

agriculture_status_enum:
- active
- paused
- impaired
- seasonal_stop
- archived

truth_boundary:
Agriculture unit truth belongs to CivilizationOS supply-production domain.
