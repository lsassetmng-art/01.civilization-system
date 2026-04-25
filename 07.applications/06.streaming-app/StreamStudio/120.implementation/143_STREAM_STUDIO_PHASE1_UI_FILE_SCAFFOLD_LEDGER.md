# ============================================================
# STREAM STUDIO PHASE 1 UI FILE SCAFFOLD LEDGER
# ============================================================

status: starter-ledger
layer: implementation-fileset
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the logical UI file scaffold for Phase 1.

policy:
- logical file names are fixed
- actual framework syntax is unresolved here
- one screen shell per main screen
- reusable panel / form / banner blocks stay separated

recommended_ui_root:
- ui/stream_studio/

# ============================================================
# 1. APP SHELL
# ============================================================

app_shell_files:
- ui/stream_studio/app/stream_studio_app_shell
- ui/stream_studio/app/stream_studio_navigation_shell
- ui/stream_studio/app/stream_studio_route_registry
- ui/stream_studio/app/stream_studio_permission_guard
- ui/stream_studio/app/stream_studio_copy_key_resolver

# ============================================================
# 2. HOME DASHBOARD
# ============================================================

home_files:
- ui/stream_studio/screens/home_dashboard_screen
- ui/stream_studio/screens/home_dashboard_state
- ui/stream_studio/components/home/quick_create_bar
- ui/stream_studio/components/home/summary_card_grid
- ui/stream_studio/components/home/upload_queue_widget
- ui/stream_studio/components/home/review_summary_widget
- ui/stream_studio/components/home/scheduled_publish_widget
- ui/stream_studio/components/home/failed_action_widget
- ui/stream_studio/components/home/recent_activity_widget

# ============================================================
# 3. PROJECT DETAIL
# ============================================================

project_files:
- ui/stream_studio/screens/project_detail_screen
- ui/stream_studio/screens/project_detail_state
- ui/stream_studio/components/project/project_header
- ui/stream_studio/components/project/project_tab_bar
- ui/stream_studio/components/project/overview_tab_panel
- ui/stream_studio/components/project/assets_tab_panel
- ui/stream_studio/components/project/metadata_form
- ui/stream_studio/components/project/subtitle_panel
- ui/stream_studio/components/project/publish_summary_panel
- ui/stream_studio/components/project/blocker_banner_stack

# ============================================================
# 4. UPLOAD QUEUE
# ============================================================

upload_queue_files:
- ui/stream_studio/screens/upload_queue_screen
- ui/stream_studio/screens/upload_queue_state
- ui/stream_studio/components/upload/queue_filter_bar
- ui/stream_studio/components/upload/queue_state_tabs
- ui/stream_studio/components/upload/upload_row_card
- ui/stream_studio/components/upload/upload_detail_panel
- ui/stream_studio/components/upload/retry_action_bar

# ============================================================
# 5. PUBLISH SETTINGS
# ============================================================

publish_files:
- ui/stream_studio/screens/publish_settings_screen
- ui/stream_studio/screens/publish_settings_state
- ui/stream_studio/components/publish/visibility_selector
- ui/stream_studio/components/publish/schedule_selector
- ui/stream_studio/components/publish/destination_panel
- ui/stream_studio/components/publish/readiness_check_panel
- ui/stream_studio/components/publish/publish_action_bar
- ui/stream_studio/components/publish/publish_history_panel
- ui/stream_studio/components/publish/confirmation_sheet_publish_now
- ui/stream_studio/components/publish/confirmation_sheet_schedule_publish

# ============================================================
# 6. NOTIFICATION / MOBILE QUICK ACTIONS
# ============================================================

notification_mobile_files:
- ui/stream_studio/screens/notification_inbox_screen
- ui/stream_studio/screens/notification_inbox_state
- ui/stream_studio/components/notification/notification_row
- ui/stream_studio/components/mobile/mobile_quick_action_sheet
- ui/stream_studio/components/mobile/quick_metadata_edit_sheet
- ui/stream_studio/components/mobile/quick_publish_confirm_sheet

# ============================================================
# 7. SHARED UI CORE
# ============================================================

shared_ui_core_files:
- ui/stream_studio/components/common/state_loading_view
- ui/stream_studio/components/common/state_empty_view
- ui/stream_studio/components/common/state_blocked_banner
- ui/stream_studio/components/common/state_error_banner
- ui/stream_studio/components/common/confirmation_sheet_base
- ui/stream_studio/components/common/toast_dispatcher
- ui/stream_studio/components/common/form_error_summary

# ============================================================
# 8. PHASE 1 UI FILESET DONE STATEMENT
# ============================================================

fixed_statement:
The logical UI files above are frozen as the Phase 1 starter scaffold.
Framework-specific composition may vary,
but screen and component responsibility boundaries should remain stable.
