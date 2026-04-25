# ============================================================
# SCHEDULE ACTIVITY AND RECOVERY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.autonomous
document_id: 3950003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines schedule intention, activity execution linkage, and recovery handling.

## 2. Scope

This document covers:
- schedule binding
- activity plan
- activity recovery
- failed or interrupted activity handling

## 3. Canonical Source Of Truth

Schedule intention and runtime activity execution are related but separate.

## 4. Exact Table Set

- activity_schedule_binding
- activity_execution_plan
- activity_recovery_case
- interrupted_activity_result

## 5. Exact Request / Response

Schedule and recovery are explicit runtime-owned surfaces.

## 6. Exact Command / Event

Typical events:
- schedule_bound
- activity_planned
- activity_interrupted
- activity_recovery_started
- activity_recovered

## 7. Authorization Boundary

Schedule mutation and runtime recovery must respect actor and domain authority.

## 8. State Machine

Typical activity states:
- PLANNED
- QUEUED
- EXECUTING
- INTERRUPTED
- RECOVERING
- COMPLETED
- FAILED

## 9. Transaction Boundary

Interrupted activity must commit runtime result before recovery begins.

## 10. Idempotency

Repeated recovery start for same interrupted case must be safe.

## 11. Audit Trace

Reviewed recovery override must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_ACTIVITY_INTERRUPTED
- VALIDATION_ACTIVITY_RECOVERY_INVALID
- STATE_ACTIVITY_RECOVERY_FORBIDDEN

## 13. Observability

Interrupted and recovery posture must remain visible.

## 14. Failure / Recovery

- schedule is intention layer
- activity execution is runtime layer
- recovery must remain explicit
- interruption must not silently disappear

## 15. Acceptance Checklist

- schedule/execution split fixed
- interruption/recovery split fixed
- explicit recovery path fixed
