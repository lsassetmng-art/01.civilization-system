# ============================================================
# CIVILIZATION DECISION OPTION SET MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical decision option set model.

model_type:
- decision-support truth model

primary_key:
- decision_option_set_id

natural_key:
- option_scope
- option_ref
- correlation_id

fields:
- decision_option_set_id
- option_scope
- option_ref
- option_status
- source_decision_code
- option_summary
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

option_status_enum:
- draft
- completed
- superseded
- invalidated
- archived

truth_boundary:
Decision-option-set truth belongs to CivilizationOS planning-simulation domain.
