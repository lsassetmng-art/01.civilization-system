# ============================================================
# STREAM STUDIO UPLOAD QUEUE EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: upload_queue
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Upload Queue.

screen_goal:
Give creators clear ingest visibility, resumable progress,
and explicit failure recovery.

queue_sections:
- queued
- uploading
- processing
- completed
- failed
- cancelled

row_fields:
- thumbnail_preview
- source_file_name
- target_project
- file_size
- progress_percent
- ingest_status
- latest_error_summary
- created_at
- updated_at

row_actions_by_state:
  queued:
    - start_now_if_allowed
    - cancel
  uploading:
    - pause_if_supported
    - resume_if_supported
    - cancel
  processing:
    - view_processing_detail
  completed:
    - open_project
    - create_draft_from_upload_if_needed
  failed:
    - retry
    - inspect_failure
    - remove_from_visible_queue_if_policy_allows
  cancelled:
    - retry_as_new_upload
    - remove_from_visible_queue_if_policy_allows

filters:
- all
- my_uploads
- active_only
- failed_only
- target_project
- date_range

sort_options:
- newest_first
- oldest_first
- largest_first
- failure_first

detail_panel:
  shows:
    - resumable_session_ref
    - current_stage
    - failure_reason_code
    - network_hint
    - retryability_flag
    - mapped_project_ref

state_transitions:
- queued -> uploading
- uploading -> processing
- processing -> completed
- uploading -> failed
- processing -> failed
- uploading -> cancelled
- failed -> uploading_on_retry
- cancelled -> queued_on_retry_as_new

mobile_policy:
- batch_actions hidden
- only one retry action emphasized
- background upload status visible if OS permits

error_codes_to_surface:
- network_unavailable
- upload_session_expired
- file_format_rejected
- ingest_processing_failed
- permission_denied
