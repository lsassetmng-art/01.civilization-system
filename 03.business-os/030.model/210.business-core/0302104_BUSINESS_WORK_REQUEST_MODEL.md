# ============================================================
# BUSINESS WORK REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business work request model.

model_type:
- workflow request truth model

primary_key:
- business_work_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- business_work_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- requester_scope
- request_summary
- source_state_version
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- approved
- active
- completed
- rejected
- archived

truth_boundary:
Business work request truth belongs to BusinessOS business-core domain.
