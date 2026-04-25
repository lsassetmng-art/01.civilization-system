# ============================================================
# MEMORY RECORD AND RECALL SURFACE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: memory
document_id: 1204100002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines memory record truth and recall surfaces.

## 2. Scope

This document covers:
- memory record
- subject binding
- recall surface
- visibility rule

## 3. Canonical Source Of Truth

Memory truth is perspective-bound and is distinct from history artifact truth.

## 4. Exact Table Set

- memory_record
- memory_subject_binding
- memory_recall_surface
- memory_visibility_rule

## 5. Exact Request / Response

Memory creation and recall visibility change are explicit operations.

## 6. Exact Command / Event

Typical events:
- memory.recorded
- memory.visibility_changed
- memory.recalled

## 7. Authorization Boundary

Memory visibility and recall must respect subject and policy authority.

## 8. State Machine

Memory states:
- RECORDED
- VISIBLE
- HIDDEN
- SUPERSEDED

## 9. Transaction Boundary

Memory mutation must not silently rewrite historical artifact truth.

## 10. Idempotency

Repeated memory record creation for same causal identity must be safe.

## 11. Audit Trace

Reviewed memory correction and visibility override must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_MEMORY_RECORD_INVALID
- ACCESS_MEMORY_VISIBILITY_FORBIDDEN

## 13. Observability

Memory visibility and recall posture must remain visible.

## 14. Failure / Recovery

- memory is not equivalent to historical fact
- recall surface may be filtered or perspective-bound
- memory visibility must be explicit

## 15. Acceptance Checklist

- memory/history split fixed
- recall surface fixed
- visibility rule fixed
