# PERSONA EDGE APPLY ORCHESTRATOR REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113916

purpose:
Fixes the request and terminal response contract of edge_apply_orchestrator.

inbound_request_required_fields:
- world
- schema
- event_id
- event_type
- user_id
- payload
- occurred_at
- event_version

inbound_request_optional_fields:
- trace metadata
- mode-specific payload extension fields

request_contract_notes:
- event_id is the idempotency key
- event_version must be preserved in trace and context
- payload remains opaque to the orchestrator except for contract validation needs

terminal_response_matrix:
- success
  - http_status: 200
  - body_shape:
    - ok
- invalid_json
  - http_status: 400
  - body_shape:
    - ok
    - reason
- missing_required
  - http_status: 400
  - body_shape:
    - ok
    - reason
- event_not_enabled
  - http_status: 400
  - body_shape:
    - ok
    - reason
- forbidden
  - http_status: 403
  - body_shape:
    - plain forbidden response or equivalent
- persona_not_found
  - http_status: 404
  - body_shape:
    - ok
    - reason
- duplicate
  - http_status: 409
  - body_shape:
    - plain duplicate response or equivalent
- apply_halted
  - http_status: 503
  - body_shape:
    - plain halted response or equivalent
- engine_error
  - http_status: 500
  - body_shape:
    - ok
    - reason
- mark_processed_failed
  - http_status: 500
  - body_shape:
    - ok
    - reason
- internal_error
  - http_status: 500
  - body_shape:
    - ok
    - reason

design_rule:
External response stays minimal.
Internal terminal family, trace, and audit evidence carry the richer semantics.

