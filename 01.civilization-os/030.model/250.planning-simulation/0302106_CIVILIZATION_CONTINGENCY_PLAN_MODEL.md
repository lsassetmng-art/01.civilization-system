# ============================================================
# CIVILIZATION CONTINGENCY PLAN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical contingency plan model.

model_type:
- fallback governance truth model

primary_key:
- contingency_plan_id

natural_key:
- plan_scope
- plan_code
- plan_version

fields:
- contingency_plan_id
- plan_scope
- plan_code
- plan_version
- plan_status
- trigger_summary
- fallback_summary
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
Contingency plans must expose explicit version semantics.

truth_boundary:
Contingency-plan truth belongs to CivilizationOS planning-simulation domain.
