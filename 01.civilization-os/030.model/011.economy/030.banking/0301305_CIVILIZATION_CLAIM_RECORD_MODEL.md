# ============================================================
# CIVILIZATION CLAIM RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical claim record model.

model_type:
- finance claim truth model

primary_key:
- claim_record_id

natural_key:
- claim_scope
- claim_ref
- correlation_id

fields:
- claim_record_id
- claim_scope
- claim_ref
- claim_status
- policy_code
- claimant_scope
- claim_value
- source_state_version
- correlation_id
- filed_at
- resolved_at
- created_at
- updated_at

claim_status_enum:
- filed
- under_review
- approved
- rejected
- paid
- cancelled
- archived

truth_boundary:
Claim truth belongs to CivilizationOS finance-credit domain.
