# ============================================================
# EXAM ATTEMPT AND RESULT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: education
document_id: 1200800003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines exam scheduling, attempt, scoring, and result finalization.

## 2. Scope

This document covers:
- exam definition
- exam attempt
- scoring
- result finalization
- retake eligibility

## 3. Canonical Source Of Truth

Exam result truth remains distinct from certification truth.

## 4. Exact Table Set

- exam_definition
- exam_attempt
- scoring_result
- result_finalization
- retake_eligibility

## 5. Exact Request / Response

Exam attempt and official finalization are explicit steps.

## 6. Exact Command / Event

Typical commands:
- exam_attempt.register
- exam_attempt.score
- exam_result.finalize
- exam_retake.evaluate

Typical events:
- exam_attempt.registered
- exam_scoring.completed
- exam_result.finalized
- exam_retake.eligibility_updated

## 7. Authorization Boundary

Finalization and retake decisions require education authority.

## 8. State Machine

Allowed states:
- EXAM_SCHEDULED
- EXAM_TAKEN
- SCORED
- RESULT_FINALIZED
- RETAKE_ELIGIBLE
- RETAKE_BLOCKED

## 9. Transaction Boundary

Scoring and official finalization must remain separately committed.

## 10. Idempotency

Repeated finalization for same attempt revision must be safe or conflict-rejected.

## 11. Audit Trace

Scoring correction and result finalization must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_EXAM_ATTEMPT_INVALID
- STATE_EXAM_FINALIZATION_FORBIDDEN
- ACCESS_EXAM_RESULT_MUTATION_FORBIDDEN

## 13. Observability

Attempt state, score state, and finalization state must remain visible.

## 14. Failure / Recovery

- attempt and final result are separate
- scoring and official finalization are separate
- retake must preserve prior attempts

## 15. Acceptance Checklist

- attempt/result split fixed
- finalization boundary fixed
- retake trace fixed
