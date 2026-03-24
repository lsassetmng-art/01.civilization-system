# ============================================================
# CIVILIZATION RESEARCH MISCONDUCT CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical research misconduct case model.

model_type:
- research enforcement truth model

primary_key:
- research_misconduct_case_id

natural_key:
- case_scope
- case_ref
- correlation_id

fields:
- research_misconduct_case_id
- case_scope
- case_ref
- correlation_id
- case_status
- subject_scope
- misconduct_summary
- source_state_version
- opened_at
- closed_at
- created_at
- updated_at

case_status_enum:
- opened
- under_review
- actionable
- resolved
- dismissed
- archived

truth_boundary:
Research-misconduct truth belongs to CivilizationOS research-integrity domain.
