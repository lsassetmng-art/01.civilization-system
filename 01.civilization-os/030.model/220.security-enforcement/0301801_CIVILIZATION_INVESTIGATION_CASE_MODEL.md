# ============================================================
# CIVILIZATION INVESTIGATION CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical investigation case model.

model_type:
- investigative truth model

primary_key:
- investigation_case_id

natural_key:
- case_scope
- case_code
- correlation_id

fields:
- investigation_case_id
- case_scope
- case_code
- case_status
- target_scope
- initiating_basis
- assigned_unit_scope
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

case_status_enum:
- opened
- assigned
- under_review
- actionable
- resolved
- dismissed
- archived

truth_boundary:
Investigation-case truth belongs to CivilizationOS security-enforcement domain.
