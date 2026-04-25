# ============================================================
# AUDIT RECONSTRUCTION BUNDLE COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Audit Reconstruction Bundle Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Audit Reconstruction Bundle Common.

The purpose of this common component is to provide
a reusable reconstruction bundle contract
for rebuilding what happened across edits, approvals,
connector actions, retries, and asset-related state changes.

This component should not remain permanently StreamStudio-local
because reconstruction-grade audit traceability
is reusable across governance-heavy applications.

---

## 2. Canonical Responsibility

Audit Reconstruction Bundle Common is responsible for:

- audit reconstruction bundle structure
- event sequence packaging
- actor / action / timestamp bundling
- related artifact reference bundling
- before / after reference exposure where available
- reconstruction summary exposure
- consumer-facing trace package normalization

It is not responsible for:

- permanent audit ledger engine implementation
- low-level log ingestion implementation
- app-specific approval logic
- app-specific settlement logic
- analytics warehouse implementation
- security incident engine implementation

---

## 3. Reuse Scope

reuse_scope:
- governance-heavy applications
- review-driven applications
- approval-capable applications
- connector-driven applications
- asset and artifact traceability systems

likely_future_consumers:
- StreamStudio
- creator governance tools
- moderation/review apps
- outbound connector apps
- future audit-heavy business surfaces

---

## 4. Core Responsibilities

- define reconstruction bundle identity
- group related audit events into one reconstruction package
- expose actor/action/timestamp sequence
- expose related target record references
- expose related artifact references
- expose before/after references where available
- expose reconstruction completeness summary
- normalize reconstruction package for consumer apps

---

## 5. Required Input Contract

required_inputs:
- reconstruction_context_id
- reconstruction_profile
- related_record_references
- event_sequence
- actor_references
- artifact_references_or_null
- before_after_references_or_null
- completeness_result
- permission_context

input_notes:
- event_sequence must remain ordered
- completeness_result should remain explicit
- artifact references should remain reference-safe, not raw engine-bound blobs
- reconstruction_profile determines which trace families are in scope

---

## 6. Output / Event Contract

emitted_events:
- reconstruction_bundle_opened
- reconstruction_bundle_requested
- reconstruction_bundle_generated
- reconstruction_bundle_generation_failed
- reconstruction_event_selected
- reconstruction_artifact_open_requested
- reconstruction_completeness_view_requested
- reconstruction_bundle_closed

---

## 7. State Model

normalized_state_model:
- reconstruction_not_started
- reconstruction_requested
- reconstruction_generating
- reconstruction_generated
- reconstruction_generation_failed
- reconstruction_partial
- reconstruction_complete
- reconstruction_closed

state_model_notes:
- reconstruction_generated is distinct from reconstruction_complete
- reconstruction_partial must remain explicit
- generation failure must remain distinct from completeness failure

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view reconstruction-grade trace data
- artifact visibility must already be validated externally
- reconstruction visibility is not equivalent to edit permission
- reconstruction visibility is not equivalent to connector execution permission

---

## 9. UI / Behavior Boundary

allowed_common_surface_behavior:
- reconstruction summary strip
- event sequence summary
- completeness summary
- related artifact summary
- before/after reference summary
- reconstruction request entry

must_not_be_baked_in:
- StreamStudio-specific wording
- one fixed audit storage backend
- raw log engine assumptions
- app-specific governance copy

---

## 10. Relationship to Other Common Candidates

related_common_candidates:
- Approval Flow Common
- Retry and Dead-Letter Visibility Common
- External Push Connector Common
- Upload Intake Common
- Revenue Split Editor Common

relationship_notes:
- Approval Flow Common contributes approval-state trace
- Retry and Dead-Letter Visibility Common contributes operational failure/recovery trace
- External Push Connector Common contributes outbound connector trace
- Upload Intake Common contributes intake/upload-state trace
- Revenue Split Editor Common may contribute monetization edit trace

---

## 11. Promotion Caution

promotion_caution:
- do not merge reconstruction bundle with raw audit engine ownership
- do not assume all apps can provide full before/after detail
- do not overfit the contract to StreamStudio moderation or publish wording
- do not collapse partial and complete reconstruction states

---

## 12. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Approval Flow Common
  - Retry and Dead-Letter Visibility Common
  - External Push Connector Common
  - Upload Intake Common

---

## 13. Final Note

This design defines Audit Reconstruction Bundle Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
