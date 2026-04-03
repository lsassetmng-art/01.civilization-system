# ============================================================
# CIVILIZATION JUDICIAL CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical judicial case model.

model_type:
- judicial truth model

primary_key:
- judicial_case_id

natural_key:
- case_scope
- case_code
- correlation_id

fields:
- judicial_case_id
- case_scope
- case_code
- case_status
- case_type
- governing_rule_ref
- target_scope
- source_request_id
- correlation_id
- causation_id
- opened_at
- closed_at
- created_at
- updated_at

case_status_enum:
- filed
- under_review
- hearing
- decided
- dismissed
- archived

truth_boundary:
Judicial case truth belongs to CivilizationOS judicial domain.
