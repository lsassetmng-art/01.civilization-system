# ============================================================
# CIVILIZATION PUBLICATION INTEGRITY REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical publication integrity review model.

model_type:
- research publication review truth model

primary_key:
- publication_integrity_review_id

natural_key:
- review_scope
- review_ref
- source_publication_ref

fields:
- publication_integrity_review_id
- review_scope
- review_ref
- source_publication_ref
- review_status
- review_result
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- completed
- corrected
- retracted
- archived

truth_boundary:
Publication-integrity truth belongs to CivilizationOS research-integrity domain.
