# ============================================================
# TRANSACTION TO CALCULATION BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.calculation
document_id: 3930003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the binding between canonical transaction truth and derived calculation input.

## 2. Scope

This document covers:
- transaction input snapshot
- calculation binding
- revisioned source linkage
- no-rewrite rule

## 3. Canonical Source Of Truth

Transactions remain canonical truth.
Calculation input is derived from committed transaction truth.

## 4. Exact Table Set

- transaction_calculation_binding
- calculation_input_revision
- calculation_source_snapshot

## 5. Exact Request / Response

Calculation binding is an internal derived linkage, not a direct transaction mutation route.

## 6. Exact Command / Event

Typical events:
- transaction.bound_to_calculation_input
- calculation_input_revision.created

## 7. Authorization Boundary

Binding generation does not replace marketplace or finance authority.

## 8. State Machine

Binding revision may be:
- CREATED
- SUPERSEDED
- INVALIDATED

## 9. Transaction Boundary

Binding is generated only from committed transaction truth.

## 10. Idempotency

Repeated binding generation for same transaction revision must be safe.

## 11. Audit Trace

Reviewed correction of binding source must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_CALCULATION_SOURCE_MISSING
- STATE_CALCULATION_BINDING_INVALIDATED
- CONFLICT_CALCULATION_BINDING_DUPLICATE

## 13. Observability

Binding lineage and calculation source revision must remain visible.

## 14. Failure / Recovery

- calculation outputs may influence later decisions
- calculation outputs must not silently rewrite order, payout, or ownership truth
- transaction truth remains canonical

## 15. Acceptance Checklist

- transaction/calculation binding fixed
- no-rewrite rule fixed
- revision trace fixed
