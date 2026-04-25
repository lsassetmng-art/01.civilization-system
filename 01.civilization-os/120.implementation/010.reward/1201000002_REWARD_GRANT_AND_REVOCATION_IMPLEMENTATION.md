# ============================================================
# REWARD GRANT AND REVOCATION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: reward
document_id: 1201000002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines reward definition, grant, entitlement, consumption, and revocation.

## 2. Scope

This document covers:
- reward definition
- reward grant
- reward revocation
- reward entitlement
- reward consumption linkage

## 3. Canonical Source Of Truth

Reward truth remains distinct from quest truth and skill truth.

## 4. Exact Table Set

- reward_definition
- reward_grant
- reward_revocation
- reward_entitlement
- reward_consumption_link

## 5. Exact Request / Response

Reward grant and revocation are explicit operations.

## 6. Exact Command / Event

Typical events:
- reward.granted
- reward.revoked
- reward.entitlement_created
- reward.consumption_linked

## 7. Authorization Boundary

Reward grant/revocation require reward-side authority.

## 8. State Machine

Reward states:
- GRANTED
- ENTITLED
- CONSUMED
- REVOKED
- EXPIRED

## 9. Transaction Boundary

Grant must commit before downstream entitlement use is exposed.

## 10. Idempotency

Repeated grant or revocation for same reward revision must be safe.

## 11. Audit Trace

Grant, revocation, and reviewed override must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_REWARD_GRANT_INVALID
- STATE_REWARD_REVOCATION_FORBIDDEN
- ACCESS_REWARD_MUTATION_FORBIDDEN

## 13. Observability

Reward posture and entitlement posture must remain visible.

## 14. Failure / Recovery

- grant is not consumption
- revocable and non-revocable rewards must be explicit
- reward may bind to asset, currency, title, or entitlement

## 15. Acceptance Checklist

- grant/consumption split fixed
- revocation posture fixed
- entitlement linkage fixed
