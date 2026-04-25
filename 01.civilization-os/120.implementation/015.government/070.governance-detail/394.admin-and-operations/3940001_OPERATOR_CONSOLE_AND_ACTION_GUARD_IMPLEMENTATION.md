# ============================================================
# OPERATOR CONSOLE AND ACTION GUARD
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: admin.operations
document_id: 3940001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines operator console behavior, reviewed action entry,
repair entry, and action guard results.

## 2. Scope

This document covers:
- operator console state
- reviewed action request
- repair action request
- reconcile action request
- operator action guard

## 3. Canonical Source Of Truth

Operator console is not omnipotent truth ownership.
It must route into reviewed domain-owned actions.

## 4. Exact Table Set

- operator_console_state
- reviewed_action_request
- repair_action_request
- reconcile_action_request
- operator_action_guard_result

## 5. Exact Request / Response

Operator actions must be explicit and reviewed where required.

## 6. Exact Command / Event

Typical commands:
- operator_action.evaluate
- operator_action.approve
- operator_action.reject
- operator_repair.execute

## 7. Authorization Boundary

Operator console must respect action_scope and reviewed privileges.

## 8. State Machine

Operator action states:
- REQUESTED
- REVIEW_REQUIRED
- APPROVED
- REJECTED
- EXECUTED
- FAILED

## 9. Transaction Boundary

Guard evaluation must complete before operator mutation path executes.

## 10. Idempotency

Repeated operator request for same target must be safe or conflict-rejected.

## 11. Audit Trace

All reviewed operator actions must be auditable.

## 12. Error Code Binding

Typical codes:
- ACCESS_OPERATOR_ACTION_FORBIDDEN
- AUTH_OPERATOR_REVIEW_MISSING
- VALIDATION_OPERATOR_TARGET_INVALID

## 13. Observability

Guard result and execution result must remain visible.

## 14. Failure / Recovery

- operator console must respect action_scope
- reviewed action must not bypass publish/approval rules
- repair and reconcile must remain explicit actions
- all operator-side mutation must be audited

## 15. Acceptance Checklist

- console/guard split fixed
- reviewed-action rule fixed
- bypass prohibition fixed
