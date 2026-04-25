# ============================================================
# INVENTORY ALLOCATION AND LOCKING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.marketplace
document_id: 3920007
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines inventory allocation, lock point, oversell prevention,
and release handling for marketplace execution.

## 2. Scope

This document covers:
- inventory snapshot
- allocation
- inventory lock
- oversell prevention
- release

## 3. Canonical Source Of Truth

Inventory truth, reservation truth, and allocation truth remain separate.

## 4. Exact Table Set

- inventory_snapshot
- inventory_allocation
- inventory_lock
- oversell_prevention_result
- inventory_release_record

## 5. Exact Request / Response

Inventory allocation is a controlled marketplace operation, not an implicit side effect.

## 6. Exact Command / Event

Typical commands:
- inventory.allocate
- inventory.lock
- inventory.release

Typical events:
- inventory.allocated
- inventory.locked
- inventory.released
- inventory.oversell_blocked

## 7. Authorization Boundary

Inventory mutation must remain within marketplace inventory authority.

## 8. State Machine

Recommended allocation states:
- PENDING
- LOCKED
- ALLOCATED
- RELEASED
- FAILED

## 9. Transaction Boundary

Lock point must be transaction-safe relative to order/payment rules.

## 10. Idempotency

Repeated allocation for same order line must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed stock repair and forced release must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_INVENTORY_UNAVAILABLE
- CONFLICT_OVERSALE_BLOCKED
- STATE_INVENTORY_RELEASE_FORBIDDEN

## 13. Observability

Allocation state and oversell prevention results must remain visible.

## 14. Failure / Recovery

- lock point must be explicit
- oversell prevention must be transaction-safe
- allocation release path must be explicit
- shipment/post-receipt transitions must not silently mutate stock truth

## 15. Acceptance Checklist

- inventory lock point fixed
- oversell prevention fixed
- release path fixed
