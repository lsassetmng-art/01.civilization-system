# ============================================================
# CIVILIZATION HEALTHCARE FACILITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical healthcare facility model.

model_type:
- facility truth model

primary_key:
- healthcare_facility_id

natural_key:
- facility_scope
- facility_code

fields:
- healthcare_facility_id
- facility_scope
- facility_code
- facility_status
- facility_class
- territory_scope
- operating_authority_scope
- created_at
- updated_at

facility_status_enum:
- active
- constrained
- impaired
- closed
- archived

truth_boundary:
Healthcare facility truth belongs to CivilizationOS healthcare-publichealth domain.
