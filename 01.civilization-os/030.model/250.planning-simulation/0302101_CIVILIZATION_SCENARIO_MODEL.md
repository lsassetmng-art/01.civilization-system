# ============================================================
# CIVILIZATION SCENARIO MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical scenario model.

model_type:
- planning scenario truth model

primary_key:
- scenario_id

natural_key:
- scenario_scope
- scenario_code
- scenario_version

fields:
- scenario_id
- scenario_scope
- scenario_code
- scenario_version
- scenario_status
- scenario_class
- assumption_summary
- baseline_ref
- created_at
- updated_at

scenario_status_enum:
- draft
- active
- superseded
- invalidated
- archived

contract_version_rule:
Scenarios must expose explicit version semantics.

truth_boundary:
Scenario truth belongs to CivilizationOS planning-simulation domain.
