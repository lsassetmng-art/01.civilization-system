# ============================================================
# LIFE REPLAY REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life replay request model.

model_type:
- replay request truth model

primary_key:
- life_replay_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- life_replay_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- source_record_ref
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
Life replay request truth belongs to LifeOS life-operations domain.
