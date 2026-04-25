# ============================================================
# EXHIBITION BUILDER PURCHASED ART ASSET PICKER
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.exhibition_builder
document_id: 3820004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines entitled art-asset availability inside ExhibitionBuilder.

## 2. Scope

This document covers:
- exhibition builder asset picker state
- entitled art asset projection
- selection
- apply result

## 3. Canonical Source Of Truth

Builder picker availability is derived from entitlement truth.

## 4. Exact Table Set

- exhibition_builder_asset_picker_state
- entitled_art_asset_projection
- selected_art_asset
- exhibition_asset_apply_result

## 5. Exact Request / Response

Picker selection and exhibition placement are explicit builder actions.

## 6. Exact Command / Event

Typical events:
- exhibition_builder_asset_picker.loaded
- exhibition_art_asset.selected
- exhibition_art_asset.applied

## 7. Authorization Boundary

Only entitled art assets may be selectable.
Selection does not bypass exhibition placement rules.

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

Repeated picker load or art selection for same revision must be safe.

## 11. Audit Trace

Reviewed override or removal must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ART_ASSET_NOT_ENTITLED
- STATE_EXHIBITION_ASSET_APPLY_FORBIDDEN

## 13. Observability

Picker availability and selection result must remain visible.

## 14. Failure / Recovery

- purchased art must appear in ExhibitionBuilder asset picker
- marketplace-purchased and other-OS-purchased art must converge into the same availability projection
- selection is not display placement
- placement is user-driven

## 15. Acceptance Checklist

- entitlement/picker split fixed
- source convergence fixed
- selection/placement split fixed

## Exact Purchased Art Builder Rule
## Exact Purchased Art Builder Rule

Purchased art works from Marketplace or other OSs
must appear in ExhibitionBuilder after entitlement is established.

## Exact Exhibition Asset Availability Rule

The following must remain separate:

- entitlement truth
- builder availability projection
- selection
- exhibition placement

Automatic placement is prohibited.
