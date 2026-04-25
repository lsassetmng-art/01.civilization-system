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
