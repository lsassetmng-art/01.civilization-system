# ============================================================
# SPEED EXPERIENCE API EXACT CONTRACT
# ============================================================

status: canonical-draft
layer: integration
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines exact API direction for speed-experience features.

api_operations:

- operation_id: quick_start_generate
  method: POST
  path: /api/app-development-studio/v1/quick-start/generate
  request_fields:
    - request_text
    - target_type
    - output_scope
    - speed_mode
  response_fields:
    - run_id
    - state
    - draft_summary
    - generated_artifact_list

- operation_id: live_preview_resolve
  method: POST
  path: /api/app-development-studio/v1/live-preview/resolve
  request_fields:
    - source_context
    - preview_scope
  response_fields:
    - preview_state
    - api_preview
    - ui_preview
    - ddl_preview
    - structure_preview

- operation_id: starter_pack_generate
  method: POST
  path: /api/app-development-studio/v1/starter-pack/generate
  request_fields:
    - starter_pack_type
    - included_artifacts
  response_fields:
    - starter_pack_id
    - state
    - artifact_manifest

- operation_id: diff_review_resolve
  method: POST
  path: /api/app-development-studio/v1/diff/review
  request_fields:
    - before_snapshot_id
    - after_snapshot_id
  response_fields:
    - diff_state
    - highlighted_diff

- operation_id: diff_revert_execute
  method: POST
  path: /api/app-development-studio/v1/diff/revert
  request_fields:
    - target_snapshot_id
    - revert_reason
  response_fields:
    - revert_state
    - reverted_snapshot_id

- operation_id: promote_to_governed
  method: POST
  path: /api/app-development-studio/v1/fast-mode/promote
  request_fields:
    - fast_run_id
    - promote_reason
  response_fields:
    - governed_run_id
    - state
