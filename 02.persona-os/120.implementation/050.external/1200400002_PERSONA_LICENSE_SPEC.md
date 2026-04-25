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

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: license

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
