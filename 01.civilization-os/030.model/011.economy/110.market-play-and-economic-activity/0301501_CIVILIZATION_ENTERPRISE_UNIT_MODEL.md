# ============================================================
# CIVILIZATION ENTERPRISE UNIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical enterprise unit model.

model_type:
- enterprise truth model

primary_key:
- enterprise_unit_id

natural_key:
- organization_code
- enterprise_code

fields:
- enterprise_unit_id
- organization_code
- enterprise_code
- enterprise_status
- enterprise_class
- operating_scope
- created_at
- updated_at

enterprise_status_enum:
- active
- paused
- impaired
- dissolved
- archived

truth_boundary:
Enterprise unit truth belongs to CivilizationOS organization-economy domain.
