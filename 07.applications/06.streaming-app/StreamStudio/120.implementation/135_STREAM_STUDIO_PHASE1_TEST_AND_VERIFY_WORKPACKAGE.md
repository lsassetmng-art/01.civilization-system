# ============================================================
# STREAM STUDIO PHASE 1 TEST AND VERIFY WORKPACKAGE
# ============================================================

status: workpackage
layer: implementation-test
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum test and verification work for Phase 1.

minimum_backend_tests:
- create_project_success
- create_project_validation_failure
- upload_session_create_success
- upload_status_read_success
- upload_retry_non_retryable_failure
- create_video_draft_success
- metadata_update_version_conflict
- thumbnail_assignment_success
- subtitle_add_success
- edit_marker_validation_failure
- publish_setting_save_success
- publish_readiness_blocked_by_rights
- publish_readiness_blocked_by_approval
- publish_request_create_success
- schedule_publish_future_datetime_required

minimum_ui_tests:
- home_dashboard_summary_load
- upload_queue_state_render
- project_detail_metadata_edit
- publish_settings_blocker_render
- schedule_publish_confirmation_flow
- publish_now_confirmation_flow

minimum_permission_tests:
- project_view_denied
- asset_upload_denied
- publish_denied

minimum_audit_tests:
- audit_event_emitted_for_project_create
- audit_event_emitted_for_metadata_update
- audit_event_emitted_for_publish_request_create
- audit_event_emitted_for_publish_schedule

minimum_runtime_tests:
- scheduled_publish_job_registered
- runtime_job_retry_wait_set_when_retryable
- dead_letter_entry_created_when_terminal

verify_outputs:
- api_response_snapshot_set
- ui_state_capture_summary
- audit_event_capture_summary
- runtime_job_state_capture_summary

done_definition:
- all minimum tests pass
- no blocker is collapsed into generic unknown error
- phase 1 verify report is generated and archived
