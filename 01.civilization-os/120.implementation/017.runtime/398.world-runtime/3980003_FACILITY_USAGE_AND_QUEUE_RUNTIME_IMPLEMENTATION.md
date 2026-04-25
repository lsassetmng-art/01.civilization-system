# ============================================================
# FACILITY USAGE AND QUEUE RUNTIME
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_runtime
document_id: 3980003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines facility usage runtime and queue handling.

## 2. Scope

This document covers:
- facility usage session
- queue entry
- queue state
- usage result
- queue failure

## 3. Canonical Source Of Truth

Queue state is runtime-managed truth and not visual projection.

## 4. Exact Table Set

- facility_usage_session
- facility_queue_entry
- facility_queue_state
- facility_usage_result
- facility_queue_failure

## 5. Exact Request / Response

Usage and queue mutation are runtime-owned surfaces.

## 6. Exact Command / Event

Typical events:
- facility_queue_entered
- facility_usage_started
- facility_usage_completed
- facility_queue_failed

## 7. Authorization Boundary

Queue reorder or reviewed override requires explicit authority.

## 8. State Machine

Queue states:
- WAITING
- READY
- IN_USE
- COMPLETED
- FAILED
- CANCELLED

## 9. Transaction Boundary

Usage result must commit before downstream event emission depends on it.

## 10. Idempotency

Repeated queue transitions for same queue entry must be safe.

## 11. Audit Trace

Reviewed queue override or forced reorder must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_FACILITY_QUEUE_FAILED
- STATE_FACILITY_USAGE_TRANSITION_FORBIDDEN
- ACCESS_FACILITY_QUEUE_OVERRIDE_FORBIDDEN

## 13. Observability

Queue state and failure posture must remain visible.

## 14. Failure / Recovery

- queue state is runtime-managed truth
- usage result may emit canonical event
- visual waiting line is projection-only
- queue reorder requires explicit authority and audit where reviewed

## 15. Acceptance Checklist

- queue truth fixed
- usage/result split fixed
- visual/runtime split fixed
