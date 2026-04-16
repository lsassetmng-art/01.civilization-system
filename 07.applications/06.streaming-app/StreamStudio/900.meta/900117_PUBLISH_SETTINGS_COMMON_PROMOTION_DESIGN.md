# ============================================================
# PUBLISH SETTINGS COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Publish Settings Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Publish Settings Common.

The purpose of this common component is to provide
a reusable publish-settings contract and settings surface
for applications that expose visibility, readiness, timing,
and release control behavior.

This component should not remain permanently StreamStudio-local
because publish-capable applications repeatedly need
the same structural settings family.

---

## 2. Canonical Responsibility

Publish Settings Common is responsible for:

- publish visibility setting structure
- publish timing and scheduling structure
- readiness-state exposure
- release control action surface
- publication precondition visibility
- publish-state normalization for app consumers

It is not responsible for:

- app-specific approval decision logic
- app-specific pricing logic
- app-specific rights-enforcement engine logic
- app-specific recommendation placement
- outbound push connector execution
- backend scheduler implementation

---

## 3. Reuse Scope

reuse_scope:
- creator-side applications
- publishing applications
- release-capable applications
- marketplace-connected applications
- asset and content management applications

likely_future_consumers:
- StreamStudio
- StaticArtOS publishing flows
- creator release tools
- marketplace-connected content apps
- archive release surfaces

---

## 4. Core Responsibilities

- define publish visibility mode
- define publish scheduling mode
- expose publish-ready and publish-blocked state
- expose release action entry points
- expose scheduled release summary
- expose unpublished / draft / scheduled / published normalization
- allow reusable precondition summaries
- support additive settings groups without rewriting the base contract

---

## 5. Required Input Contract

required_inputs:
- target_record_id
- publish_profile
- current_publish_state
- visibility_mode
- schedule_window_or_null
- readiness_result
- publish_blockers
- allowed_publish_actions
- permission_context
- timezone_context

input_notes:
- publish_profile defines which publish controls are relevant
- readiness_result may be computed externally and consumed here
- publish_blockers must remain explicit and structured
- timezone_context is required for scheduled behavior clarity

---

## 6. Output / Event Contract

emitted_events:
- publish_settings_opened
- visibility_mode_changed
- schedule_window_changed
- publish_requested
- scheduled_publish_requested
- unpublish_requested
- publish_state_changed
- publish_block_detected
- publish_action_denied
- publish_settings_closed

output_notes:
- publish_requested and publish_state_changed must remain separate
- denied actions must remain explicit
- scheduled publish requests should remain distinct from immediate publish requests
- blocker visibility should not be inferred only from missing publish action

---

## 7. State Model

normalized_state_model:
- publish_draft
- publish_unpublished
- publish_ready
- publish_blocked
- publish_scheduled
- publish_published
- publish_unpublished_after_release
- publish_action_failed

state_model_notes:
- publish_ready is distinct from publish_published
- publish_blocked is distinct from action_denied
- publish_scheduled is distinct from publish_ready
- publish_action_failed should not overwrite the last confirmed publish state

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view publish settings
- caller must already be allowed to trigger publish actions where applicable
- publish permission is not equivalent to approval permission
- publish permission is not equivalent to metadata edit permission
- publish permission is not equivalent to pricing edit permission

permission_boundary_note:
This component assumes validated publish-related permission context,
but it should not become the canonical global permission engine.

---

## 9. Publish Control Boundary

minimum_publish_concepts:
- visibility_mode
- publish_state
- readiness_result
- publish_blockers
- immediate_publish_allowed_flag
- scheduled_publish_allowed_flag
- unpublish_allowed_flag

optional_publish_concepts_by_profile:
- embargo release
- region-limited release
- staged rollout marker
- soft-launch marker
- release note summary

publish_boundary_note:
Optional publish concepts may vary by app profile,
but the common contract should remain publish-setting oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- publish summary strip
- current state summary
- visibility selector
- scheduling selector
- blocker summary
- release action area
- scheduled release summary

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific screen hierarchy
- app-specific creator guidance copy
- app-specific moderation or legal explanation text
- backend scheduler implementation detail

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- publish blocker visibility must remain explicit
- failed publish actions must not destroy confirmed publish settings
- scheduled publish failure must remain distinguishable from immediate publish failure
- timezone-sensitive scheduling should remain explicit and reviewable
- unpublish failure must remain separate from publish failure

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Approval Flow Common
- Marketplace Listing Editor Common
- Scheduled Publish Common
- External Push Connector Common

relationship_notes:
- Approval Flow Common handles approval progression before or alongside publish readiness
- Marketplace Listing Editor Common handles commerce/listing structure beyond general publish settings
- Scheduled Publish Common may remain subordinate to or merge-reviewed under Publish Settings Common
- External Push Connector Common handles outbound external publication after publish action intent is decided

---

## 13. Promotion Caution

promotion_caution:
- do not merge publish settings with approval flow
- do not merge publish settings with external connector execution
- do not hard-code StreamStudio-only publish wording
- do not bind too early to one scheduler implementation
- do not embed app-specific business judgment logic in the common contract

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Marketplace Listing Editor Common
  - Scheduled Publish Common
  - External Push Connector Common
  - Approval Flow Common

---

## 15. Final Note

This design defines Publish Settings Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
