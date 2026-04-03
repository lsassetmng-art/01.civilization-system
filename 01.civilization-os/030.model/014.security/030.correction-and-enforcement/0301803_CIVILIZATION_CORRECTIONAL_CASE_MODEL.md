# ============================================================
# CIVILIZATION CORRECTIONAL CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical correctional case model.

model_type:
- correctional truth model

primary_key:
- correctional_case_id

natural_key:
- case_scope
- case_ref
- correlation_id

fields:
- correctional_case_id
- case_scope
- case_ref
- case_status
- subject_scope
- correctional_program_scope
- governing_basis
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

case_status_enum:
- opened
- active
- suspended
- completed
- revoked
- archived

truth_boundary:
Correctional-case truth belongs to CivilizationOS security-enforcement domain.
