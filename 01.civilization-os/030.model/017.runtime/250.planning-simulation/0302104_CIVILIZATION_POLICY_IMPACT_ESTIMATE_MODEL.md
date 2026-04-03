# ============================================================
# CIVILIZATION POLICY IMPACT ESTIMATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical policy impact estimate model.

model_type:
- decision-support truth model

primary_key:
- policy_impact_estimate_id

natural_key:
- estimate_scope
- estimate_ref
- source_policy_code

fields:
- policy_impact_estimate_id
- estimate_scope
- estimate_ref
- source_policy_code
- estimate_status
- impact_summary
- impact_window
- source_lineage
- source_state_version
- estimated_at
- created_at
- updated_at

estimate_status_enum:
- draft
- completed
- superseded
- invalidated
- archived

truth_boundary:
Policy-impact estimate truth belongs to CivilizationOS planning-simulation domain.
