# ============================================================
# CALENDAR AND TIME REFERENCE BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: time
document_id: 1203800002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines calendar reference and time-reference binding used across domain and runtime.

## 2. Scope

This document covers:
- calendar reference
- time reference binding
- display time linkage
- simulation bridge

## 3. Canonical Source Of Truth

Calendar/reference truth is distinct from simulation-clock execution truth.

## 4. Exact Table Set

- calendar_reference
- time_reference_binding
- display_time_link
- simulation_time_bridge

## 5. Exact Request / Response

Calendar rule and reference binding changes are explicit operations.

## 6. Exact Command / Event

Typical events:
- calendar.reference_created
- time_reference.bound
- simulation_bridge.updated

## 7. Authorization Boundary

Calendar and time-reference mutation require time-side authority.

## 8. State Machine

Reference states:
- ACTIVE
- SUPERSEDED
- RETIRED

## 9. Transaction Boundary

Reference mutation must commit before downstream display or scheduling reads it.

## 10. Idempotency

Repeated reference binding for same revision must be safe.

## 11. Audit Trace

Reviewed calendar correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_TIME_REFERENCE_INVALID
- CONFLICT_TIME_REFERENCE_DUPLICATE

## 13. Observability

Reference binding and simulation bridge posture must remain visible.

## 14. Failure / Recovery

- time reference is not simulation clock itself
- display time and execution time must remain bridgeable
- calendar rules must remain explicit

## 15. Acceptance Checklist

- reference/clock split fixed
- display bridge fixed
- calendar rule fixed
