# ============================================================
# STREAM STUDIO PHASE 1 UI COMPONENT IMPLEMENTATION MAP
# ============================================================

status: starter-map
layer: implementation-ui-map
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Maps Phase 1 screens to concrete UI areas, API calls,
state families, and confirmation requirements.

# ============================================================
# 1. HOME DASHBOARD
# ============================================================

screen: home_dashboard

required_components:
- home_page_shell
- workspace_header
- quick_create_bar
- summary_card_grid
- upload_queue_widget
- review_summary_widget
- scheduled_publish_widget
- failed_action_widget
- recent_activity_widget

required_api_reads:
- GET /api/stream-studio/projects
- GET /api/stream-studio/publish-history

state_families:
- loading_summary
- ready_summary
- empty_summary
- failed_summary_load

actions:
- new_project
- new_upload
- open_project_list_filtered
- open_upload_queue
- open_publish_filtered

# ============================================================
# 2. PROJECT DETAIL
# ============================================================

screen: project_detail

required_components:
- project_detail_shell
- project_header
- project_tab_bar
- assets_tab_panel
- metadata_form
- subtitle_panel
- publish_summary_panel
- blocker_banner_stack

required_tabs_phase_1:
- overview
- assets
- metadata
- subtitle
- publish

required_api_reads:
- GET /api/stream-studio/projects/{creator_project_id}
- GET /api/stream-studio/uploads/{creator_upload_job_id}_optional
- GET /api/stream-studio/publish-history

required_api_mutations:
- PATCH /api/stream-studio/projects/{creator_project_id}
- POST /api/stream-studio/video-drafts
- PATCH /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata
- PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/thumbnail
- POST /api/stream-studio/video-drafts/{creator_video_draft_id}/subtitle-tracks
- PUT /api/stream-studio/video-drafts/{creator_video_draft_id}/edit-markers/{client_marker_key}

state_families:
- loading
- ready
- blocked
- action_pending
- action_succeeded
- action_failed
- stale

# ============================================================
# 3. UPLOAD QUEUE
# ============================================================

screen: upload_queue

required_components:
- upload_queue_shell
- queue_filter_bar
- queue_state_tabs
- upload_row_card
- upload_detail_panel
- retry_action_bar

required_api_reads:
- GET /api/stream-studio/uploads/{creator_upload_job_id}
- GET /api/stream-studio/projects

required_api_mutations:
- POST /api/stream-studio/uploads/sessions
- POST /api/stream-studio/uploads/{creator_upload_job_id}/complete
- POST /api/stream-studio/uploads/{creator_upload_job_id}/retry

state_families:
- queued
- uploading
- processing
- completed
- failed
- cancelled

# ============================================================
# 4. PUBLISH SETTINGS
# ============================================================

screen: publish_settings

required_components:
- publish_settings_shell
- visibility_selector
- schedule_selector
- destination_panel
- readiness_check_panel
- publish_action_bar
- publish_history_panel
- blocker_banner_stack
- confirmation_sheet_publish_now
- confirmation_sheet_schedule_publish

required_api_reads:
- GET /api/stream-studio/publish-history

required_api_mutations:
- PUT /api/stream-studio/publish-settings/{publish_ref}
- POST /api/stream-studio/publish-settings/{publish_ref}/validate
- POST /api/stream-studio/publish-requests
- POST /api/stream-studio/publish-requests/schedule

state_families:
- draft_publish_setting
- readiness_checked
- approval_blocked
- rights_blocked
- publish_ready
- scheduled
- published
- failed

confirmation_required:
- publish_now
- schedule_publish

# ============================================================
# 5. NOTIFICATION AND MOBILE QUICK ACTIONS
# ============================================================

screen: notification_and_mobile

required_components:
- notification_inbox
- notification_row
- mobile_quick_action_sheet
- quick_metadata_edit_sheet
- quick_publish_confirm_sheet

required_api_reads:
- GET /api/stream-studio/projects
- GET /api/stream-studio/publish-history

required_api_mutations_phase_1:
- PATCH /api/stream-studio/video-drafts/{creator_video_draft_id}/metadata
- POST /api/stream-studio/publish-requests

state_families:
- loading
- ready
- empty
- failed
- action_pending
- action_succeeded
- action_failed

# ============================================================
# 6. UI COPY GROUPS FOR PHASE 1
# ============================================================

required_copy_groups:
- common.*
- streamstudio.home.*
- streamstudio.project.*
- streamstudio.upload_queue.*
- streamstudio.publish.*
- streamstudio.notification.*
- streamstudio.mobile.quick_action.*

# ============================================================
# 7. PHASE 1 UI DONE STATEMENT
# ============================================================

done_statement:
Phase 1 UI is complete when required components render frozen states,
call exact contracts, show blockers distinctly, and enforce confirmation
for irreversible publish actions.
