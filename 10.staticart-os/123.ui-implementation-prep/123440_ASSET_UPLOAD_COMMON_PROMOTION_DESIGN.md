# ============================================================
# ASSET UPLOAD COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Asset Upload Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Asset Upload Common
as a reusable upload-first feature family
for asset-centric and creator-facing applications.

canonical_responsibility:
- start upload intake from selected source assets
- expose upload session identity
- support file attachment orchestration entry
- expose upload progress and upload result summary
- expose pre-processing pending state
- normalize upload-state behavior for consumer apps

not_responsible_for:
- storage engine ownership
- transcoding or media processing engine ownership
- metadata editing ownership
- StaticArtOS-specific publish readiness logic
- exact queue/runtime engine ownership

reuse_scope:
- creator applications
- asset-management applications
- publishing applications
- media/document upload-first applications

required_inputs:
- upload_context_id
- target_draft_id_or_null
- source_asset_list
- allowed_asset_types
- upload_policy_profile
- resumable_support_flag
- permission_context

emitted_events:
- upload_session_created
- upload_started
- upload_progressed
- upload_paused
- upload_resumed
- upload_completed
- upload_failed
- upload_cancelled
- preprocessing_pending
- preprocessing_failed

state_model:
- upload_not_started
- upload_session_created
- upload_in_progress
- upload_paused
- upload_completed
- upload_failed
- preprocessing_pending
- preprocessing_failed
- upload_cancelled

ui_boundary:
- intake start action
- upload status summary
- progress summary
- retry/cancel hooks
- preprocessing pending visibility

promotion_caution:
- do not merge with lower-level response/error helpers
- do not absorb metadata editing
- do not bind to one storage or processing backend
- do not hard-code StaticArtOS-only wording

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
