# ============================================================
# PLAYER INTERVENTION RUNTIME
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_runtime
document_id: 3980005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines explicit player intervention at runtime.

## 2. Scope

This document covers:
- intervention request
- intervention guard
- intervention apply result
- intervention recovery link

## 3. Canonical Source Of Truth

Player intervention runtime truth is separate from player identity truth.

## 4. Exact Table Set

- player_intervention_request
- intervention_guard_result
- intervention_apply_result
- intervention_recovery_link

## 5. Exact Request / Response

Direct intervention must be explicit runtime action.

## 6. Exact Command / Event

Typical events:
- player_intervention.requested
- player_intervention.blocked
- player_intervention.applied
- player_intervention.recovery_linked

## 7. Authorization Boundary

Direct intervention must bind to action_scope and reviewed privilege where required.

## 8. State Machine

Intervention states:
- REQUESTED
- GUARDED
- BLOCKED
- APPLIED
- RECOVERY_PENDING
- RECOVERED

## 9. Transaction Boundary

Guard result must complete before apply result.

## 10. Idempotency

Repeated intervention for same guarded target must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed intervention and recovery must be auditable.

## 12. Error Code Binding

Typical codes:
- ACCESS_PLAYER_INTERVENTION_FORBIDDEN
- VALIDATION_PLAYER_INTERVENTION_TARGET_INVALID
- STATE_PLAYER_INTERVENTION_RECOVERY_REQUIRED

## 13. Observability

Intervention posture and recovery linkage must remain visible.

## 14. Failure / Recovery

- direct intervention must be explicit
- prohibited intervention classes must fail closed
- reviewed intervention must bind to action_scope and audit
- intervention recovery path must be defined where applicable

## 15. Acceptance Checklist

- intervention runtime fixed
- guard/apply split fixed
- recovery path fixed
