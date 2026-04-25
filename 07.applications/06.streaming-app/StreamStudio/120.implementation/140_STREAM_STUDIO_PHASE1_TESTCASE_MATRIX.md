# ============================================================
# STREAM STUDIO PHASE 1 TESTCASE MATRIX
# ============================================================

status: starter-map
layer: implementation-test-map
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete testcase matrix for Phase 1.

backend_contract_tests:
- create_project_success
- create_project_missing_title_validation
- list_projects_scope_filter_success
- get_project_detail_success
- update_project_version_conflict
- create_upload_session_success
- complete_upload_success_processing_state
- get_upload_status_success
- retry_upload_non_retryable_failure
- create_video_draft_success
- update_metadata_success
- update_metadata_expected_version_required
- assign_thumbnail_success
- add_subtitle_track_success
- add_subtitle_track_uploaded_missing_file_asset_ref_validation
- upsert_edit_marker_success
- upsert_edit_marker_invalid_range_validation
- save_publish_setting_success
- validate_publish_readiness_rights_block
- validate_publish_readiness_approval_block
- create_publish_request_success
- schedule_publish_future_required
- list_publish_history_success

permission_tests:
- project_view_denied
- asset_upload_denied
- publish_denied
- schedule_publish_denied

audit_tests:
- PROJECT_CREATED_emitted
- PROJECT_UPDATED_emitted
- UPLOAD_SESSION_CREATED_emitted
- UPLOAD_COMPLETED_emitted
- VIDEO_DRAFT_CREATED_emitted
- DRAFT_METADATA_UPDATED_emitted
- THUMBNAIL_ASSIGNED_emitted
- SUBTITLE_TRACK_ADDED_emitted
- EDIT_MARKER_UPSERTED_emitted
- PUBLISH_SETTING_SAVED_emitted
- PUBLISH_READINESS_VALIDATED_emitted
- PUBLISH_REQUEST_CREATED_emitted
- PUBLISH_SCHEDULED_emitted

runtime_tests:
- scheduled_publish_job_created
- retryable_runtime_job_moves_to_retry_wait
- terminal_runtime_job_moves_to_dead_letter_optional_if_table_enabled

ui_render_tests:
- home_dashboard_loading_to_ready
- upload_queue_state_rows_render
- project_detail_metadata_tab_render
- subtitle_panel_render
- publish_settings_blocker_banner_render
- publish_confirmation_sheet_render
- schedule_confirmation_sheet_render

mobile_tests:
- quick_metadata_edit_success
- quick_publish_confirm_respects_permission
- offline_publish_execution_blocked

minimum_phase_1_exit_testset:
- create_project_success
- create_upload_session_success
- create_video_draft_success
- update_metadata_success
- assign_thumbnail_success
- add_subtitle_track_success
- save_publish_setting_success
- validate_publish_readiness_approval_block
- create_publish_request_success
- schedule_publish_future_required
- PROJECT_CREATED_emitted
- PUBLISH_SCHEDULED_emitted
- scheduled_publish_job_created

done_statement:
Phase 1 verification is complete when the minimum exit testset passes
and blocker types remain distinct in response and UI surfaces.
