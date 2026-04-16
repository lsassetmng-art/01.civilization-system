# ============================================================
# REVENUE SPLIT EDITOR COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Revenue Split Editor Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Revenue Split Editor Common.

The purpose of this common component is to provide
a reusable revenue-split editing contract and editing surface
for monetized collaborative applications,
creator revenue-sharing applications,
and other systems that expose participant-facing split configuration.

This component should not remain permanently StreamStudio-local
because revenue split editing is a repeated structure
across collaborative monetization products.

---

## 2. Canonical Responsibility

Revenue Split Editor Common is responsible for:

- revenue split structure editing
- participant share editing
- split validation exposure
- split summary exposure
- draft-safe split editing support
- split-state normalization for app consumers
- explicit split save and change handling

It is not responsible for:

- payout execution
- settlement execution
- tax calculation
- accounting engine behavior
- contract/legal enforcement logic
- backend payout processor implementation

---

## 3. Reuse Scope

reuse_scope:
- collaborative monetization applications
- creator revenue-sharing systems
- payout-preparation surfaces
- project-based monetization tools
- monetized media and asset applications

likely_future_consumers:
- StreamStudio
- creator monetization tools
- collaborative publishing systems
- future payout-preparation apps
- revenue-sharing asset platforms

---

## 4. Core Responsibilities

- define split participants
- define participant share entries
- support split adjustment
- expose split validation state
- expose total-share consistency summary
- expose split preview summary
- support draft-safe editing before save
- support explicit split change visibility
- support reusable split-rule grouping without StreamStudio-only layout dependence

---

## 5. Required Input Contract

required_inputs:
- split_context_id
- split_profile
- participant_list
- current_split_payload
- current_split_state
- currency_context_or_null
- validation_policy_profile
- split_constraints
- permission_context

input_notes:
- split_profile determines the allowed split model
- participant_list must remain normalized and reference-driven
- currency_context_or_null may be needed when split summaries show money projections
- split_constraints must remain explicit and structured
- this component may reference allocation rules without redefining lower-level allocation foundations

---

## 6. Output / Event Contract

emitted_events:
- split_editor_opened
- split_entry_added
- split_entry_removed
- split_entry_changed
- split_validation_failed
- split_validation_passed
- split_save_requested
- split_saved
- split_save_failed
- split_preview_requested
- split_action_denied
- split_editor_closed

output_notes:
- split_save_requested and split_saved must remain separate
- validation failure must remain explicit
- preview_requested should remain explicit where app consumers need it
- denied actions must remain visible and structured

---

## 7. State Model

normalized_state_model:
- split_not_started
- split_editing
- split_dirty
- split_validation_failed
- split_ready_to_save
- split_saving
- split_saved
- split_save_failed
- split_blocked

state_model_notes:
- split_saved does not imply payout-ready
- split_blocked is distinct from action_denied
- validation failure must remain distinct from save failure
- a split may be structurally present without being validation-passed

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view split state
- caller must already be allowed to edit split entries where applicable
- split edit permission is not equivalent to settlement execution permission
- split edit permission is not equivalent to project ownership
- split edit permission is not equivalent to accounting close authority

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical global permission engine.

---

## 9. Revenue Split Boundary

minimum_split_concepts:
- participant_id
- split_value
- split_type
- split_state
- validation_result
- split_constraints
- save_allowed_flag

optional_split_concepts_by_profile:
- recommended_split_hint
- locked_split_entry
- priority_recoup_marker
- bonus_share_marker
- capped_share_marker

split_boundary_note:
Optional split concepts may vary by app profile,
but the common contract should remain revenue-split-editor oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- split summary strip
- participant split table
- split edit controls
- validation summary
- preview action area
- save action area
- blocker summary

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific collaborator revenue copy
- payout execution detail
- settlement engine detail
- tax engine detail
- app-specific negotiation copy

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- validation failure must remain explicit
- save failure must not destroy current editing state
- over-split and under-split states should remain reviewable before save
- preview failure must remain distinguishable from save failure
- participant removal failure must not corrupt confirmed split state

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Fixed Fee and Percentage Allocation Common
- Project Member Authority Matrix Common
- Multi-Currency Monetary Core
- Audit Reconstruction Bundle Common

relationship_notes:
- Fixed Fee and Percentage Allocation Common may provide lower-level allocation-rule structure beneath or beside revenue split editing
- Project Member Authority Matrix Common may provide stable participant-role references and authority scope for split editing
- Multi-Currency Monetary Core provides shared monetary rules that split summaries should reference rather than redefine
- Audit Reconstruction Bundle Common may preserve split change traceability outside the split-editor core

---

## 13. Promotion Caution

promotion_caution:
- do not merge revenue split editing with payout execution
- do not merge revenue split editing with tax or accounting logic
- do not hard-code StreamStudio-specific revenue language
- do not embed negotiation policy in the common contract
- do not assume one fixed payout backend implementation

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Fixed Fee and Percentage Allocation Common
  - Project Member Authority Matrix Common
  - Multi-Currency Monetary Core
  - Audit Reconstruction Bundle Common

---

## 15. Final Note

This design defines Revenue Split Editor Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
