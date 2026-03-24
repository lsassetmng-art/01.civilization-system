# ============================================================
# CIVILIZATION INHERITANCE CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical inheritance case model.

model_type:
- civil transfer truth model

primary_key:
- inheritance_case_id

natural_key:
- inheritance_scope
- inheritance_ref
- correlation_id

fields:
- inheritance_case_id
- inheritance_scope
- inheritance_ref
- inheritance_status
- deceased_scope
- estate_scope
- governing_basis
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

inheritance_status_enum:
- opened
- under_review
- actionable
- resolved
- disputed
- archived

truth_boundary:
Inheritance truth belongs to CivilizationOS civil-status domain.
