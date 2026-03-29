# ============================================================
# persona_builder_publish_candidate
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent a release-facing candidate
prepared by Builder after approval.


# PRIMARY KEY

- persona_builder_publish_candidate_id


# FIELDS

- persona_builder_publish_candidate_id
- target_persona_ref
- source_draft_id
- approval_request_ref
- candidate_scope
- candidate_status
- candidate_summary
- dependency_summary
- public_surface_summary
- release_dependency_flags
- handoff_target
- created_at
- updated_at


# CANDIDATE SCOPE ENUM

- snapshot
- package
- distribution
- marketplace
- visual_release
- voice_release


# STATUS ENUM

- publish_not_ready
- publish_candidate_prepared
- publish_candidate_invalid
- publish_ready_for_handoff
- handoff_requested
- handoff_completed
- handoff_failed
- archived
