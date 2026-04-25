# ============================================================
# JOB POSTING AND APPLICATION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: career
document_id: 1200900002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines job posting, application, and screening truth.

## 2. Scope

This document covers:
- job posting
- application case
- applicant eligibility
- screening result
- application status history

## 3. Canonical Source Of Truth

Job posting and application truth remain distinct from hiring truth.

## 4. Exact Table Set

- job_posting
- application_case
- applicant_eligibility_result
- application_screening_result
- application_status_history

## 5. Exact Request / Response

Job posting and application submission are explicit career operations.

## 6. Exact Command / Event

Typical commands:
- job_posting.create
- application.submit
- application.screen

Typical events:
- job_posting.created
- application.submitted
- application.screened

## 7. Authorization Boundary

Posting and screening require career-side authority.

## 8. State Machine

Allowed states:
- POSTED
- OPEN
- APPLIED
- SCREENING
- INTERVIEWING
- CLOSED
- REJECTED

## 9. Transaction Boundary

Screening result must commit before interview or hiring depends on it.

## 10. Idempotency

Repeated application submission for same posting/persona revision
must be safe or conflict-rejected.

## 11. Audit Trace

Screening decisions and posting closure must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_JOB_POSTING_INVALID
- VALIDATION_APPLICATION_INELIGIBLE
- STATE_APPLICATION_SCREENING_FORBIDDEN

## 13. Observability

Posting state, application posture, and screening posture must remain visible.

## 14. Failure / Recovery

- job posting is not occupation taxonomy
- application is not hiring decision
- eligibility may depend on education/certification/law binding

## 15. Acceptance Checklist

- posting/application split fixed
- screening boundary fixed
- upstream-binding note fixed
