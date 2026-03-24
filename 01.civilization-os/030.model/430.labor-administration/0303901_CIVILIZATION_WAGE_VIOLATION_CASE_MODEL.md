# ============================================================
# CIVILIZATION WAGE VIOLATION CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical wage violation case model.

model_type:
- labor enforcement truth model

primary_key:
- wage_violation_case_id

natural_key:
- case_scope
- case_ref
- correlation_id

fields:
- wage_violation_case_id
- case_scope
- case_ref
- correlation_id
- case_status
- employer_scope
- violation_summary
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
Wage-violation truth belongs to CivilizationOS labor-administration domain.
