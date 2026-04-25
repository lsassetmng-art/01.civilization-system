# PERSONA STATE APPLY EXACT REQUEST RESPONSE CONTRACT

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_173018

purpose:
Fixes the exact request and terminal response contract for the existing persona-state-apply function.

canonical_role_name:
- persona-state-apply

design_reading:
persona-state-apply is the concrete runtime-engine edge name currently in use.
Inside PersonaOS boundary reasoning, it is treated as a runtime-engine orchestrator
that hands off canonical truth mutation to state_apply or apply_event_engine boundary.

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
- context extensions

request_contract_rules:
- event_id is the canonical idempotency key
- event_version must remain traceable through runtime processing
- payload stays contract-governed and event_type-specific
- user_id is the primary subject lookup key for persona resolution in current design
- occurred_at must be normalized to valid ISO before downstream use

terminal_response_contract:
- success
  - http_status: 200
  - body:
    - ok
- invalid_json
  - http_status: 400
  - body:
    - ok
    - reason
- missing_required
  - http_status: 400
  - body:
    - ok
    - reason
- event_not_enabled
  - http_status: 400
  - body:
    - ok
    - reason
- forbidden
  - http_status: 403
  - body:
    - forbidden_or_equivalent
- persona_not_found
  - http_status: 404
  - body:
    - ok
    - reason
- duplicate
  - http_status: 409
  - body:
    - duplicate_or_equivalent
- apply_halted
  - http_status: 503
  - body:
    - halted_or_equivalent
- engine_error
  - http_status: 500
  - body:
    - ok
    - reason
- mark_processed_failed
  - http_status: 500
  - body:
    - ok
    - reason
- internal_error
  - http_status: 500
  - body:
    - ok
    - reason

internal_terminal_family:
- applied
- rejected
- duplicate_noop
- retrying
- dead_lettered
- terminal_failed

contract_rule:
External response remains intentionally compact.
Internal terminal family, trace, and audit evidence carry richer semantics.

