# ============================================================
# CIVILIZATION LAND RESTORATION PROJECT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical land restoration project model.

model_type:
- environmental project truth model

primary_key:
- land_restoration_project_id

natural_key:
- project_scope
- project_code
- project_version

fields:
- land_restoration_project_id
- project_scope
- project_code
- project_version
- project_status
- target_territory_code
- restoration_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

project_status_enum:
- draft
- approved
- active
- completed
- failed
- cancelled
- archived

contract_version_rule:
Land-restoration projects must expose explicit version semantics.

truth_boundary:
Land-restoration truth belongs to CivilizationOS environment-circularity domain.
