# ============================================================
# CIVILIZATION TRADE COMPLIANCE REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical trade compliance review model.

model_type:
- external compliance truth model

primary_key:
- trade_compliance_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- trade_compliance_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- target_scope
- review_result
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- passed
- failed
- escalated
- superseded
- archived

truth_boundary:
Trade-compliance review truth belongs to CivilizationOS external-trade-aid domain.
