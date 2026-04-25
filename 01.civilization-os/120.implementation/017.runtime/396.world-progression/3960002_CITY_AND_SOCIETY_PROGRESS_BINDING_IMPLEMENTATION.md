# ============================================================
# CITY AND SOCIETY PROGRESS BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_progression
document_id: 3960002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how city and society progression bind into wider world progression.

## 2. Scope

This document covers:
- city progression inputs
- society progression inputs
- binding to world progression
- apply linkage

## 3. Canonical Source Of Truth

City and society progression inputs are not identical to final world apply truth.

## 4. Exact Table Set

- city_progress_binding
- society_progress_binding
- progress_effect_binding
- progress_apply_link

## 5. Exact Request / Response

Bindings are internal progression structures.

## 6. Exact Command / Event

Typical events:
- city_progress.bound
- society_progress.bound
- progress_effect.linked

## 7. Authorization Boundary

Progress binding does not bypass government or world-side authority.

## 8. State Machine

Binding states:
- CREATED
- LINKED
- APPLIED
- SUPERSEDED

## 9. Transaction Boundary

Binding must reference committed city and society truth.

## 10. Idempotency

Repeated bind for same input revision must be safe.

## 11. Audit Trace

Reviewed binding correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_PROGRESS_BINDING_INVALID
- CONFLICT_PROGRESS_BINDING_DUPLICATE

## 13. Observability

Binding lineage and apply linkage must remain visible.

## 14. Failure / Recovery

City and society progression may feed world progression,
but they may not silently overwrite canonical government or social truth.

## 15. Acceptance Checklist

- binding surface fixed
- no-bypass rule fixed
- lineage fixed
