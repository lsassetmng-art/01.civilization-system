# ============================================================
# SCHOOL ENROLLMENT AND PROGRESS
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: education
document_id: 1200800002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines school enrollment, attendance/progress, completion, and withdrawal.

## 2. Scope

This document covers:
- enrollment
- program binding
- attendance/progress
- completion
- withdrawal

## 3. Canonical Source Of Truth

Enrollment and progress truth remain distinct from exam result
and certification truth.

## 4. Exact Table Set

- school_enrollment
- program_binding
- attendance_or_progress_record
- completion_result
- withdrawal_result

## 5. Exact Request / Response

Enrollment, progress update, completion, and withdrawal are explicit actions.

## 6. Exact Command / Event

Typical commands:
- school_enrollment.create
- school_progress.record
- school_completion.finalize
- school_withdrawal.record

Typical events:
- school_enrollment.created
- school_progress.recorded
- school_completion.finalized
- school_withdrawal.recorded

## 7. Authorization Boundary

Enrollment and completion must respect education-side authority.

## 8. State Machine

Allowed states:
- ENROLLED
- ACTIVE
- COMPLETED
- FAILED
- WITHDRAWN

## 9. Transaction Boundary

Completion must commit before downstream qualification binding reads it.

## 10. Idempotency

Repeated completion or withdrawal for same enrollment revision
must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed completion correction and withdrawal must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ENROLLMENT_INVALID
- STATE_SCHOOL_COMPLETION_FORBIDDEN
- ACCESS_SCHOOL_PROGRESS_MUTATION_FORBIDDEN

## 13. Observability

Enrollment posture, progress posture, and completion state must remain visible.

## 14. Failure / Recovery

- enrollment is not completion
- progress is not qualification issuance
- withdrawal must preserve history

## 15. Acceptance Checklist

- enrollment/progress split fixed
- completion boundary fixed
- withdrawal trace fixed
