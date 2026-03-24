# ============================================================
# CIVILIZATION PAROLE REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical parole review model.

model_type:
- release review truth model

primary_key:
- parole_review_id

natural_key:
- review_scope
- review_ref
- source_sentence_ref

fields:
- parole_review_id
- review_scope
- review_ref
- source_sentence_ref
- review_status
- subject_scope
- review_result
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- approved
- rejected
- revoked
- archived

truth_boundary:
Parole-review truth belongs to CivilizationOS criminal-procedure domain.
