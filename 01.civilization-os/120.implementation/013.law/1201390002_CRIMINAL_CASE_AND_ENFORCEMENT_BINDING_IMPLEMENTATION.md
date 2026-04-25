# ============================================================
# CRIMINAL CASE AND ENFORCEMENT BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: law.criminal
document_id: 1201390002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines criminal case, charge, conviction, and enforcement binding.

## 2. Scope

This document covers:
- criminal case
- charge
- evidence
- decision
- enforcement binding
- custody or restriction linkage

## 3. Canonical Source Of Truth

Criminal truth remains distinct from runtime restriction truth
and from general dispute truth.

## 4. Exact Table Set

- criminal_case
- charge_record
- criminal_evidence
- criminal_decision
- enforcement_binding
- custody_or_restriction_link

## 5. Exact Request / Response

Criminal filing, charging, decision, and enforcement are explicit legal operations.

## 6. Exact Command / Event

Typical commands:
- criminal_case.file
- criminal_charge.record
- criminal_case.decide
- criminal_case.bind_enforcement

Typical events:
- criminal_case.filed
- criminal_charge.recorded
- criminal_case.decided
- criminal_enforcement.bound

## 7. Authorization Boundary

Charging, conviction, and enforcement binding require criminal-law authority.

## 8. State Machine

Allowed criminal states:
- FILED
- CHARGED
- EVIDENCE_PENDING
- TRIAL_PENDING
- DECIDED
- ENFORCEMENT_PENDING
- ENFORCED
- CLOSED
- OVERTURNED

## 9. Transaction Boundary

Conviction decision must commit before enforcement binding is exposed.

## 10. Idempotency

Repeated conviction or enforcement bind for same case revision
must be safe or conflict-rejected.

## 11. Audit Trace

Charge, decision, custody, and enforcement linkage must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_CRIMINAL_CHARGE_INVALID
- STATE_CRIMINAL_DECISION_FORBIDDEN
- ACCESS_CRIMINAL_ENFORCEMENT_FORBIDDEN

## 13. Observability

Criminal posture, charge posture, and enforcement posture must remain visible.

## 14. Failure / Recovery

- accusation is not conviction
- conviction is not enforcement completion
- runtime restriction may depend on enforcement binding
- criminal trace must remain historically immutable

## 15. Acceptance Checklist

- criminal flow fixed
- conviction/enforcement split fixed
- runtime binding boundary fixed
