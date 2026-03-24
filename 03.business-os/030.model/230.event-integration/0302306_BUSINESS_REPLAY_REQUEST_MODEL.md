# ============================================================
# BUSINESS REPLAY REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business replay request model.

model_type:
- replay request truth model

primary_key:
- business_replay_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- business_replay_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- source_dispatch_ref
- replay_summary
- source_state_version
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- approved
- replayed
- rejected
- archived

truth_boundary:
Business replay request truth belongs to BusinessOS event-integration domain.
