# ============================================================
# WORLD RUNTIME PROJECTION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 001.world
document_id: 1200010008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the runtime projection layer that exposes canonical world state,
map-readable world summaries, and progression-safe read models without
turning projection into source of truth.

## 2. Scope

This document covers:
- world runtime projection
- projection refresh
- projection failure handling
- derived world-readable outputs

## 3. Canonical Source Of Truth

Canonical truth remains in:
- world core
- world state
- global state
- approved environment and progression outputs

Projection is derived only.

## 4. Exact Table Set

- world_runtime_projection
- world_runtime_projection_revision
- world_projection_refresh_queue
- world_projection_failure_log

## 5. Exact Request / Response

Projection refresh may be triggered by runtime or reviewed repair action.
Projection output is read-only.

## 6. Exact Command / Event

Projection input events include:
- world state change
- map update
- environment update
- disaster impact
- shortage impact
- epidemic impact

## 7. Authorization Boundary

Projection refresh does not grant canonical write authority.

## 8. State Machine

Recommended projection states:
- PENDING_REFRESH
- REFRESHING
- CURRENT
- STALE
- FAILED

## 9. Transaction Boundary

Projection rebuild must occur after canonical mutation commit.

## 10. Idempotency

Repeated projection refresh for same input revision must be safe.

## 11. Audit Trace

Reviewed projection repair must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_PROJECTION_REFRESH_FAILED
- VALIDATION_PROJECTION_INPUT_MISSING
- CONFLICT_PROJECTION_REVISION_MISMATCH

## 13. Observability

Projection lag and refresh failure must be operator-visible.

## 14. Failure / Recovery

- failed projection does not erase canonical truth
- stale projection must remain visible
- projection rebuild must be retryable where safe

## 15. Acceptance Checklist

- projection/source-of-truth split fixed
- projection input set fixed
- refresh queue fixed
- projection failure path fixed
