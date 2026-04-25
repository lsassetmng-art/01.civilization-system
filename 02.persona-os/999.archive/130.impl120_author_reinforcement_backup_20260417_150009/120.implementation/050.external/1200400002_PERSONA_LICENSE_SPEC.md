# ============================================================
# PERSONA LICENSE SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / license
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Allowed values

`license_type`:
- `personal-use`
- `business-use`
- `platform-use`
- `limited-evaluation`

`license_scope`:
- `release`
- `package`

## Create API

### POST /persona/v1/rights/licenses

Request:
```json
{
  "release_id": "01REL...",
  "package_id": "01PKG...",
  "license_type": "personal-use",
  "license_scope": "package",
  "licensed_to_subject_id": "01SUBJ...",
  "start_at": "2026-04-16T11:00:00Z",
  "end_at": "2027-04-16T10:59:59Z"
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "license_id": "01LIC...",
    "status": "active"
  }
}
```

Rules:
- published release/package only
- `start_at <= end_at`
- immutable after activation except revoke/expire transition
