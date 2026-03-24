# ============================================================
# CIVILIZATION INSIDER RISK REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical insider risk review model.

model_type:
- internal risk truth model

primary_key:
- insider_risk_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- insider_risk_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- subject_scope
- risk_summary
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- active
- mitigated
- closed
- superseded
- archived

truth_boundary:
Insider-risk review truth belongs to CivilizationOS cyber-defense domain.
