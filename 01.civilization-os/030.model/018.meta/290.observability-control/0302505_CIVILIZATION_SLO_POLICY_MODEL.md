# ============================================================
# CIVILIZATION SLO POLICY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical SLO policy model.

model_type:
- reliability governance truth model

primary_key:
- slo_policy_id

natural_key:
- slo_scope
- slo_code
- slo_version

fields:
- slo_policy_id
- slo_scope
- slo_code
- slo_version
- slo_status
- service_scope
- objective_summary
- error_budget_rule
- effective_from
- effective_until
- created_at
- updated_at

slo_status_enum:
- draft
- approved
- active
- superseded
- revoked
- expired
- archived

contract_version_rule:
SLO policies must expose explicit version semantics.

truth_boundary:
SLO-policy truth belongs to CivilizationOS observability-control domain.
