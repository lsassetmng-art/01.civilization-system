# ============================================================
# METADATA EDITING COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Metadata Editing Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Metadata Editing Common.

The purpose of this common component is to provide
a reusable metadata-editing contract and editor behavior surface
for creator-side, publishing, marketplace, and asset-management applications.

This component should not remain permanently StreamStudio-local
because metadata editing is a repeated structure
across multiple applications that manage publishable assets.

---

## 2. Canonical Responsibility

Metadata Editing Common is responsible for:

- normalized metadata field editing
- multilingual label and description block editing
- tag and category assignment entry
- draft-safe metadata save behavior
- metadata validation surface exposure
- metadata change-state normalization

It is not responsible for:

- app-specific publishing approval
- app-specific rights-policy decisions
- app-specific pricing or commerce rules
- app-specific recommendation logic
- storage engine implementation
- search indexing implementation

---

## 3. Reuse Scope

reuse_scope:
- creator-side applications
- publishing applications
- asset-management applications
- marketplace-connected applications
- archive-oriented applications

likely_future_consumers:
- StreamStudio
- StaticArtOS asset editing flows
- creator upload tools
- marketplace listing preparation apps
- archive curation tools

---

## 4. Core Responsibilities

- edit title, subtitle, and description fields
- edit multilingual metadata blocks where enabled
- assign categories and tags
- preserve draft-safe unsaved-change awareness
- expose validation state and missing-required-field state
- normalize metadata patch events for app consumers
- support partial metadata editing before publish readiness
- support reusable field grouping without binding to StreamStudio-only layout

---

## 5. Required Input Contract

required_inputs:
- target_record_id_or_draft_id
- metadata_schema_profile
- current_metadata_payload
- supported_languages
- fallback_language
- editable_field_set
- category_source
- tag_source
- validation_policy_profile
- permission_context

input_notes:
- metadata_schema_profile defines what field groups exist
- editable_field_set allows app-specific suppression without rewriting the common contract
- supported_languages and fallback_language should be explicit
- category_source and tag_source are input references, not hard-coded catalog assumptions

---

## 6. Output / Event Contract

emitted_events:
- metadata_edit_started
- metadata_field_changed
- metadata_language_block_changed
- category_assignment_changed
- tag_assignment_changed
- metadata_validation_failed
- metadata_validation_passed
- metadata_save_requested
- metadata_saved
- metadata_save_failed
- unsaved_change_detected
- metadata_edit_cancelled

output_notes:
- event outputs should be normalized for app-local orchestration
- save_requested and saved are distinct
- validation events must remain explicit and not inferred only from save failure

---

## 7. State Model

normalized_state_model:
- metadata_pristine
- metadata_editing
- metadata_dirty
- metadata_validation_failed
- metadata_ready_to_save
- metadata_saving
- metadata_saved
- metadata_save_failed
- metadata_edit_cancelled

state_model_notes:
- metadata_dirty should not imply validation failure
- metadata_saved should not imply publish-ready
- validation failure and save failure must remain distinct
- multilingual incompleteness may exist without total validation failure depending on policy profile

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to edit metadata for the target record
- metadata edit permission is not equivalent to publish permission
- metadata edit permission is not equivalent to pricing edit permission
- metadata edit permission is not equivalent to rights-policy edit permission

permission_boundary_note:
This component assumes validated edit scope,
but it should not become the global permission engine.

---

## 9. Field Coverage Boundary

minimum_field_groups:
- title
- subtitle
- description
- multilingual label block
- multilingual description block
- category assignment
- tag assignment

optional_field_groups_by_profile:
- creator note
- public summary
- internal summary
- age guidance label
- viewer-facing teaser text

field_boundary_note:
Optional groups may vary by app profile,
but the common contract should remain field-group oriented
instead of StreamStudio-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- grouped metadata editor sections
- multilingual tab or segmented editing
- tag/category selector hooks
- required-field indicators
- validation summary exposure
- unsaved-change visibility

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific publish tab layout
- StreamStudio-only creator instructions
- marketplace-only business logic
- search-index-specific technical fields unless stabilized cross-app

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- unsaved changes must remain visible
- save failure must not destroy current editing buffer
- validation issues should be distinguishable from transport failures
- language-block editing should degrade safely when some locales are unavailable
- category/tag source unavailability should not corrupt current metadata state

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Upload Intake Common
- Publish Settings Common
- Marketplace Listing Editor Common
- Multilingual Localization Core

relationship_notes:
- Upload Intake Common handles intake boundary before metadata editing
- Publish Settings Common handles visibility/readiness after metadata editing
- Marketplace Listing Editor Common handles commerce-facing listing structure beyond general metadata editing
- Multilingual Localization Core remains a broader shared foundation that this component references rather than redefines

---

## 13. Promotion Caution

promotion_caution:
- do not merge metadata editing with rights-policy editing
- do not merge metadata editing with pricing logic
- do not overfit the contract to video-only metadata fields
- do not hard-code one tag/category backend structure
- do not turn multilingual support into StreamStudio-specific tab wording

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Publish Settings Common
  - Marketplace Listing Editor Common
  - Multilingual Localization Core

---

## 15. Final Note

This design defines Metadata Editing Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
