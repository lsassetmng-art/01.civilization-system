# ============================================================
# CIVILIZATION RESTORE REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical restore request model.

model_type:
- restoration governance truth model

primary_key:
- restore_request_id

natural_key:
- restore_scope
- restore_ref
- correlation_id

fields:
- restore_request_id
- restore_scope
- restore_ref
- request_status
- target_archive_ref
- restore_basis
- source_state_version
- correlation_id
- requested_at
- decided_at
- created_at
- updated_at

request_status_enum:
- submitted
- under_review
- approved
- rejected
- executed
- cancelled
- archived

truth_boundary:
Restore-request truth belongs to CivilizationOS records-governance domain.
