# ============================================================
# MARKETPLACE LISTING EDITOR COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Marketplace Listing Editor Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Marketplace Listing Editor Common.

The purpose of this common component is to provide
a reusable marketplace-listing editor contract and editing surface
for commerce-enabled creator applications, publishing applications,
and marketplace-connected asset applications.

This component should not remain permanently StreamStudio-local
because listing metadata, access-mode selection, and sellability-facing
editing behavior are expected across multiple marketplace-linked apps.

---

## 2. Canonical Responsibility

Marketplace Listing Editor Common is responsible for:

- listing-facing metadata editing
- listing status editing
- access-mode and offer-mode selection
- listing summary exposure
- listing validation exposure
- listing draft-safe editing state
- listing readiness normalization for app consumers

It is not responsible for:

- payment execution
- settlement execution
- app-specific approval logic
- app-specific publishing engine logic
- full marketplace search ranking behavior
- backend commerce engine implementation

---

## 3. Reuse Scope

reuse_scope:
- marketplace-connected creator applications
- publishing applications with sellable assets
- commerce-enabled asset applications
- creator catalog management tools
- digital-offer editing applications

likely_future_consumers:
- StreamStudio
- StaticArtOS marketplace surfaces
- creator sale listing tools
- digital goods management applications
- future marketplace-connected creator apps

---

## 4. Core Responsibilities

- edit listing title or listing-facing summary where profile allows
- define listing status
- define access mode or sale mode
- expose listability / sellability readiness summary
- expose listing-blocking conditions
- support draft-safe listing editing
- support reusable listing field grouping
- support listing save and save-failure normalization
- expose listing action entry points without owning commerce execution

---

## 5. Required Input Contract

required_inputs:
- target_record_id_or_listing_draft_id
- listing_profile
- current_listing_payload
- current_listing_state
- allowed_access_modes
- allowed_sale_modes
- readiness_result
- listing_blockers
- permission_context
- currency_context

input_notes:
- listing_profile determines which listing fields are relevant
- current_listing_payload should be distinct from general asset metadata payload
- readiness_result may be produced externally and consumed here
- currency_context must remain explicit when listing values depend on monetary presentation

---

## 6. Output / Event Contract

emitted_events:
- listing_edit_started
- listing_field_changed
- listing_access_mode_changed
- listing_sale_mode_changed
- listing_validation_failed
- listing_validation_passed
- listing_save_requested
- listing_saved
- listing_save_failed
- listing_action_requested
- listing_block_detected
- listing_edit_cancelled

output_notes:
- listing_save_requested and listing_saved must remain separate
- listing actions should remain explicit even when execution is external
- blockers must remain explicit and structured
- validation failure must remain distinct from save failure

---

## 7. State Model

normalized_state_model:
- listing_not_started
- listing_editing
- listing_dirty
- listing_validation_failed
- listing_ready_to_save
- listing_saving
- listing_saved
- listing_save_failed
- listing_blocked
- listing_inactive
- listing_active

state_model_notes:
- listing_saved does not imply listing_active
- listing_blocked is distinct from validation_failed
- listing_inactive and listing_active are listing-state concepts, not publish-state concepts
- listing_save_failed must not destroy current editing state

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to edit listing-facing configuration
- listing edit permission is not equivalent to metadata edit permission
- listing edit permission is not equivalent to publish permission
- listing edit permission is not equivalent to settlement execution permission

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical global permission engine.

---

## 9. Listing Control Boundary

minimum_listing_concepts:
- listing_state
- access_mode
- sale_mode
- readiness_result
- listing_blockers
- save_allowed_flag
- activate_allowed_flag
- deactivate_allowed_flag

optional_listing_concepts_by_profile:
- preorder mode
- bundle marker
- member-only listing marker
- limited-time offer marker
- catalog grouping marker

listing_boundary_note:
Optional listing concepts may vary by app profile,
but the common contract should remain listing-editor oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- listing summary strip
- listing state selector
- access mode selector
- sale mode selector
- blocker summary
- listing save action area
- listing activation / deactivation action area

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific screen layout
- app-specific commerce copy
- payment execution flow detail
- marketplace ranking or recommendation logic
- settlement engine implementation detail

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- listing validation failure must remain explicit
- save failure must not destroy current editing buffer
- activation failure must remain distinguishable from save failure
- listing blockers should remain reviewable without forcing activation
- listing state and publish state should remain distinguishable

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Publish Settings Common
- Metadata Editing Common
- Membership Program Manager Common
- Multi-Currency Monetary Core

relationship_notes:
- Publish Settings Common handles publication visibility and scheduling beyond listing-specific configuration
- Metadata Editing Common handles general asset metadata before or alongside listing editing
- Membership Program Manager Common handles subscription or membership structure beyond generic listing editing
- Multi-Currency Monetary Core provides shared monetary rules that the listing editor should reference rather than redefine

---

## 13. Promotion Caution

promotion_caution:
- do not merge listing editor behavior with payment execution
- do not merge listing editor behavior with settlement engine logic
- do not hard-code StreamStudio-specific listing wording
- do not collapse listing state into publish state
- do not embed marketplace ranking or recommendation policies in the common contract

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Publish Settings Common
  - Membership Program Manager Common
  - Multi-Currency Monetary Core
  - Metadata Editing Common

---

## 15. Final Note

This design defines Marketplace Listing Editor Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
