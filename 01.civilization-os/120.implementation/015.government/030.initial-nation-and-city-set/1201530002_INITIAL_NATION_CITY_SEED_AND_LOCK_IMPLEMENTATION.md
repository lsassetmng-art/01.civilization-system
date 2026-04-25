# ============================================================
# INITIAL NATION CITY SEED AND LOCK
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.initial_seed
document_id: 1201530002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact seed and lock behavior for the initial nation and city set.

## 2. Scope

This document covers:
- seed artifact
- initial lock posture
- seed finalization
- boundary to later revision

## 3. Canonical Source Of Truth

Initial seed truth is separate from later builder revision truth.

## 4. Exact Table Set

- initial_nation_city_seed
- initial_seed_artifact
- initial_seed_lock
- initial_seed_finalization
- initial_seed_revision_boundary

## 5. Exact Request / Response

Seed finalize is a reviewed initialization operation.
It is not a standard builder publish flow.

## 6. Exact Command / Event

Typical commands:
- initial_seed.load
- initial_seed.validate
- initial_seed.finalize
- initial_seed.lock

Typical events:
- initial_seed.validated
- initial_seed.finalized
- initial_seed.locked

## 7. Authorization Boundary

Initial seed finalization requires privileged reviewed action.

## 8. State Machine

Allowed states:
- PREPARING
- VALIDATING
- FINALIZED
- LOCKED
- SUPERSEDED_BY_REVISION

## 9. Transaction Boundary

Seed finalization must complete before standard builder revision routes open.

## 10. Idempotency

Repeated finalize on same seed artifact must be safe or conflict-rejected.

## 11. Audit Trace

Seed finalization and lock must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_INITIAL_SEED_INCOMPLETE
- STATE_INITIAL_SEED_LOCK_FORBIDDEN
- AUTH_PRIVILEGED_REVIEW_MISSING

## 13. Observability

Seed origin, finalization status, and lock posture must remain visible.

## 14. Failure / Recovery

Initial nation-city seed must not be confused with later ordinary builder revision.

## 15. Acceptance Checklist

- seed/revision split fixed
- lock posture fixed
- finalize route fixed
