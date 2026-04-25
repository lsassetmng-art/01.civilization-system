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

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: transfer

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
