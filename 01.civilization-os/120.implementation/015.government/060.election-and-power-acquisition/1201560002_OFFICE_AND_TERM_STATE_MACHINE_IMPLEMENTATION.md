# ============================================================
# OFFICE AND TERM STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.election_and_power
document_id: 1201560002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the state transition surface for office vacancy, holder confirmation,
and active term progression.

## 2. Scope

This document covers:
- office state
- term window
- vacancy
- succession posture

## 3. Canonical Source Of Truth

Office truth, holder truth, and term truth remain canonical government records.

## 4. Exact Table Set

- office_root
- office_term
- office_holder_confirmation
- office_vacancy
- office_succession_link

## 5. Exact Request / Response

Office state changes occur through election, appointment, succession,
or reviewed emergency route.

## 6. Exact Command / Event

Typical events:
- office.vacant
- office.candidacy_opened
- office.result_pending
- office.holder_confirmed
- office.active_term_started
- office.succession_pending

## 7. Authorization Boundary

Holder confirmation, succession, and reviewed override require government authority.

## 8. State Machine

Allowed office states:
- VACANT
- CANDIDACY_OPEN
- VOTING
- RESULT_PENDING
- HOLDER_CONFIRMED
- ACTIVE_TERM
- TERM_END_PENDING
- SUCCESSION_PENDING
- SUSPENDED

## 9. Transaction Boundary

Holder confirmation must commit before active term begins.

## 10. Idempotency

Repeated office activation for same term must be safe or conflict-rejected.

## 11. Audit Trace

Authority handoff and reviewed override must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_OFFICE_ACTIVATION_FORBIDDEN
- VALIDATION_OFFICE_TERM_INVALID
- ACCESS_OFFICE_HANDOFF_FORBIDDEN

## 13. Observability

Office vacancy, holder state, and term state must remain visible.

## 14. Failure / Recovery

- election result does not automatically create active term
- holder confirmation must precede active term
- vacancy must remain explicit
- succession must preserve office continuity trace

## 15. Acceptance Checklist

- office states fixed
- handoff rules fixed
- vacancy explicitness fixed
- succession trace fixed
