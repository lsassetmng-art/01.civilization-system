# ============================================================
# BUSINESS PERSONA REPLAY REQUEST AND EXECUTION EXACT SCHEMA CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact schema contract for replay request and replay execution records.

replay_request_table:
- business_persona_event_replay_request

replay_execution_table:
- business_persona_event_replay_execution

replay_request_required_columns:
- replay_request_id
- requested_by
- request_reason_code
- request_scope_type
- request_scope_id when applicable
- source_deadletter_id when applicable
- source_event_id when applicable
- created_at
- request_status

replay_execution_required_columns:
- replay_execution_id
- replay_request_id
- source_event_id
- source_outbox_id when applicable
- execution_started_at
- execution_finished_at when applicable
- execution_status
- replay_mode
- preserved_event_identity boolean
- generated_delivery_attempt_count
- execution_trace_id

request_status_enum:
- pending_review
- approved
- rejected
- executed

execution_status_enum:
- pending
- running
- succeeded
- failed

schema_rule:
- replay request approval state is distinct from replay execution state
- replay for delivery recovery must preserve original event identity when business meaning is unchanged
- replay execution records must remain auditable

result:
- Replay request and execution exact schema contract fixed as a canonical meta record.
