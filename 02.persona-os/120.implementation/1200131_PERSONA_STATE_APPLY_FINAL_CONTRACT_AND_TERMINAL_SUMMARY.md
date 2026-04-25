# PERSONA STATE APPLY FINAL CONTRACT AND TERMINAL SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_204614

purpose:
Condenses the final request, response, and terminal interpretation for persona-state-apply.

request_required_fields:
- world
- schema
- event_id
- event_type
- user_id
- payload
- occurred_at
- event_version

request_core_rules:
- event_id is the canonical idempotency key
- event_version must remain traceable
- occurred_at must be normalized to valid ISO
- payload remains contract-governed by event_type

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

terminal_rules:
- duplicate external 409 maps to internal duplicate_noop family
- duplicate path must remain non-mutating
- external response remains intentionally compact
- richer semantics remain in trace and audit-side evidence

