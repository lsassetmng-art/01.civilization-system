# ============================================================
# LAW CASE AND DECISION STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: law
document_id: 1201301002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical legal-case progression and legal-decision state.

## 2. Scope

This document covers:
- legal case progression
- legal decision state
- enforcement handoff
- overturn trace

## 3. Canonical Source Of Truth

Law-case truth remains distinct from runtime restriction truth
and from government detail sanction workflow truth.

## 4. Exact Table Set

- law_case
- law_case_state
- law_decision
- law_enforcement_link
- law_case_overturn_link

## 5. Exact Request / Response

Legal-case filing, review, decision, enforcement, and overturn
must remain explicit operations.

## 6. Exact Command / Event

Typical commands:
- law_case.file
- law_case.review
- law_case.decide
- law_case.enforce
- law_case.overturn

Typical events:
- law_case.filed
- law_case.under_review
- law_case.decided
- law_case.enforcement_pending
- law_case.enforced
- law_case.overturned

## 7. Authorization Boundary

Decision, enforcement, and overturn require law-side reviewed authority.

## 8. State Machine

Allowed case states:
- FILED
- UNDER_REVIEW
- EVIDENCE_PENDING
- HEARING_PENDING
- DECIDED
- ENFORCEMENT_PENDING
- ENFORCED
- CLOSED
- OVERTURNED

## 9. Transaction Boundary

Decision must commit before enforcement linkage is exposed.

## 10. Idempotency

Repeated decision or enforcement request for same case revision
must be safe or conflict-rejected.

## 11. Audit Trace

Decision, enforcement, and overturn must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_LAW_CASE_INCOMPLETE
- STATE_LAW_DECISION_FORBIDDEN
- ACCESS_LAW_ENFORCEMENT_FORBIDDEN

## 13. Observability

Case state, decision posture, and enforcement posture must remain visible.

## 14. Failure / Recovery

- filed case is not decision
- decision is not enforcement
- overturned case must preserve full trace
- reviewed override must be auditable

## 15. Acceptance Checklist

- case states fixed
- decision/enforcement split fixed
- overturn trace fixed
