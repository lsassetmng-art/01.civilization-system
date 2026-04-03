# ============================================================
# CIVILIZATION PLANNING BASELINE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical planning baseline model.

model_type:
- planning baseline truth model

primary_key:
- planning_baseline_id

natural_key:
- baseline_scope
- baseline_code
- baseline_version

fields:
- planning_baseline_id
- baseline_scope
- baseline_code
- baseline_version
- baseline_status
- baseline_summary
- source_lineage
- source_state_version
- captured_at
- created_at
- updated_at

baseline_status_enum:
- active
- superseded
- invalidated
- archived

contract_version_rule:
Planning baselines must expose explicit version semantics.

truth_boundary:
Planning-baseline truth belongs to CivilizationOS planning-simulation domain.
