# ============================================================
# UPLOAD INTAKE COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Upload Intake Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Upload Intake Common.

The purpose of this common component is to provide
a reusable upload-intake contract and orchestration surface
for creator-side and asset-centric applications.

This component should not remain permanently StreamStudio-local
because upload-first behavior is expected in multiple asset,
publishing, and creator applications.

---

## 2. Canonical Responsibility

Upload Intake Common is responsible for:

- upload-intake session creation
- file attachment intake start
- draft-linked upload orchestration entry
- resumable-upload-safe intake boundary exposure
- pre-processing status visibility
- upload-state normalization for app consumers

It is not responsible for:

- the final media processing pipeline implementation
- transcoding implementation
- storage engine implementation
- app-specific publish rules
- app-specific metadata editing
- app-specific review or approval logic

---

## 3. Reuse Scope

reuse_scope:
- creator-side applications
- publishing applications
- marketplace-connected creator tools
- asset-management applications
- media or document applications with upload-first behavior

likely_future_consumers:
- StreamStudio
- StaticArtOS upload flows
- creator asset tools
- future archive-oriented upload apps

---

## 4. Core Responsibilities

- start upload intake from user-selected assets
- create or bind an intake session to a draft or target record
- validate allowed source type at intake boundary
- expose upload-state transitions to the consumer application
- expose resumable-safe session identity
- expose failure and retry-eligible state
- expose pre-processing pending state when upload is accepted
- support batch-safe intake initiation where allowed

---

## 5. Required Input Contract

required_inputs:
- intake_context_type
- target_draft_id_or_null
- uploader_identity
- source_asset_list
- allowed_asset_types
- maximum_asset_count
- maximum_asset_size_policy
- resumable_support_flag
- target_processing_profile
- permission_context

input_notes:
- intake_context_type distinguishes the business purpose of the intake
- source_asset_list may include one or many source assets
- target_draft_id_or_null allows intake before full record completion
- permission_context must be evaluated outside or at entry,
  but not hard-coded to StreamStudio-only assumptions

---

## 6. Output / Event Contract

emitted_events:
- intake_session_created
- asset_registered_for_upload
- upload_started
- upload_progressed
- upload_paused
- upload_resumed
- upload_completed
- upload_failed
- retry_requested
- intake_cancelled
- preprocessing_pending
- preprocessing_failed

output_notes:
- the component should expose event-friendly contract output
- consumer apps may bind these to app-local UI or workflow handling
- preprocessing events are contract-level only,
  not implementation-binding to a specific backend processor

---

## 7. State Model

normalized_state_model:
- draft_unbound
- intake_created
- upload_pending
- upload_in_progress
- upload_paused
- upload_completed
- upload_failed
- preprocessing_pending
- preprocessing_failed
- intake_cancelled

state_model_notes:
- upload_completed does not imply publish-ready
- preprocessing_pending is distinct from upload completion
- upload_failed and preprocessing_failed must remain separate
- intake_cancelled should be explicit and not inferred only from missing progress

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to start upload intake
- caller must already be allowed to bind assets to the target draft or record
- upload-intake permission is not equivalent to publish permission
- upload-intake permission is not equivalent to review approval permission

permission_boundary_note:
This component should assume validated permission context,
but should not become the canonical global permission engine.

---

## 9. UI / Behavior Boundary

allowed_common_surface_behavior:
- intake start action
- upload status surface
- retry surface
- pause/resume hooks
- preprocessing pending visibility
- minimal batch-intake visibility

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific screen hierarchy
- StreamStudio-specific review flow
- StreamStudio-specific publish CTA logic
- backend-storage-specific implementation details

---

## 10. Failure / Recovery Design Notes

failure_and_recovery_notes:
- network failure should not destroy intake identity
- resumable-safe session identity should remain stable where supported
- retry_requested must remain explicit
- dead-letter or abandoned-upload visibility may be layered later,
  but should not be over-coupled into intake core
- failed upload and failed preprocessing must remain distinct

---

## 11. Relationship to Other Common Candidates

related_common_candidates:
- Metadata Editing Common
- Retry and Dead-Letter Visibility Common
- External Push Connector Common

relationship_notes:
- Upload Intake Common handles intake boundary and upload-state normalization
- Metadata Editing Common handles post-intake metadata editing
- Retry and Dead-Letter Visibility Common handles broader async failure visibility
- External Push Connector Common handles outbound external publication,
  not initial asset intake

---

## 12. Promotion Caution

promotion_caution:
- do not bind this component to a single storage implementation
- do not bind this component to a single media-processing backend
- do not merge upload intake with metadata editing
- do not merge upload intake with publish workflow
- do not overfit the contract to StreamStudio video-only assumptions

---

## 13. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Resumable Upload Queue Common
  - Metadata Editing Common

---

## 14. Final Note

This design defines Upload Intake Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
