# ============================================================
# PERSONA EXTERNAL RELEASE SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / external release
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Release eligibility

Only published releases may be externally released.
Required:
- published release id
- package id
- effective license or access policy
- marketplace or platform destination code

## API

### POST /persona/v1/external-releases

Request:
```json
{
  "release_id": "01REL...",
  "package_id": "01PKG...",
  "destination_platform_code": "civilization-marketplace",
  "requested_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "external_release_id": "01EXTREL...",
    "status": "queued"
  }
}
```

## States

- `queued`
- `syncing`
- `released`
- `failed-retryable`
- `failed-terminal`
- `dead-lettered`
