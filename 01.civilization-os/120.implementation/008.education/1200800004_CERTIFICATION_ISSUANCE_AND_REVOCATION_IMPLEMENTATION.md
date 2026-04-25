# ============================================================
# CERTIFICATION ISSUANCE AND REVOCATION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: education
document_id: 1200800004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines certification issuance, validity, revocation, and restoration.

## 2. Scope

This document covers:
- certification case
- issue
- validity
- revocation
- restoration

## 3. Canonical Source Of Truth

Certification truth remains distinct from exam result and training result.

## 4. Exact Table Set

- certification_case
- certification_issue
- certification_validity
- certification_revocation
- certification_restoration

## 5. Exact Request / Response

Certification issuance, revocation, and restoration are explicit operations.

## 6. Exact Command / Event

Typical commands:
- certification.issue
- certification.revoke
- certification.restore

Typical events:
- certification.issued
- certification.revoked
- certification.restored

## 7. Authorization Boundary

Issue, revoke, and restore require certification authority.

## 8. State Machine

Allowed states:
- PENDING
- ISSUED
- VALID
- REVOKED
- RESTORED
- EXPIRED

## 9. Transaction Boundary

Issue or revocation must commit before downstream eligibility reads it.

## 10. Idempotency

Repeated issue or revoke for same certification revision
must be safe or conflict-rejected.

## 11. Audit Trace

Issue, revoke, and restore must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_CERTIFICATION_ISSUE_INVALID
- STATE_CERTIFICATION_REVOCATION_FORBIDDEN
- ACCESS_CERTIFICATION_MUTATION_FORBIDDEN

## 13. Observability

Certification validity and revocation posture must remain visible.

## 14. Failure / Recovery

- exam pass does not silently become certification
- certification validity must be explicit
- revocation must preserve issued history

## 15. Acceptance Checklist

- issue/revocation split fixed
- validity posture fixed
- history preservation fixed
