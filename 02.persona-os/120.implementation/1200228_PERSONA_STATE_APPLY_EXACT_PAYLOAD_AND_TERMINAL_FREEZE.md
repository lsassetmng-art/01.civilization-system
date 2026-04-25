# PERSONA STATE APPLY EXACT PAYLOAD AND TERMINAL FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_105016

purpose:
Freezes the exact request and terminal interpretation for persona-state-apply at discussion level.

request_required_fields:
- world
- schema
- event_id
- event_type
- user_id
- payload
- occurred_at
- event_version

request_optional_fields:
- correlation_id
- mode
- request_trace_id
- context_extensions

freeze_rules:
- event_id remains the single canonical idempotency key
- event_version remains traceable through the full runtime path
- occurred_at must be normalized before downstream use
- payload remains event_type-governed
- user_id remains the primary subject lookup key in the current design

external_terminal_contract:
- 200 success
- 400 invalid_json
- 400 missing_required
- 400 event_not_enabled
- 403 forbidden
- 404 persona_not_found
- 409 duplicate
- 500 engine_error
- 500 mark_processed_failed
- 500 internal_error
- 503 apply_halted

internal_terminal_family:
- applied
- rejected
- duplicate_noop
- retrying
- dead_lettered
- terminal_failed

terminal_freeze_rules:
- duplicate external 409 remains mapped to duplicate_noop internally
- duplicate path remains non-mutating
- mark_processed_failed remains separate from engine_error
- compact external response remains intentional
- rich trace and audit meaning remains internal
