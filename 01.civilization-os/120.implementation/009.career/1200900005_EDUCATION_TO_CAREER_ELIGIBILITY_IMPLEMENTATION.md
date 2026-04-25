# ============================================================
# EDUCATION TO CAREER ELIGIBILITY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: education.career.binding
document_id: 1200900005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the binding between education outcome, certification status,
legal eligibility, and career-side eligibility.

## 2. Scope

This document covers:
- exam result reference
- certification validity reference
- recommendation reference
- legal eligibility reference
- career eligibility binding

## 3. Canonical Source Of Truth

Upstream education and legal truths remain canonical.
Career eligibility references them without overwriting them.

## 4. Exact Table Set

- education_career_eligibility_binding
- eligibility_source_ref
- eligibility_review_result
- downstream_invalidation_link

## 5. Exact Request / Response

Career eligibility binding is an explicit cross-domain binding operation.

## 6. Exact Command / Event

Typical commands:
- career_eligibility.bind_sources
- career_eligibility.review
- career_eligibility.invalidate

Typical events:
- career_eligibility.sources_bound
- career_eligibility.reviewed
- career_eligibility.invalidated

## 7. Authorization Boundary

Cross-domain eligibility review requires reviewed authority where configured.

## 8. State Machine

Allowed states:
- SOURCES_BOUND
- REVIEW_PENDING
- ELIGIBLE
- INELIGIBLE
- INVALIDATED
- SUPERSEDED

## 9. Transaction Boundary

Upstream source change must commit before downstream invalidation binding.

## 10. Idempotency

Repeated eligibility binding for same source set revision must be safe.

## 11. Audit Trace

Eligibility review and invalidation must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ELIGIBILITY_SOURCE_MISSING
- STATE_ELIGIBILITY_BINDING_FORBIDDEN
- CONFLICT_ELIGIBILITY_BINDING_DUPLICATE

## 13. Observability

Bound sources, review posture, and invalidation lineage must remain visible.

## 14. Failure / Recovery

- exam result, certification, recommendation, and legal eligibility are distinct
- hiring eligibility may depend on one or more of them
- revocation in upstream domains must propagate eligibility review

## 15. Acceptance Checklist

- upstream/downstream split fixed
- invalidation propagation fixed
- no-overwrite rule fixed
