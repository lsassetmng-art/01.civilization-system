# ============================================================
# PERSONA ACCESS GRANT SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / access grant
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Access grant purpose

Access grants authorize a subject to use a release or package under a valid rights basis.

## Create API

### POST /persona/v1/rights/access-grants

Request:
```json
{
  "release_id": "01REL...",
  "package_id": "01PKG...",
  "subject_id": "01SUBJ...",
  "grant_basis_type": "license",
  "grant_basis_id": "01LIC..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "access_grant_id": "01AGR...",
    "status": "active"
  }
}
```

Rules:
- rights basis must already be active
- one active grant per subject and object pair
- revocation appends terminal state, never hard-deletes
