# ============================================================
# WORLD STATE TRANSITION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 002.world
document_id: 1200020002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact state transition surface for world-wide state mutation.

## 2. Scope

This document covers:
- world state classes
- transition guards
- supersede and archive handling
- approved mutation entry

## 3. Canonical Source Of Truth

Canonical world state truth remains in world-state-owned canonical records.

## 4. Exact Table Set

- world_state
- world_state_transition
- world_state_guard_result
- world_state_revision_link

## 5. Exact Request / Response

Mutation requests must enter through approved world mutation routes only.

## 6. Exact Command / Event

Typical commands:
- world.seed_finalize
- world.apply_progression
- world.apply_recovery
- world.supersede

Typical events:
- world.state_changed
- world.superseded
- world.archived

## 7. Authorization Boundary

Destructive or reviewed transition requires privileged action handling.

## 8. State Machine

Allowed world state classes:
- SEEDING
- INITIALIZING
- ACTIVE
- DEGRADED
- DISRUPTED
- RECOVERING
- SUPERSEDED
- ARCHIVED

## 9. Transaction Boundary

World state transition must commit canonical state before projection refresh.

## 10. Idempotency

Repeated transition request for same effective target must be safe or rejected.

## 11. Audit Trace

Every reviewed transition and supersede action must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_TRANSITION_FORBIDDEN
- VALIDATION_WORLD_STATE_GUARD_FAILED
- AUTH_PRIVILEGED_REVIEW_MISSING

## 13. Observability

World-wide state changes must remain traceable.

## 14. Failure / Recovery

- archived world cannot reactivate directly
- supersede requires successor linkage
- unresolved guard failure must fail closed

## 15. Acceptance Checklist

- state classes fixed
- guards fixed
- mutation entry fixed
- supersede path fixed
