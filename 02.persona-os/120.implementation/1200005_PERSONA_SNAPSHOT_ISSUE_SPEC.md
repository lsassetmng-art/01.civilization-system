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
