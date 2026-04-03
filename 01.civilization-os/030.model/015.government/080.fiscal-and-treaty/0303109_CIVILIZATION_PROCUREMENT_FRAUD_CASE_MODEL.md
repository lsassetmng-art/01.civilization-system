# ============================================================
# CIVILIZATION PROCUREMENT FRAUD CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical procurement fraud case model.

model_type:
- procurement enforcement truth model

primary_key:
- procurement_fraud_case_id

natural_key:
- case_scope
- case_ref
- correlation_id

fields:
- procurement_fraud_case_id
- case_scope
- case_ref
- correlation_id
- case_status
- target_scope
- fraud_summary
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
Procurement-fraud truth belongs to CivilizationOS public-procurement domain.
