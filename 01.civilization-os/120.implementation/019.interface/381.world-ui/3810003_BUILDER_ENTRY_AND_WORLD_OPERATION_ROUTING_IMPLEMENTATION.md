# ============================================================
# BUILDER ENTRY AND WORLD OPERATION ROUTING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.world_ui
document_id: 3810003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the routing split between staged builder entry and active world operation entry.

## 2. Scope

This document covers:
- builder route
- operation route
- route guards
- route context linkage

## 3. Canonical Source Of Truth

Routing truth is UI/control truth and not domain ownership truth.

## 4. Exact Table Set

- world_route_context
- builder_entry_route
- operation_entry_route
- route_guard_result

## 5. Exact Request / Response

Routes must target one of:
- staged builder session
- active runtime-owned entity

## 6. Exact Command / Event

Typical events:
- builder_entry_routed
- world_operation_routed
- route_guard_failed

## 7. Authorization Boundary

Builder routes and operation routes each require their own action scopes.

## 8. State Machine

Route states:
- REQUESTED
- VALIDATED
- ROUTED
- BLOCKED

## 9. Transaction Boundary

Route decision must complete before domain screen/state loads.

## 10. Idempotency

Repeated route requests for same target should be safe.

## 11. Audit Trace

Reviewed or privileged routes must remain auditable.

## 12. Error Code Binding

Typical codes:
- ACCESS_BUILDER_ROUTE_FORBIDDEN
- ACCESS_OPERATION_ROUTE_FORBIDDEN
- VALIDATION_ROUTE_TARGET_INVALID

## 13. Observability

Route target, guard result, and failure reason must remain visible.

## 14. Failure / Recovery

- builder routing targets staged builder sessions
- operation routing targets active runtime-owned entities
- a single ambiguous route must not serve both

## 15. Acceptance Checklist

- builder/operation split fixed
- route guards fixed
- ambiguous-route prohibition fixed
