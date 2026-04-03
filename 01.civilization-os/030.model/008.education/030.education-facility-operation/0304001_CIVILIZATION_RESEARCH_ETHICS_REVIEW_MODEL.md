# ============================================================
# CIVILIZATION RESEARCH ETHICS REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical research ethics review model.

model_type:
- ethics governance truth model

primary_key:
- research_ethics_review_id

natural_key:
- review_scope
- review_ref
- source_project_ref

fields:
- research_ethics_review_id
- review_scope
- review_ref
- source_project_ref
- review_status
- reviewer_scope
- review_result
- source_state_version
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- approved
- rejected
- conditional
- archived

truth_boundary:
Research-ethics truth belongs to CivilizationOS research-integrity domain.
