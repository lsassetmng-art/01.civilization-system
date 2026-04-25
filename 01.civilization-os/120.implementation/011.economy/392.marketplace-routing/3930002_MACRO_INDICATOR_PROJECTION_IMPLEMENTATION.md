# ============================================================
# MACRO INDICATOR PROJECTION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.calculation
document_id: 3930002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines macro indicators as derived projection surfaces.

## 2. Scope

This document covers:
- macro indicator run
- macro projection
- macro revision

## 3. Canonical Source Of Truth

Macro indicators are derived projection and not transaction truth.

## 4. Exact Table Set

- macro_indicator_run
- macro_indicator_projection
- macro_indicator_revision

## 5. Exact Request / Response

Macro projection generation is a controlled calculation operation.

## 6. Exact Command / Event

Typical events:
- macro_indicator.completed
- macro_indicator.revised

## 7. Authorization Boundary

Reviewed recalculation authority is required where configured.

## 8. State Machine

Projection run states:
- PENDING
- RUNNING
- COMPLETED
- FAILED
- SUPERSEDED

## 9. Transaction Boundary

Projection generation follows committed transaction truth and world truth.

## 10. Idempotency

Repeated macro calculation for same revision input must be safe.

## 11. Audit Trace

Reviewed recalculation and correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_MACRO_INPUT_INVALID
- RUNTIME_MACRO_CALCULATION_FAILED
- CONFLICT_MACRO_REVISION_COLLISION

## 13. Observability

Projection lag and revision lineage must remain visible.

## 14. Failure / Recovery

- macro indicators are derived projections
- transaction truth remains outside macro projection
- recalculation must preserve revision trace

## 15. Acceptance Checklist

- macro projection fixed
- transaction/projection split fixed
- revision trace fixed
