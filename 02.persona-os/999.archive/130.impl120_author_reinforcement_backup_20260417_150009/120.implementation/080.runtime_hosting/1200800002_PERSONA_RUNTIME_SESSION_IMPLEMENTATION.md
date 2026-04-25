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
