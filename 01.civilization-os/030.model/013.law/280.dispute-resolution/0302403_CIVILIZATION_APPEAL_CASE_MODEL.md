# ============================================================
# CIVILIZATION APPEAL CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical appeal case model.

model_type:
- review process truth model

primary_key:
- appeal_case_id

natural_key:
- appeal_scope
- appeal_ref
- source_decision_ref

fields:
- appeal_case_id
- appeal_scope
- appeal_ref
- source_decision_ref
- appeal_status
- appellant_scope
- appeal_reason
- source_state_version
- created_at
- updated_at

appeal_status_enum:
- filed
- under_review
- decided
- rejected
- withdrawn
- archived

truth_boundary:
Appeal-case truth belongs to CivilizationOS dispute-resolution domain.
