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

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: access_grant

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
