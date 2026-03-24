# ============================================================
# CIVILIZATION HOUSING RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical housing record model.

model_type:
- civic truth model

primary_key:
- housing_record_id

natural_key:
- territory_code
- housing_code

fields:
- housing_record_id
- territory_code
- housing_code
- housing_status
- housing_class
- occupancy_capacity
- owner_scope
- source_state_version
- created_at
- updated_at

housing_status_enum:
- active
- full
- restricted
- damaged
- closed
- archived

truth_boundary:
Housing record truth belongs to CivilizationOS civic-life domain.
