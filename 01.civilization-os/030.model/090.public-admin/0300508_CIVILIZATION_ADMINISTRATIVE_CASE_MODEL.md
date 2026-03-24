# ============================================================
# CIVILIZATION ADMINISTRATIVE CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical administrative case model.

model_type:
- administrative governance model

primary_key:
- administrative_case_id

natural_key:
- case_scope
- case_code
- correlation_id

fields:
- administrative_case_id
- case_scope
- case_code
- case_status
- case_type
- target_scope
- governing_rule_ref
- source_request_id
- correlation_id
- causation_id
- opened_at
- closed_at
- created_at
- updated_at

case_status_enum:
- pending
- under_review
- actionable
- resolved
- dismissed
- archived

truth_boundary:
Administrative case truth belongs to CivilizationOS administrative governance domain.
