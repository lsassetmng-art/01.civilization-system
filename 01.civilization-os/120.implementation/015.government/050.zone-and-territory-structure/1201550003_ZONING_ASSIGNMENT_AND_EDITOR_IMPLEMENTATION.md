# ============================================================
# ZONING ASSIGNMENT AND EDITOR
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.zone_and_territory
document_id: 1201550003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines staged zoning editor behavior and canonical zoning assignment handoff.

## 2. Scope

This document covers:
- staging of zoning edits
- zoning validation
- canonical assignment handoff
- editor boundary

## 3. Canonical Source Of Truth

Zoning editor staging is not canonical active zoning truth.

## 4. Exact Table Set

- zoning_editor_session
- zoning_editor_staged_assignment
- zoning_editor_validation_result
- zoning_assignment_apply_result

## 5. Exact Request / Response

Zoning editor save remains staged until approved apply path executes.

## 6. Exact Command / Event

Typical commands:
- zoning_editor.save
- zoning_editor.validate
- zoning_editor.apply

Typical events:
- zoning_editor.saved
- zoning_editor.validation_failed
- zoning_assignment.applied

## 7. Authorization Boundary

Zoning apply requires government-side authority and reviewed path where required.

## 8. State Machine

Allowed editor states:
- EDITING
- VALIDATING
- VALIDATION_FAILED
- READY_TO_APPLY
- APPLIED
- REJECTED

## 9. Transaction Boundary

Apply must commit canonical assignment before map/view refresh.

## 10. Idempotency

Repeated apply for same staged revision must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed zoning apply and rejection must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ZONING_EDITOR_CONFLICT
- STATE_ZONING_APPLY_FORBIDDEN
- ACCESS_ZONING_APPLY_FORBIDDEN

## 13. Observability

Editor state and apply result must remain visible.

## 14. Failure / Recovery

Staged zoning editor may not directly overwrite canonical active zoning truth.

## 15. Acceptance Checklist

- editor/canonical split fixed
- apply route fixed
- validation boundary fixed
