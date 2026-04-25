# ============================================================
# EVALUATION AND CAREER PROGRESS BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: career
document_id: 1200900004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines evaluation truth and its binding to progression, promotion,
path recommendation, and reassignment.

## 2. Scope

This document covers:
- evaluation case
- result
- progression link
- path recommendation
- reassignment link

## 3. Canonical Source Of Truth

Evaluation truth remains distinct from promotion truth and reassignment truth.

## 4. Exact Table Set

- evaluation_case
- evaluation_result
- promotion_or_progression_link
- path_recommendation
- reassignment_link

## 5. Exact Request / Response

Evaluation, progression decision, and reassignment are explicit career actions.

## 6. Exact Command / Event

Typical commands:
- evaluation.record
- progression.link
- path_recommendation.issue
- reassignment.link

Typical events:
- evaluation.recorded
- progression.linked
- path_recommendation.issued
- reassignment.linked

## 7. Authorization Boundary

Evaluation and progression binding require career-side authority.

## 8. State Machine

Allowed states:
- EVALUATION_PENDING
- EVALUATED
- PROGRESSION_PENDING
- PROGRESSED
- REASSIGNMENT_PENDING
- REASSIGNED

## 9. Transaction Boundary

Evaluation result must commit before progression or reassignment depends on it.

## 10. Idempotency

Repeated progression binding for same evaluation revision
must be safe or conflict-rejected.

## 11. Audit Trace

Evaluation correction, promotion, and reassignment must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_EVALUATION_RESULT_INVALID
- STATE_PROGRESSION_BINDING_FORBIDDEN
- ACCESS_REASSIGNMENT_FORBIDDEN

## 13. Observability

Evaluation posture and progression linkage must remain visible.

## 14. Failure / Recovery

- evaluation is not automatic promotion
- progression must preserve evaluation linkage
- reassignment and promotion must be distinct

## 15. Acceptance Checklist

- evaluation/progression split fixed
- reassignment split fixed
- linkage trace fixed
