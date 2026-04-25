# ============================================================
# PERSONA STATE APPLY SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / truth apply
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Goal

This file fixes the exact apply state machine, retry rule, storage contract boundary, and terminal outcomes for truth reflection.

## Canonical apply state machine

```text
received
  -> signature-verified
  -> validated
  -> queued
  -> applying
  -> applied

validated
  -> rejected-terminal

applying
  -> failed-retryable
  -> failed-terminal
  -> dead-lettered
```

## Retry policy

- retry only when failure class is transient
- maximum attempts: `5`
- backoff seconds: `15, 60, 300, 900, 3600`
- after final retry failure -> `dead-lettered`

Retryable classes:
- storage transient failure
- queue timeout
- downstream lock timeout

Terminal classes:
- validation denied
- policy denied
- missing release
- foreign key integrity failure caused by invalid input

## Canonical truth objects mutated by apply

- `persona_truth_release_pointer`
- `persona_truth_profile`
- `persona_truth_behavior_rules`
- `persona_truth_capability_binding`
- `persona_truth_visual_binding`
- `persona_truth_guardrail_binding`

Rules:
- apply is atomic per `persona_root_id`
- all truth pointers switch to same `release_id`
- partial truth mutation is forbidden
- audit append is mandatory on every attempt

## Result contract

Successful apply result:
```json
{
  "apply_result_id": "01APR...",
  "status": "applied",
  "truth_release_id": "01REL...",
  "attempt_count": 1,
  "error_code": null
}
```

Rejected apply result:
```json
{
  "apply_result_id": "01APR...",
  "status": "rejected-terminal",
  "truth_release_id": null,
  "attempt_count": 0,
  "error_code": "persona_apply_policy_denied"
}
```

## Required storage rows

- `persona_apply_inbox`
- `persona_apply_result`
- `persona_apply_attempt`
- `persona_apply_dead_letter`
- `persona_apply_audit`

## Acceptance rules

Implementation is not complete unless all of the following pass:
- duplicate event id is idempotent
- invalid signature is rejected before queueing
- successful apply flips all truth pointers in one transaction
- retryable failure increments attempt count and reschedules
- terminal validation failure never retries
- dead-letter row is created after attempt 5 failure

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: state_apply

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
