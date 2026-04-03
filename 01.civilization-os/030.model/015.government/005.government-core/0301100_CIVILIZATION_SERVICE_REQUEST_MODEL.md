# ============================================================
# CIVILIZATION SERVICE REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical service request model.

model_type:
- civic service intake model

primary_key:
- service_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- service_request_id
- request_scope
- request_ref
- request_status
- request_type
- requester_scope
- target_scope
- payload_summary
- payload_hash
- source_state_version
- correlation_id
- causation_id
- submitted_at
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
Service request truth belongs to CivilizationOS service-delivery domain.
