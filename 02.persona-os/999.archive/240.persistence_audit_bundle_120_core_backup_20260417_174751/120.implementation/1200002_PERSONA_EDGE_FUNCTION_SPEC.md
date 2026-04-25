# ============================================================
# PERSONA EDGE FUNCTION SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / edge intake / apply entry
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Goal

This file fixes the public apply entry contract for PersonaOS.
The edge function is the only supported write entry for truth/apply execution.

## Canonical endpoints

### POST /persona/v1/events/apply

Auth actor:
- system actor or authenticated builder publish actor with apply permission

Request:
```json
{
  "event_id": "01EVT...",
  "event_type": "persona.release.apply-requested",
  "persona_root_id": "01PERSROOT...",
  "source_object_type": "builder_publish_execution",
  "source_object_id": "01PUBEXEC...",
  "requested_by_actor_id": "01ACTOR...",
  "occurred_at": "2026-04-16T11:00:00Z",
  "payload": {
    "target_release_id": "01REL...",
    "target_package_id": null,
    "apply_mode": "release-truth-reflect"
  },
  "signature": {
    "signature_id": "01SIG...",
    "algorithm": "ed25519",
    "key_id": "persona-edge-key-1",
    "signed_at": "2026-04-16T11:00:00Z",
    "signature_value": "base64..."
  }
}
```

Response `202`:
```json
{
  "ok": true,
  "data": {
    "apply_result_id": "01APR...",
    "event_id": "01EVT...",
    "status": "accepted",
    "next_state": "queued"
  }
}
```

### GET /persona/v1/events/{event_id}

Response `200`:
```json
{
  "ok": true,
  "data": {
    "event_id": "01EVT...",
    "event_type": "persona.release.apply-requested",
    "ingest_state": "validated",
    "apply_state": "applied",
    "last_error_code": null
  }
}
```

### GET /persona/v1/apply-results/{apply_result_id}

Response `200`:
```json
{
  "ok": true,
  "data": {
    "apply_result_id": "01APR...",
    "persona_root_id": "01PERSROOT...",
    "status": "applied",
    "truth_release_id": "01REL...",
    "rejected_reason_code": null,
    "applied_at": "2026-04-16T11:00:08Z"
  }
}
```

## Mandatory validation

- `event_id` must be globally unique
- `persona_root_id` required
- `target_release_id` required
- signature verification required before queueing
- payload hash must match signature payload
- duplicate event id returns current result instead of reapplying

## Edge states

Allowed `ingest_state` values:
- `received`
- `signature-verified`
- `validated`
- `rejected`

Allowed `apply_state` values:
- `queued`
- `applying`
- `applied`
- `failed-retryable`
- `failed-terminal`
- `dead-lettered`

## Error codes

- `persona_edge_invalid_signature`
- `persona_edge_missing_field`
- `persona_edge_invalid_payload`
- `persona_edge_duplicate_event`
- `persona_edge_apply_not_allowed`
- `persona_edge_internal_error`

## Observability

Every request records:
- request id
- event id
- actor id
- persona root id
- release id
- signature key id
- latency ms
- final error code

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: edge_apply

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.

# EXACT PAYLOAD FIXATION

exact_payload_domain: edge_apply
fixed_at: 20260417_164735

request_payload:
  required_fields:
    - event_id
    - correlation_id
    - persona_id
    - event_type
    - schema_version
    - actor_id
    - event_payload
    - dedupe_key
  optional_fields:
    - source_system_id
    - requested_at
    - request_trace_id

success_response:
  required_fields:
    - apply_result_id
    - correlation_id
    - persona_id
    - result_status
    - result_code
    - applied_at

reject_response:
  required_fields:
    - correlation_id
    - persona_id
    - reject_code
    - reject_family
    - rejected_at

fixed_result_status_family:
  - applied
  - rejected
  - duplicate_noop
  - retrying
  - dead_lettered

fixed_error_family:
  - schema_invalid
  - semantic_invalid
  - authority_blocked
  - duplicate_event
  - internal_retryable
  - internal_terminal

idempotency_rule:
- dedupe_key is mandatory
- same effective event must not mutate truth twice

# EXACT CODE FAMILY FIXATION

exact_code_family_domain: edge_apply
fixed_at: 20260417_164945

fixed_status_family:
- applied
- rejected
- duplicate_noop
- retrying
- dead_lettered

fixed_result_code_family:
- APPLY_SUCCESS
- APPLY_REJECTED
- APPLY_DUPLICATE_NOOP
- APPLY_RETRY_SCHEDULED
- APPLY_DEAD_LETTERED

fixed_reject_code_family:
- REJECT_SCHEMA_INVALID
- REJECT_SEMANTIC_INVALID
- REJECT_AUTHORITY_BLOCKED
- REJECT_UNSUPPORTED_EVENT_TYPE

fixed_error_code_family:
- ERR_DUPLICATE_EVENT
- ERR_INTERNAL_RETRYABLE
- ERR_INTERNAL_TERMINAL

rules:
- success path must emit one result_status and one result_code
- reject path must emit one reject_code and one reject family
- duplicate handling must not reuse success result code

# EXACT STATE ENUM AND TRANSITION FIXATION

exact_state_transition_domain: edge_apply
fixed_at: 20260417_165940

state_enum:
- received
- validating
- validation_rejected
- duplicate_noop
- applying
- applied
- retry_wait
- dead_lettered
- terminal_failed

transition_table:
- received -> validating : validate_inbound_request
- validating -> validation_rejected : reject_on_schema_or_semantic_or_authority_failure
- validating -> duplicate_noop : stop_on_duplicate_dedupe_key
- validating -> applying : pass_validation
- applying -> applied : canonical_apply_success
- applying -> retry_wait : internal_retryable_failure
- retry_wait -> applying : retry_dispatch
- retry_wait -> dead_lettered : retry_exhausted
- applying -> terminal_failed : internal_terminal_failure

transition_rules:
- duplicate_noop is terminal and non-mutating
- validation_rejected is terminal and non-mutating
- applied is the only success mutation terminal
- retry_wait may transition only to applying or dead_lettered
- dead_lettered and terminal_failed are terminal

# EXACT REQUEST RESPONSE EXAMPLES

exact_example_domain: edge_apply
fixed_at: 20260417_174222

request_example:
  event_id: evt_001
  correlation_id: corr_001
  persona_id: persona_001
  event_type: builder.publish.requested
  schema_version: v1
  actor_id: actor_001
  dedupe_key: dedupe_evt_001
  event_payload:
    draft_id: draft_001
    requested_publish_at: 2026-01-01T00:00:00Z

success_response_example:
  apply_result_id: ar_001
  correlation_id: corr_001
  persona_id: persona_001
  result_status: applied
  result_code: APPLY_SUCCESS
  applied_at: 2026-01-01T00:00:01Z

reject_response_example:
  correlation_id: corr_001
  persona_id: persona_001
  reject_code: REJECT_SCHEMA_INVALID
  reject_family: schema_invalid
  rejected_at: 2026-01-01T00:00:01Z
