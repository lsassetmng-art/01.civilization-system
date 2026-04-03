# ============================================================
# CIVILIZATION KPI DEFINITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical KPI definition model.

model_type:
- observability governance truth model

primary_key:
- kpi_definition_id

natural_key:
- kpi_scope
- kpi_code
- kpi_version

fields:
- kpi_definition_id
- kpi_scope
- kpi_code
- kpi_version
- kpi_status
- measurement_formula
- source_lineage_rule
- threshold_rule
- effective_from
- effective_until
- created_at
- updated_at

kpi_status_enum:
- draft
- approved
- active
- superseded
- revoked
- expired
- archived

contract_version_rule:
KPI definitions must expose explicit version semantics.

truth_boundary:
KPI-definition truth belongs to CivilizationOS observability-control domain.
