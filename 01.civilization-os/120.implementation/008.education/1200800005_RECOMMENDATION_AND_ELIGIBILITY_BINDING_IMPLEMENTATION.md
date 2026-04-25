# ============================================================
# RECOMMENDATION AND ELIGIBILITY BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: education
document_id: 1200800005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines recommendation truth and its binding to downstream eligibility.

## 2. Scope

This document covers:
- recommendation record
- eligibility binding
- revocation/review posture
- downstream reference boundary

## 3. Canonical Source Of Truth

Recommendation truth remains distinct from certification truth
and from hiring decision truth.

## 4. Exact Table Set

- recommendation_record
- recommendation_validity
- recommendation_eligibility_binding
- recommendation_review_result

## 5. Exact Request / Response

Recommendation issuance and review are explicit education-side actions.

## 6. Exact Command / Event

Typical commands:
- recommendation.issue
- recommendation.review
- recommendation.bind_eligibility

Typical events:
- recommendation.issued
- recommendation.reviewed
- recommendation.eligibility_bound

## 7. Authorization Boundary

Issue and review require education-side authority.

## 8. State Machine

Recommendation states:
- ISSUED
- VALID
- REVIEW_PENDING
- REVOKED
- SUPERSEDED

## 9. Transaction Boundary

Recommendation validity must commit before downstream eligibility binding.

## 10. Idempotency

Repeated bind for same recommendation revision must be safe.

## 11. Audit Trace

Recommendation issue, review, and revocation must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_RECOMMENDATION_INVALID
- STATE_RECOMMENDATION_BINDING_FORBIDDEN
- ACCESS_RECOMMENDATION_REVIEW_FORBIDDEN

## 13. Observability

Recommendation posture and eligibility binding must remain visible.

## 14. Failure / Recovery

Recommendation may influence eligibility,
but it must not silently become certification or hiring truth.

## 15. Acceptance Checklist

- recommendation/eligibility split fixed
- downstream-boundary fixed
- review posture fixed
