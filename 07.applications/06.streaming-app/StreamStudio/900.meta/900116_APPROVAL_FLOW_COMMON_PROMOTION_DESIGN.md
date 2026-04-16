# ============================================================
# APPROVAL FLOW COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Approval Flow Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Approval Flow Common.

The purpose of this common component is to provide
a reusable approval-flow contract and state-transition surface
for creator-side, business, governance, and review-driven applications.

This component should not remain permanently StreamStudio-local
because approval trails, review routing, and explicit decision states
are structurally reusable across multiple applications.

---

## 2. Canonical Responsibility

Approval Flow Common is responsible for:

- approval-step state normalization
- reviewer / approver stage progression
- decision action exposure
- decision trail visibility
- rework / reject / approve transition modeling
- approval-readiness contract exposure to app consumers

It is not responsible for:

- app-specific business judgment logic
- app-specific publish policy logic
- payment execution
- rights enforcement engine logic
- app-specific wording and route naming
- permanent audit storage implementation

---

## 3. Reuse Scope

reuse_scope:
- creator-side applications
- business workflow applications
- governance-heavy applications
- moderation / review-driven applications
- approval-capable asset and publishing applications

likely_future_consumers:
- StreamStudio
- creator publishing tools
- governance and moderation apps
- review-based business apps
- future submission / approval applications

---

## 4. Core Responsibilities

- represent multi-step approval progression
- represent current approval stage
- expose approve / reject / rework / hold actions where allowed
- preserve explicit decision history
- expose pending-review state
- expose approval-blocking state
- expose rework-required state
- support app-consumable approval summary surface
- support additive route extension without rewriting the base contract

---

## 5. Required Input Contract

required_inputs:
- target_record_id
- approval_flow_profile
- current_approval_state
- stage_definitions
- current_stage_id
- allowed_actions
- participant_roles
- decision_history
- readiness_result
- permission_context

input_notes:
- approval_flow_profile defines route semantics without embedding app wording
- stage_definitions should remain normalized and stable
- readiness_result may be produced externally and consumed here
- permission_context must be evaluated externally or at entry,
  but not hard-coded to StreamStudio-only assumptions

---

## 6. Output / Event Contract

emitted_events:
- approval_view_opened
- approval_action_requested
- approval_approved
- approval_rejected
- approval_rework_requested
- approval_held
- approval_stage_advanced
- approval_history_view_requested
- approval_readiness_block_detected
- approval_action_denied
- approval_flow_closed

output_notes:
- action_requested and final action result must remain separate
- denied events must remain explicit
- approval history access should be event-visible for app consumers
- readiness block should not be inferred only from missing approve action

---

## 7. State Model

normalized_state_model:
- approval_not_started
- approval_pending
- approval_in_review
- approval_rework_required
- approval_on_hold
- approval_approved
- approval_rejected
- approval_blocked
- approval_closed

state_model_notes:
- approval_blocked is distinct from approval_rejected
- approval_rework_required is distinct from approval_pending
- approval_closed may follow approved or rejected depending on app handling
- approval_not_started should remain explicit where initiation is controlled

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view approval state
- caller must already be allowed to trigger approval actions where applicable
- approval action permission is not equivalent to publish permission
- approval action permission is not equivalent to metadata edit permission
- approval action permission is not equivalent to pricing edit permission

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical permission engine.

---

## 9. Approval Route Boundary

minimum_route_concepts:
- stage_id
- stage_order
- stage_role
- decision_required_flag
- rework_allowed_flag
- rejection_allowed_flag
- hold_allowed_flag

optional_route_concepts_by_profile:
- parallel approval group
- escalation stage
- reviewer-only comment stage
- final publisher acknowledgment stage

route_boundary_note:
Optional route concepts may vary by app profile,
but the common contract should remain stage-oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- approval summary strip
- current-stage summary
- decision action area
- decision history summary
- readiness-block message surface
- rework-required visibility
- hold-state visibility

must_not_be_baked_in:
- StreamStudio-specific publish tab layout
- StreamStudio-specific wording
- app-specific legal or financial judgment text
- app-specific moderation penalties
- app-specific creator guidance copy

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- denied actions must remain visible and explicit
- failed approval actions must not corrupt current approval state
- decision history must remain recoverable after failed transport actions
- rework-required state should survive navigation reload
- blocked readiness should remain distinguishable from permission denial

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Publish Settings Common
- Revision Request Common
- Timeline Review Comment Common
- Audit Reconstruction Bundle Common

relationship_notes:
- Publish Settings Common handles publish readiness and visibility after approval state is evaluated
- Revision Request Common may remain a subordinate or related workflow family under broader approval behavior
- Timeline Review Comment Common may remain a related comment/review surface rather than the approval state core
- Audit Reconstruction Bundle Common handles broader audit artifact recovery beyond approval-state flow

---

## 13. Promotion Caution

promotion_caution:
- do not merge approval flow with publish settings
- do not merge approval flow with comment-thread behavior
- do not hard-code StreamStudio stage names
- do not bind to one backend workflow engine too early
- do not embed business-specific judgment logic in the common contract

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Publish Settings Common
  - Revision Request Common
  - Timeline Review Comment Common
  - Audit Reconstruction Bundle Common

---

## 15. Final Note

This design defines Approval Flow Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
