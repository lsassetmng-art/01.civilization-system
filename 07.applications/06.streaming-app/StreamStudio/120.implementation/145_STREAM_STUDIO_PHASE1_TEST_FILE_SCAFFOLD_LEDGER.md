# ============================================================
# STREAM STUDIO PHASE 1 TEST FILE SCAFFOLD LEDGER
# ============================================================

status: starter-ledger
layer: implementation-fileset
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the logical test file scaffold for Phase 1.

recommended_test_root:
- tests/stream_studio/

backend_test_files:
- tests/stream_studio/backend/project/create_project_test
- tests/stream_studio/backend/project/update_project_test
- tests/stream_studio/backend/upload/create_upload_session_test
- tests/stream_studio/backend/upload/complete_upload_test
- tests/stream_studio/backend/upload/retry_upload_test
- tests/stream_studio/backend/draft/create_video_draft_test
- tests/stream_studio/backend/draft/update_metadata_test
- tests/stream_studio/backend/draft/assign_thumbnail_test
- tests/stream_studio/backend/draft/add_subtitle_track_test
- tests/stream_studio/backend/draft/upsert_edit_marker_test
- tests/stream_studio/backend/publish/upsert_publish_setting_test
- tests/stream_studio/backend/publish/validate_publish_readiness_test
- tests/stream_studio/backend/publish/create_publish_request_test
- tests/stream_studio/backend/publish/schedule_publish_test

permission_test_files:
- tests/stream_studio/permission/project_view_denied_test
- tests/stream_studio/permission/asset_upload_denied_test
- tests/stream_studio/permission/publish_denied_test
- tests/stream_studio/permission/schedule_publish_denied_test

audit_test_files:
- tests/stream_studio/audit/project_audit_event_test
- tests/stream_studio/audit/upload_audit_event_test
- tests/stream_studio/audit/draft_audit_event_test
- tests/stream_studio/audit/publish_audit_event_test

runtime_test_files:
- tests/stream_studio/runtime/scheduled_publish_job_registration_test
- tests/stream_studio/runtime/retry_wait_transition_test
- tests/stream_studio/runtime/dead_letter_transition_test

ui_test_files:
- tests/stream_studio/ui/home_dashboard_render_test
- tests/stream_studio/ui/upload_queue_render_test
- tests/stream_studio/ui/project_detail_metadata_tab_test
- tests/stream_studio/ui/subtitle_panel_render_test
- tests/stream_studio/ui/publish_settings_blocker_render_test
- tests/stream_studio/ui/publish_confirmation_sheet_test
- tests/stream_studio/ui/schedule_confirmation_sheet_test

mobile_test_files:
- tests/stream_studio/mobile/quick_metadata_edit_test
- tests/stream_studio/mobile/quick_publish_confirm_test
- tests/stream_studio/mobile/offline_publish_block_test

fixed_statement:
The logical test files above are frozen as the Phase 1 starter scaffold.
Physical test framework syntax may vary,
but the scenario split should remain stable.
