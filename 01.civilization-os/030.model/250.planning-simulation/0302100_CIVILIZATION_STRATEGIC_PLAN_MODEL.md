# ============================================================
# CIVILIZATION STRATEGIC PLAN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical strategic plan model.

model_type:
- planning governance truth model

primary_key:
- strategic_plan_id

natural_key:
- plan_scope
- plan_code
- plan_version

fields:
- strategic_plan_id
- plan_scope
- plan_code
- plan_version
- plan_status
- objective_summary
- planning_window
- approval_basis
- created_at
- updated_at

plan_status_enum:
- draft
- approved
- active
- superseded
- cancelled
- archived

contract_version_rule:
Strategic plans must expose explicit version semantics.

truth_boundary:
Strategic-plan truth belongs to CivilizationOS planning-simulation domain.
