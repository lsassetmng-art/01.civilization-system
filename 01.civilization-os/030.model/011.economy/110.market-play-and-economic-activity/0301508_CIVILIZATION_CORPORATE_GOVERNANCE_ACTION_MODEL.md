# ============================================================
# CIVILIZATION CORPORATE GOVERNANCE ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical corporate governance action model.

model_type:
- governance action truth model

primary_key:
- corporate_governance_action_id

natural_key:
- action_scope
- action_code
- correlation_id

fields:
- corporate_governance_action_id
- action_scope
- action_code
- action_status
- action_type
- target_scope
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
- revoked
- archived

truth_boundary:
Corporate governance action truth belongs to CivilizationOS organization-economy governance domain.
