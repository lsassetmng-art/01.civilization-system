# ============================================================
# CIVILIZATION CONSTRUCTION PROJECT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical construction project model.

model_type:
- infrastructure project truth model

primary_key:
- construction_project_id

natural_key:
- project_scope
- project_code
- project_version

fields:
- construction_project_id
- project_scope
- project_code
- project_version
- project_status
- target_facility_code
- project_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

project_status_enum:
- planned
- approved
- active
- completed
- failed
- cancelled
- archived

truth_boundary:
Construction project truth belongs to CivilizationOS supply-production domain.
