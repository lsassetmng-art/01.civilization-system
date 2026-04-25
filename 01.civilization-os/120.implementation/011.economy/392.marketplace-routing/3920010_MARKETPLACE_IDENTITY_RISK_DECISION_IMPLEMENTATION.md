# ============================================================
# MARKETPLACE IDENTITY RISK DECISION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.marketplace
document_id: 3920010
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines identity-risk decision posture for marketplace progression.

## 2. Scope

This document covers:
- risk signals
- risk case
- decision layer
- reviewed override

## 3. Canonical Source Of Truth

Identity risk decision is distinct from authentication and authorization truth.

## 4. Exact Table Set

- identity_risk_case
- identity_risk_signal
- identity_risk_decision
- override_review_result

## 5. Exact Request / Response

Identity-risk evaluation occurs before irreversible marketplace progression.

## 6. Exact Command / Event

Typical commands:
- identity_risk.evaluate
- identity_risk.override_review
- identity_risk.finalize

Typical events:
- identity_risk.hard_blocked
- identity_risk.review_held
- identity_risk.monitoring_only
- identity_risk.override_approved

## 7. Authorization Boundary

Reviewed override requires privileged reviewed action.

## 8. State Machine

Decision layers:
- HARD_BLOCK
- REVIEW_HOLD
- MONITORING_ONLY

## 9. Transaction Boundary

Risk decision must be fixed before irreversible purchase progression.

## 10. Idempotency

Repeated evaluation for same risk case must be safe.

## 11. Audit Trace

Reviewed override and hard-block decision must be auditable.

## 12. Error Code Binding

Typical codes:
- ACCESS_IDENTITY_RISK_HARD_BLOCK
- VALIDATION_IDENTITY_RISK_SIGNAL_INSUFFICIENT
- AUTH_IDENTITY_RISK_OVERRIDE_FORBIDDEN

## 13. Observability

Decision layer and reviewed override result must remain visible.

## 14. Failure / Recovery

- decision point must occur before irreversible purchase progression
- seller control and payout beneficiary comparison are explicit inputs
- reviewed override must be audited

## 15. Acceptance Checklist

- decision layers fixed
- signal/case/decision split fixed
- override audit fixed
