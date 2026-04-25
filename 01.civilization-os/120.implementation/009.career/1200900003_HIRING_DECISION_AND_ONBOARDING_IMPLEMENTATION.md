# ============================================================
# HIRING DECISION AND ONBOARDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: career
document_id: 1200900003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines hiring decision, offer acceptance, onboarding, and employment activation.

## 2. Scope

This document covers:
- hiring case
- offer
- acceptance
- onboarding
- employment activation link

## 3. Canonical Source Of Truth

Hiring truth remains distinct from application truth and evaluation truth.

## 4. Exact Table Set

- hiring_case
- offer_record
- acceptance_result
- onboarding_record
- employment_activation_link

## 5. Exact Request / Response

Hiring decision, offer acceptance, and onboarding are explicit steps.

## 6. Exact Command / Event

Typical commands:
- hiring_case.decide
- offer.issue
- offer.accept
- onboarding.complete

Typical events:
- hiring_case.decided
- offer.issued
- offer.accepted
- onboarding.completed
- employment.activated

## 7. Authorization Boundary

Hiring and onboarding require career/employment authority.

## 8. State Machine

Allowed states:
- INTERVIEWING
- OFFERED
- HIRED
- ONBOARDING
- ONBOARDED
- ACTIVE_EMPLOYMENT
- REJECTED

## 9. Transaction Boundary

Offer acceptance and employment activation must remain separately committed.

## 10. Idempotency

Repeated hiring or onboarding completion for same revision
must be safe or conflict-rejected.

## 11. Audit Trace

Hiring decision and onboarding completion must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_HIRING_DECISION_FORBIDDEN
- VALIDATION_OFFER_ACCEPTANCE_INVALID
- ACCESS_ONBOARDING_MUTATION_FORBIDDEN

## 13. Observability

Hiring posture, onboarding posture, and activation linkage must remain visible.

## 14. Failure / Recovery

- screening result is not hiring
- offer acceptance is not onboarding completion
- employment activation must preserve decision lineage

## 15. Acceptance Checklist

- hiring/onboarding split fixed
- activation linkage fixed
- decision lineage fixed
