# ============================================================
# CITY BUILDER PURCHASED DESIGN ASSET PICKER
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.city_builder
document_id: 1201525004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines entitled building-design availability inside CityBuilder.

## 2. Scope

This document covers:
- city builder asset picker state
- entitled design asset projection
- selection
- apply result

## 3. Canonical Source Of Truth

Builder picker availability is derived from entitlement truth.

## 4. Exact Table Set

- city_builder_asset_picker_state
- entitled_design_asset_projection
- selected_design_asset
- design_asset_apply_result

## 5. Exact Request / Response

Picker selection and placement are explicit builder actions.

## 6. Exact Command / Event

Typical events:
- city_builder_asset_picker.loaded
- city_builder_design_asset.selected
- city_builder_design_asset.applied

## 7. Authorization Boundary

Only entitled design assets may be selectable.
Selection does not bypass city-builder publish or placement rules.

## 8. State Machine

Picker states:
- LOADED
- SELECTION_PENDING
- SELECTED
- APPLIED
- BLOCKED

## 9. Transaction Boundary

Entitlement projection must commit before picker load depends on it.

## 10. Idempotency

Repeated picker load or design selection for same revision must be safe.

## 11. Audit Trace

Reviewed design-asset override or removal must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_DESIGN_ASSET_NOT_ENTITLED
- STATE_CITY_BUILDER_ASSET_APPLY_FORBIDDEN

## 13. Observability

Picker availability and selection result must remain visible.

## 14. Failure / Recovery

- purchased building design must appear in CityBuilder asset picker
- picker content is projection from entitlement truth
- selection is not placement
- placement is not automatic activation

## 15. Acceptance Checklist

- entitlement/picker split fixed
- no-auto-placement rule fixed
- selection/placement split fixed

## Exact Purchased Design Asset Builder Rule
## Exact Purchased Design Asset Builder Rule

Purchased building designs must appear in CityBuilder
as entitled design assets after entitlement is established.

## Exact Selection And Placement Split

The following must remain separate:

- entitlement truth
- picker availability projection
- selection
- placement
- activation

Selection is not placement.
Placement is not automatic activation.
