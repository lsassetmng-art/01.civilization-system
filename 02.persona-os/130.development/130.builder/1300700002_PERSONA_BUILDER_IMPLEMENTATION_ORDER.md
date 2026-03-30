# ============================================================
# PERSONA BUILDER IMPLEMENTATION ORDER
# ============================================================

status: canonical
scope: persona.builder.implementation.order
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the recommended implementation order
for Persona Builder.


# ORDER

## Phase 1. Draft Foundation
- persona_builder_draft
- persona_builder_section_state
- persona_builder_change_set
- persona_builder_audit_record
- draft create/load/save APIs

## Phase 2. Validation Foundation
- persona_builder_validation_result
- validation issue structure
- validation orchestration API
- validation rerun flow

## Phase 3. Approval Foundation
- persona_builder_approval_request
- reviewer assignment
- decision persistence
- rework flow

## Phase 4. Visual Binding Foundation
- persona_builder_asset_binding
- persona_builder_visual_manifest_candidate
- visual candidate validation linkage

## Phase 5. Publish Preparation Foundation
- persona_builder_publish_candidate
- dependency summary
- public surface summary
- publish handoff preparation

## Phase 6. Interface Surface
- draft workspace
- section editor
- validation view
- approval view
- publish preparation view
- audit view

## Phase 7. Integration Hardening
- external-rights handoff alignment
- package / distribution handoff
- marketplace preparation alignment
- invalidation and expiry hardening


# RULE

Earlier phases must stabilize
before downstream release-facing phases advance.

Approval and publish work must not begin
before draft and validation foundations exist.


# FINAL DEFINITION

Persona Builder must be implemented
from draft foundation upward,
with governance gates introduced
before release-facing convenience features.
