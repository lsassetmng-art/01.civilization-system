# ============================================================
# CIVILIZATION URBAN PLAN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical urban plan model.

model_type:
- urban governance truth model

primary_key:
- urban_plan_id

natural_key:
- plan_scope
- plan_code
- plan_version

fields:
- urban_plan_id
- plan_scope
- plan_code
- plan_version
- plan_status
- territory_scope
- planning_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

plan_status_enum:
- draft
- approved
- active
- superseded
- revoked
- expired
- archived

contract_version_rule:
Urban plans must expose explicit version semantics.

truth_boundary:
Urban-plan truth belongs to CivilizationOS urban-governance domain.
