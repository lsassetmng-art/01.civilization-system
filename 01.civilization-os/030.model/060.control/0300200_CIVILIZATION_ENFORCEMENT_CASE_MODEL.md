# ============================================================
# CIVILIZATION ENFORCEMENT CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical enforcement case model.

model_type:
- governance control model

primary_key:
- enforcement_case_id

natural_key:
- enforcement_domain
- enforcement_code
- correlation_id

fields:
- enforcement_case_id
- enforcement_domain
- enforcement_code
- case_type
- case_status
- target_scope
- governing_rule_ref
- source_event_id
- source_state_version
- severity
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

state_transition:
- pending -> under_review
- under_review -> actionable
- under_review -> dismissed
- actionable -> resolved
- resolved -> archived

truth_boundary:
Enforcement case truth belongs to CivilizationOS governance domain.
