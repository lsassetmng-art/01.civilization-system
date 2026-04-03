# ============================================================
# CIVILIZATION FACILITY REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical facility registry model.

model_type:
- facility truth model

primary_key:
- facility_registry_id

natural_key:
- facility_domain
- facility_code

fields:
- facility_registry_id
- facility_domain
- facility_code
- facility_name
- facility_status
- territory_code
- owner_nation_id
- facility_class
- created_at
- updated_at

facility_status_enum:
- active
- inactive
- damaged
- closed
- archived

truth_boundary:
Facility registry truth belongs to CivilizationOS public administration domain.
