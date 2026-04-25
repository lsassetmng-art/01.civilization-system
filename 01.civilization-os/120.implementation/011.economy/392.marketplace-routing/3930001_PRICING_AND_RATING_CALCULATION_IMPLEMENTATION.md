# ============================================================
# PRICING AND RATING CALCULATION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.calculation
document_id: 3930001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines pricing and rating calculation as derived calculation surfaces.

## 2. Scope

This document covers:
- pricing run
- rating run
- input snapshot
- derived output
- calculation revision

## 3. Canonical Source Of Truth

Pricing and rating calculation output are derived and must not overwrite transaction truth.

## 4. Exact Table Set

- pricing_calculation_run
- rating_calculation_run
- pricing_input_snapshot
- calculation_output_projection
- calculation_revision

## 5. Exact Request / Response

Calculation execution is an explicit batch or reviewed operation.

## 6. Exact Command / Event

Typical events:
- pricing_calculation.completed
- rating_calculation.completed
- calculation_revision.created

## 7. Authorization Boundary

Reviewed recalculation may require operator authority.

## 8. State Machine

Calculation runs may be:
- PENDING
- RUNNING
- COMPLETED
- FAILED
- SUPERSEDED

## 9. Transaction Boundary

Calculation output is applied post-run as projection, not silent transaction rewrite.

## 10. Idempotency

Repeated calculation for same input revision must be safe.

## 11. Audit Trace

Reviewed recalculation and correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_CALCULATION_INPUT_INVALID
- STATE_CALCULATION_REVISION_CONFLICT
- RUNTIME_CALCULATION_RUN_FAILED

## 13. Observability

Calculation run state and revision lineage must remain visible.

## 14. Failure / Recovery

- pricing output is derived
- pricing output must not overwrite settled transaction truth
- calculation version must be traceable

## 15. Acceptance Checklist

- calculation/transaction split fixed
- revision trace fixed
- output posture fixed
