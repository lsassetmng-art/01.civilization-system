# ============================================================
# CIVILIZATION PROCUREMENT PLAN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical procurement plan model.

model_type:
- procurement governance truth model

primary_key:
- procurement_plan_id

natural_key:
- plan_scope
- plan_code
- plan_version

fields:
- procurement_plan_id
- plan_scope
- plan_code
- plan_version
- plan_status
- buying_authority_scope
- procurement_objective
- budget_basis
- effective_from
- effective_until
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
Procurement plans must expose explicit version semantics.

truth_boundary:
Procurement-plan truth belongs to CivilizationOS public-procurement domain.
