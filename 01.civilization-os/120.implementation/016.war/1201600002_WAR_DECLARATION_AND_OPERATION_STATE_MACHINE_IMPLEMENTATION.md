# ============================================================
# WAR DECLARATION AND OPERATION STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: war
document_id: 1201600002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines war declaration, active operation posture, and ceasefire transition.

## 2. Scope

This document covers:
- declaration
- preparation
- active fronts
- ceasefire transition
- resolution posture

## 3. Canonical Source Of Truth

War declaration truth remains distinct from deployment truth,
logistics truth, and postwar resolution truth.

## 4. Exact Table Set

- war_case
- war_state
- war_operation_order
- war_resolution_link

## 5. Exact Request / Response

Declaration, operation start, ceasefire, and resolution are explicit war operations.

## 6. Exact Command / Event

Typical commands:
- war_case.declare
- war_case.prepare
- war_case.start_operation
- war_case.begin_ceasefire
- war_case.resolve

Typical events:
- war_case.declared
- war_case.preparing
- war_front.activated
- war_ceasefire.pending
- war_case.resolved

## 7. Authorization Boundary

War declaration, active operation, and resolution require war-side authority.

## 8. State Machine

Allowed war states:
- DECLARED
- PREPARING
- ACTIVE_FRONT
- STALEMATE
- CEASEFIRE_PENDING
- CEASEFIRE_ACTIVE
- RESOLUTION_PENDING
- RESOLVED
- SUPERSEDED

## 9. Transaction Boundary

Declaration or ceasefire transition must commit before downstream effects bind.

## 10. Idempotency

Repeated declaration or resolution for same war revision
must be safe or conflict-rejected.

## 11. Audit Trace

Declaration, operation escalation, ceasefire, and resolution must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_WAR_DECLARATION_INVALID
- STATE_WAR_OPERATION_FORBIDDEN
- ACCESS_WAR_RESOLUTION_FORBIDDEN

## 13. Observability

War posture, ceasefire posture, and resolution lineage must remain visible.

## 14. Failure / Recovery

- declaration does not equal active operation
- operation order must bind to declared war context
- ceasefire does not erase war trace
- resolution must preserve postwar link

## 15. Acceptance Checklist

- war states fixed
- declaration/operation split fixed
- ceasefire/resolution split fixed
