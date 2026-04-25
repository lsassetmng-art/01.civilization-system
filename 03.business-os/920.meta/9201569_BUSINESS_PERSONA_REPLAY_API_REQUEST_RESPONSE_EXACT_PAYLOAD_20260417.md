# ============================================================
# BUSINESS PERSONA REPLAY API REQUEST RESPONSE EXACT PAYLOAD
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact request and response payloads for replay operations.

replay_request_required_fields:
- replay_request_id when preallocated or request-generated id
- requested_by
- request_reason_code
- request_scope_type
- request_scope_id when applicable
- source_deadletter_id when applicable
- source_event_id when applicable
- replay_mode
- preserve_event_identity boolean

replay_response_required_fields:
- replay_request_id
- request_status
- accepted_at when accepted
- rejection_reason_code when rejected
- execution_reference_id when execution record is created

replay_mode_enum:
- delivery_retry
- projection_rebuild
- deadletter_replay

contract_rule:
- replay request payload must make operator intent explicit
- replay response payload must preserve traceability between request and execution
- replay must not silently create new commercial truth identity where semantics are unchanged

result:
- Replay API request and response exact payload fixed as a canonical meta record.
