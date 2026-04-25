# ============================================================
# PERSONA SNAPSHOT ISSUE SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / snapshot issue api
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Snapshot create endpoint

### POST /persona/v1/runtime-sessions/{runtime_session_id}/snapshots

Request:
```json
{
  "requested_by_actor_id": "01ACTOR...",
  "reason_code": "manual-save"
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "snapshot_id": "01SNP...",
    "runtime_session_id": "01RTS...",
    "status": "created",
    "created_at": "2026-04-16T11:00:00Z"
  }
}
```

## Snapshot restore endpoint

### POST /persona/v1/snapshots/{snapshot_id}/restore

Request:
```json
{
  "requested_by_actor_id": "01ACTOR..."
}
```

Response `202`:
```json
{
  "ok": true,
  "data": {
    "restore_job_id": "01RST...",
    "status": "queued"
  }
}
```

## Snapshot rules

- snapshot payload is immutable after creation
- only session owner or privileged actor may restore
- snapshot references released persona artifacts only
- draft-only objects are forbidden in snapshot payload

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: snapshot

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
