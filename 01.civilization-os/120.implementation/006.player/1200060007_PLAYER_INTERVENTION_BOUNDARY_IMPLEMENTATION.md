# ============================================================
# PLAYER INTERVENTION BOUNDARY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 006.player
document_id: 1200060007
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines where direct player intervention is allowed, reviewed,
persona-mediated, or prohibited.

## 2. Scope

This document covers:
- direct intervention classes
- reviewed intervention
- persona-mediated-only actions
- prohibited action classes

## 3. Canonical Source Of Truth

Player intervention boundary truth is defined here.

## 4. Exact Table Set

- player_intervention_policy
- player_intervention_decision
- player_intervention_audit

## 5. Exact Request / Response

Intervention decisions are explicit and must be reviewable where required.

## 6. Exact Command / Event

Typical commands:
- player_intervention.evaluate
- player_intervention.approve
- player_intervention.reject

Typical events:
- player_intervention.allowed
- player_intervention.review_required
- player_intervention.blocked

## 7. Authorization Boundary

Intervention class must be checked before mutable effect.

## 8. State Machine

Intervention classes:
- DIRECT_ALLOWED
- DIRECT_REVIEWED
- PERSONA_MEDIATED_ONLY
- PROHIBITED

## 9. Transaction Boundary

Intervention decision must be fixed before downstream mutation.

## 10. Idempotency

Repeated intervention evaluation for same request must be safe.

## 11. Audit Trace

Reviewed intervention and blocked intervention must remain auditable.

## 12. Error Code Binding

Typical codes:
- ACCESS_PLAYER_INTERVENTION_PROHIBITED
- AUTH_PLAYER_INTERVENTION_REVIEW_MISSING
- VALIDATION_PLAYER_INTERVENTION_SCOPE_INVALID

## 13. Observability

Blocked and reviewed intervention surfaces must be operator-visible.

## 14. Failure / Recovery

World-native action should prefer persona-mediated execution unless
explicitly designated as direct player intervention.

## 15. Acceptance Checklist

- intervention classes fixed
- direct/reviewed boundary fixed
- persona-mediated boundary fixed
- prohibited class fixed
