# ============================================================
# CIVILIZATION DISCLOSURE REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical disclosure request model.

model_type:
- disclosure governance truth model

primary_key:
- disclosure_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- disclosure_request_id
- request_scope
- request_ref
- request_status
- requester_scope
- target_record_scope
- disclosure_basis
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
- fulfilled
- cancelled
- archived

truth_boundary:
Disclosure-request truth belongs to CivilizationOS records-governance domain.
