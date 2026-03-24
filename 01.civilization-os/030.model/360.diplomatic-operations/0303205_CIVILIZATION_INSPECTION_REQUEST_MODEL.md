# ============================================================
# CIVILIZATION INSPECTION REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical inspection request model.

model_type:
- diplomatic compliance request truth model

primary_key:
- inspection_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- inspection_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- requester_scope
- target_scope
- request_summary
- requested_at
- created_at
- updated_at

request_status_enum:
- submitted
- under_review
- approved
- rejected
- fulfilled
- archived

truth_boundary:
Inspection-request truth belongs to CivilizationOS diplomatic-operations domain.
