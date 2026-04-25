# ============================================================
# PERSONA PACKAGE SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / package assembly
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Package purpose

A package is a frozen assembly of released persona artifacts for distribution or runtime delivery.

## Canonical package contents

- release manifest
- truth profile export
- behavior rules export
- guardrail binding export
- capability binding export
- visual manifest export
- asset references
- integrity hash manifest

## Package rules

- package references one published release
- package is immutable after creation
- package version increments on rebuild, never edits in place
- package hash must be computed over canonical item ordering

## Package create API

### POST /persona/v1/packages

Request:
```json
{
  "release_id": "01REL...",
  "requested_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "package_id": "01PKG...",
    "status": "built",
    "package_hash": "sha256:..."
  }
}
```

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: package

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
