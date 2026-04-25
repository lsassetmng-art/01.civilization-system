# ============================================================
# ACTOR SCHEDULER RUNTIME
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_runtime
document_id: 3980002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines actor scheduling runtime and schedule execution posture.

## 2. Scope

This document covers:
- scheduler queue
- actor scheduling
- schedule dispatch
- schedule execution result

## 3. Canonical Source Of Truth

Scheduler truth is runtime truth and not persona/core truth itself.

## 4. Exact Table Set

- actor_scheduler_queue
- actor_schedule_dispatch
- actor_schedule_result
- actor_scheduler_failure

## 5. Exact Request / Response

Scheduler dispatch is runtime-owned and internal.

## 6. Exact Command / Event

Typical events:
- actor_scheduled
- schedule_dispatched
- schedule_execution_completed
- schedule_execution_failed

## 7. Authorization Boundary

Scheduler does not bypass domain authorization for resulting mutations.

## 8. State Machine

Scheduler states:
- QUEUED
- DISPATCHED
- EXECUTING
- COMPLETED
- FAILED

## 9. Transaction Boundary

Dispatch and resulting mutation must remain separately traceable.

## 10. Idempotency

Repeated scheduler dispatch for same actor/time window must be safe.

## 11. Audit Trace

Reviewed scheduler repair or override must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_ACTOR_SCHEDULER_FAILED
- VALIDATION_ACTOR_SCHEDULE_INVALID
- CONFLICT_ACTOR_SCHEDULE_DUPLICATE

## 13. Observability

Scheduler queue and failure posture must remain visible.

## 14. Failure / Recovery

Scheduler decision and final mutation must remain separate.
Runtime queue state must not be confused with canonical domain truth.

## 15. Acceptance Checklist

- scheduler queue fixed
- dispatch/result split fixed
- runtime/domain split fixed
