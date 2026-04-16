# ============================================================
# MEMBERSHIP PROGRAM MANAGER COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Membership Program Manager Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Membership Program Manager Common.

The purpose of this common component is to provide
a reusable membership-program management contract and management surface
for creator subscription products, recurring access programs,
and membership-enabled content applications.

This component should not remain permanently StreamStudio-local
because membership tier structure, benefit definition,
status control, and enrollment-facing program management
are expected across multiple creator and subscription applications.

---

## 2. Canonical Responsibility

Membership Program Manager Common is responsible for:

- membership program structure management
- tier structure exposure
- benefit-set structure exposure
- program status management
- enrollment window and availability structure
- membership-rule summary exposure
- draft-safe membership configuration editing
- membership program validation exposure

It is not responsible for:

- payment execution
- settlement execution
- app-specific billing engine logic
- entitlement enforcement runtime
- app-specific creator marketing copy
- backend subscription processor implementation

---

## 3. Reuse Scope

reuse_scope:
- creator subscription applications
- membership-enabled content applications
- commerce-enabled creator tools
- recurring access product management applications
- tiered benefit management applications

likely_future_consumers:
- StreamStudio
- creator membership tools
- future subscription-enabled media apps
- membership-based catalog systems
- creator monetization management apps

---

## 4. Core Responsibilities

- define membership program identity and status
- define tier list and tier ordering
- define benefit sets per tier
- define enrollment availability window where applicable
- expose validation state for incomplete program setup
- expose program activation and deactivation entry points
- support draft-safe editing before activation
- support reusable tier/benefit grouping without StreamStudio-only layout dependence
- expose membership program summary for consumer apps

---

## 5. Required Input Contract

required_inputs:
- membership_program_id_or_draft_id
- program_profile
- current_program_payload
- current_program_state
- tier_definitions
- benefit_definitions
- availability_window_or_null
- validation_policy_profile
- program_blockers
- permission_context
- currency_context_or_null

input_notes:
- program_profile determines which membership features are enabled
- tier_definitions and benefit_definitions should remain normalized
- availability_window_or_null must remain explicit
- currency_context_or_null may be needed when tier pricing or monetary benefits are shown,
  but monetary rule handling should still be delegated to shared monetary foundations

---

## 6. Output / Event Contract

emitted_events:
- membership_program_opened
- membership_program_edit_started
- tier_added
- tier_removed
- tier_reordered
- tier_field_changed
- benefit_assignment_changed
- availability_window_changed
- membership_validation_failed
- membership_validation_passed
- membership_program_save_requested
- membership_program_saved
- membership_program_save_failed
- membership_program_activation_requested
- membership_program_deactivation_requested
- membership_program_state_changed
- membership_program_closed

output_notes:
- save_requested and saved must remain separate
- activation and deactivation requests must remain distinct from save events
- validation failure must remain explicit
- benefit assignment changes should remain normalized and structured

---

## 7. State Model

normalized_state_model:
- membership_not_started
- membership_editing
- membership_dirty
- membership_validation_failed
- membership_ready_to_save
- membership_saving
- membership_saved
- membership_save_failed
- membership_inactive
- membership_active
- membership_suspended
- membership_blocked

state_model_notes:
- membership_saved does not imply membership_active
- membership_blocked is distinct from validation_failed
- membership_suspended is distinct from membership_inactive
- membership_save_failed must not destroy current editing state

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to edit membership program configuration
- membership edit permission is not equivalent to publish permission
- membership edit permission is not equivalent to entitlement enforcement permission
- membership edit permission is not equivalent to settlement execution permission

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical global permission engine.

---

## 9. Membership Control Boundary

minimum_membership_concepts:
- program_state
- tier_list
- tier_order
- benefit_set
- activation_allowed_flag
- deactivation_allowed_flag
- validation_result
- program_blockers

optional_membership_concepts_by_profile:
- trial period marker
- limited membership window
- invite-only marker
- auto-renew marker
- member-only content rule summary
- member-only community access marker

membership_boundary_note:
Optional membership concepts may vary by app profile,
but the common contract should remain program-manager oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- program summary strip
- tier list editor
- tier order controls
- benefit assignment editor
- blocker summary
- save action area
- activation / deactivation action area

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific creator guidance copy
- app-specific marketing slogans
- payment checkout behavior
- settlement engine detail
- entitlement runtime enforcement detail

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- tier validation failure must remain explicit
- save failure must not destroy current program editing state
- activation failure must remain distinguishable from save failure
- blocker visibility should remain reviewable before activation
- tier reordering failure should not corrupt the confirmed tier order state

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Marketplace Listing Editor Common
- Publish Settings Common
- Multi-Currency Monetary Core
- Membership Tier Editor Common
- Membership Content Rule Common

relationship_notes:
- Marketplace Listing Editor Common handles listing-facing access/sale configuration beyond full membership program structure
- Publish Settings Common handles publication visibility and scheduling, not membership program structure
- Multi-Currency Monetary Core provides shared monetary rules the membership program should reference rather than redefine
- Membership Tier Editor Common may remain subordinate to or merge-reviewed under Membership Program Manager Common
- Membership Content Rule Common may remain subordinate to or merge-reviewed under Membership Program Manager Common

---

## 13. Promotion Caution

promotion_caution:
- do not merge membership management with payment execution
- do not merge membership management with entitlement enforcement runtime
- do not hard-code StreamStudio-specific membership wording
- do not split tier structure too early if it remains subordinate to the full program manager
- do not embed creator marketing copy in the common contract

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Marketplace Listing Editor Common
  - Multi-Currency Monetary Core
  - Membership Tier Editor Common
  - Membership Content Rule Common

---

## 15. Final Note

This design defines Membership Program Manager Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
