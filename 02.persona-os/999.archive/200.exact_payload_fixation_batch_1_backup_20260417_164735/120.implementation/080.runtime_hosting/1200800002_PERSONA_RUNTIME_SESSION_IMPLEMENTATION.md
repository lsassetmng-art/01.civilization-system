# ============================================================
# PERSONA RUNTIME SESSION IMPLEMENTATION
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / runtime session
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Session states

Allowed states:
- `created`
- `starting`
- `active`
- `paused`
- `snapshotting`
- `restoring`
- `ended`
- `failed`

## Session create endpoint

### POST /persona/v1/runtime-sessions

Request:
```json
{
  "persona_root_id": "01PERSROOT...",
  "release_id": "01REL...",
  "variant_key": "default",
  "started_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "runtime_session_id": "01RTS...",
    "state": "created"
  }
}
```

## Transition rules

- `created -> starting -> active`
- `active -> paused -> active`
- `active -> snapshotting -> active`
- `active -> restoring -> active`
- `active -> ended`
- any active state may go to `failed`

## Persistence

Required tables:
- `runtime_session`
- `runtime_session_state_log`
- `runtime_session_surface_binding`
- `runtime_session_error_log`

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: runtime_hosting

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
