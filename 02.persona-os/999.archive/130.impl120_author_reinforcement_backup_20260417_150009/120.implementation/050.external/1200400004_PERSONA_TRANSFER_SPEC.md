# ============================================================
# PERSONA TRANSFER SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / transfer
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Transfer purpose

Transfer reassigns ownership or managed rights of a published release/package between valid subjects.

## Create API

### POST /persona/v1/rights/transfers

Request:
```json
{
  "release_id": "01REL...",
  "package_id": "01PKG...",
  "from_subject_id": "01SUBJ_A...",
  "to_subject_id": "01SUBJ_B...",
  "requested_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "transfer_id": "01TRN...",
    "status": "pending-approval"
  }
}
```

Rules:
- source subject must currently own or manage the right
- transfer cannot target draft objects
- approved transfer appends new active ownership binding
