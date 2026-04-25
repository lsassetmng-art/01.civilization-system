# ============================================================
# ASSET OWNERSHIP AND USABILITY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: asset
document_id: 1204000002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines ownership, usability, transferability, and revocation posture for assets.

## 2. Scope

This document covers:
- asset root
- ownership
- usability
- transferability
- revocation
- entitlement linkage

## 3. Canonical Source Of Truth

Asset ownership truth is distinct from inventory storage truth
and from item-instance truth.

## 4. Exact Table Set

- asset_root
- asset_ownership
- asset_usability
- asset_transferability
- asset_revocation
- asset_entitlement_link

## 5. Exact Request / Response

Asset grant, transfer, revoke, and usability review are explicit operations.

## 6. Exact Command / Event

Typical events:
- asset.granted
- asset.transferred
- asset.revoked
- asset.usability_changed

## 7. Authorization Boundary

Asset mutation requires asset-side authority and reviewed action where applicable.

## 8. State Machine

Allowed states:
- OWNED
- USABLE
- RESTRICTED
- REVOKED
- SUPERSEDED

## 9. Transaction Boundary

Ownership mutation must commit before downstream usability projection refresh.

## 10. Idempotency

Repeated grant or revoke for same asset revision must be safe.

## 11. Audit Trace

Grant, transfer, and revocation must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ASSET_TRANSFER_INVALID
- STATE_ASSET_REVOCATION_FORBIDDEN
- ACCESS_ASSET_MUTATION_FORBIDDEN

## 13. Observability

Ownership posture and usability posture must remain visible.

## 14. Failure / Recovery

- ownership and usability are separate
- transferability must be explicit
- revocation must preserve prior ownership trace
- entitlement-linked assets may be usable without physical possession

## 15. Acceptance Checklist

- ownership/usability split fixed
- transferability fixed
- revocation trace fixed

## Exact Asset Ownership And Usability Split
## Exact Asset Ownership And Usability Split

Asset implementation must explicitly distinguish:

- ownership
- usability
- transferability
- revocation
- entitlement linkage

Ownership and usability must not collapse into one status.

## Exact Entitlement Linked Asset Rule

An asset may be usable because of entitlement
even when it is not represented as physical possession.

Entitlement-linked asset usability must remain explicit and revocable.
