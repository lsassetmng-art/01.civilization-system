# ============================================================
# FIXED FEE AND PERCENTAGE ALLOCATION COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Fixed Fee and Percentage Allocation Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Fixed Fee and Percentage Allocation Common.

The purpose of this common component is to provide
a reusable allocation-rule contract and editing surface
for collaborative monetization, fixed-fee distribution,
percentage-based share distribution, and mixed allocation scenarios.

This component should not remain permanently StreamStudio-local
because fixed-fee and percentage allocation logic
is structurally reusable across many monetized collaborative applications.

---

## 2. Canonical Responsibility

Fixed Fee and Percentage Allocation Common is responsible for:

- allocation-rule structure exposure
- fixed-fee allocation definition
- percentage allocation definition
- mixed allocation validation exposure
- allocation summary exposure
- allocation draft-safe editing support
- allocation-state normalization for app consumers

It is not responsible for:

- settlement execution
- payment execution
- tax calculation engine logic
- global accounting engine logic
- app-specific collaborator policy wording
- backend payout processor implementation

---

## 3. Reuse Scope

reuse_scope:
- collaborative monetization applications
- creator revenue distribution applications
- settlement-preparation applications
- project-based compensation tools
- fee-sharing and percentage-sharing applications

likely_future_consumers:
- StreamStudio
- creator monetization tools
- collaborative publishing apps
- future payout-preparation systems
- contract-driven revenue sharing applications

---

## 4. Core Responsibilities

- define allocation entries
- support fixed-fee allocation items
- support percentage allocation items
- support mixed fixed-fee and percentage configurations where profile allows
- expose allocation validation state
- expose over-allocation or under-allocation summary
- expose allocation save behavior
- support additive allocation-rule extensions without rewriting the base contract
- expose allocation preview summary for app consumers

---

## 5. Required Input Contract

required_inputs:
- allocation_context_id
- allocation_profile
- participant_list
- current_allocation_payload
- current_allocation_state
- currency_context
- validation_policy_profile
- allocation_constraints
- permission_context

input_notes:
- allocation_profile determines whether fixed-only, percentage-only, or mixed allocation is allowed
- participant_list must remain normalized and reference-driven
- currency_context is required for fixed-fee handling
- allocation_constraints should remain explicit and structured

---

## 6. Output / Event Contract

emitted_events:
- allocation_editor_opened
- allocation_entry_added
- allocation_entry_removed
- allocation_entry_changed
- allocation_validation_failed
- allocation_validation_passed
- allocation_save_requested
- allocation_saved
- allocation_save_failed
- allocation_preview_requested
- allocation_action_denied
- allocation_editor_closed

output_notes:
- save_requested and saved must remain separate
- validation failure must remain explicit
- preview_requested should remain explicit where the consumer app needs it
- denied actions must remain visible and structured

---

## 7. State Model

normalized_state_model:
- allocation_not_started
- allocation_editing
- allocation_dirty
- allocation_validation_failed
- allocation_ready_to_save
- allocation_saving
- allocation_saved
- allocation_save_failed
- allocation_blocked

state_model_notes:
- allocation_saved does not imply settlement-ready
- allocation_blocked is distinct from action_denied
- validation failure must remain distinct from save failure
- mixed allocation may be profile-legal without being validation-passed

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view allocation state
- caller must already be allowed to edit allocation entries where applicable
- allocation edit permission is not equivalent to settlement execution permission
- allocation edit permission is not equivalent to project ownership
- allocation edit permission is not equivalent to accounting close authority

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical global permission engine.

---

## 9. Allocation Boundary

minimum_allocation_concepts:
- participant_id
- allocation_type
- fixed_amount_or_null
- percentage_value_or_null
- currency_code_or_null
- allocation_state
- validation_result
- allocation_constraints

optional_allocation_concepts_by_profile:
- minimum guaranteed amount
- capped percentage
- priority payout marker
- deferred allocation marker
- role-based recommended allocation hint

allocation_boundary_note:
Optional allocation concepts may vary by app profile,
but the common contract should remain allocation-rule oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- allocation summary strip
- allocation entry table
- fixed-fee and percentage edit controls
- validation summary
- preview action area
- save action area
- constraint/blocker summary

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific revenue-copy
- settlement execution flow detail
- tax engine detail
- accounting-engine implementation detail
- app-specific collaborator negotiation copy

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- validation failure must remain explicit
- save failure must not destroy current editing state
- over-allocation and under-allocation should remain reviewable before save
- preview failure must remain distinguishable from save failure
- participant removal failure must not corrupt confirmed allocation state

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Revenue Split Editor Common
- Project Member Authority Matrix Common
- Multi-Currency Monetary Core
- Audit Reconstruction Bundle Common

relationship_notes:
- Revenue Split Editor Common may sit above or beside this component as a more domain-facing editing surface
- Project Member Authority Matrix Common may provide stable participant-role references and authority scope for editing allocation
- Multi-Currency Monetary Core provides shared monetary rules that allocation logic should reference rather than redefine
- Audit Reconstruction Bundle Common may preserve allocation change traceability outside the allocation-rule core

---

## 13. Promotion Caution

promotion_caution:
- do not merge allocation-rule editing with settlement execution
- do not merge allocation-rule editing with tax or accounting logic
- do not hard-code StreamStudio-specific revenue sharing wording
- do not embed collaborator negotiation policy inside the common contract
- do not assume one fixed payout backend implementation

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Revenue Split Editor Common
  - Project Member Authority Matrix Common
  - Multi-Currency Monetary Core
  - Audit Reconstruction Bundle Common

---

## 15. Final Note

This design defines Fixed Fee and Percentage Allocation Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
