# ============================================================
# PURCHASE TO BUILDER ASSET ENTITLEMENT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.builder_entitlement
document_id: 3920011
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the entitlement-to-builder-availability bridge
for purchased building designs and purchased art works.

## 2. Scope

This document covers:
- purchase entitlement
- builder asset availability
- source linkage
- revocation result

## 3. Canonical Source Of Truth

Entitlement truth is canonical.
Builder availability is derived from entitlement truth.

## 4. Exact Table Set

- purchase_entitlement
- builder_asset_availability
- builder_asset_source_link
- builder_asset_revocation_result

## 5. Exact Request / Response

Entitlement creation and availability projection are explicit post-purchase steps.

## 6. Exact Command / Event

Typical events:
- purchase_entitlement.created
- builder_asset_availability.projected
- builder_asset_availability.revoked

## 7. Authorization Boundary

Entitlement creation follows approved purchase completion or approved external-OS grant.

## 8. State Machine

Availability states:
- ENTITLED
- AVAILABLE_IN_BUILDER
- REVOKED
- SUPERSEDED

## 9. Transaction Boundary

Purchase or approved external entitlement must commit before builder availability projection.

## 10. Idempotency

Repeated entitlement projection for same purchase identity must be safe.

## 11. Audit Trace

Reviewed revocation and external-source acceptance must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_BUILDER_ENTITLEMENT_SOURCE_INVALID
- STATE_BUILDER_AVAILABILITY_REVOCATION_FORBIDDEN

## 13. Observability

Entitlement and builder availability posture must remain visible.

## 14. Failure / Recovery

- purchase completion creates entitlement truth
- builder availability is derived from entitlement truth
- availability does not imply auto-placement
- refund or revocation updates availability
- marketplace source and external OS source must converge to the same builder availability model

## 15. Acceptance Checklist

- entitlement/availability split fixed
- no-auto-placement rule fixed
- source convergence fixed

## Exact Purchased Asset To Builder Availability Rule
## Exact Purchased Asset To Builder Availability Rule

Purchased building design:
- must appear in CityBuilder after entitlement is established

Purchased art work:
- must appear in ExhibitionBuilder after entitlement is established

Builder availability is projection-only
and does not imply automatic placement.

## Exact Entitlement Source Convergence Rule

Marketplace purchase source and external OS entitlement source
must converge into one builder-availability model.
