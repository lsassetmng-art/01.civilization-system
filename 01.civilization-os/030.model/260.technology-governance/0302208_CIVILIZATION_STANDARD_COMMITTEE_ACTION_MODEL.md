# ============================================================
# CIVILIZATION STANDARD COMMITTEE ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical standard committee action model.

model_type:
- standards governance truth model

primary_key:
- standard_committee_action_id

natural_key:
- action_scope
- action_code
- correlation_id

fields:
- standard_committee_action_id
- action_scope
- action_code
- action_status
- action_type
- target_standard_code
- approval_basis
- source_state_version
- correlation_id
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- approved
- executed
- rejected
- superseded
- archived

truth_boundary:
Standard-committee action truth belongs to CivilizationOS technology-governance domain.
