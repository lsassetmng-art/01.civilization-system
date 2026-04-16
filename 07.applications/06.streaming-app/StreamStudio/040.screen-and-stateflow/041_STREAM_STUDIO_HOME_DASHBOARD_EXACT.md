# ============================================================
# STREAM STUDIO HOME DASHBOARD EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: home_dashboard
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Home dashboard.

screen_goal:
Provide creators and producers with a one-screen operating summary.

primary_users:
- creator
- producer
- administrator

top_sections:
- global_header
- quick_create_bar
- work_summary_cards
- upload_queue_widget
- review_and_approval_widget
- scheduled_publish_widget
- split_and_settlement_widget
- failed_actions_widget
- recent_activity_widget

global_header:
  elements:
    - workspace_switcher
    - search_entry
    - notification_badge
    - profile_menu

quick_create_bar:
  actions:
    - new_project
    - new_upload
    - new_publish_request
    - new_split_draft

work_summary_cards:
  cards:
    - drafts_in_progress
    - uploads_processing
    - approval_waiting
    - scheduled_today
    - push_failures
    - split_confirmation_waiting

widget_rules:
  upload_queue_widget:
    shows:
      - active_upload_count
      - latest_failed_upload
      - retry_shortcut
  review_and_approval_widget:
    shows:
      - needs_my_review
      - needs_my_approval
      - overdue_revision_items
  scheduled_publish_widget:
    shows:
      - today
      - tomorrow
      - overdue_blocked_publish
  split_and_settlement_widget:
    shows:
      - active_split_drafts
      - pending_confirmations
      - latest_settlement_reference
  failed_actions_widget:
    shows:
      - failed_publish
      - failed_external_push
      - rights_blocked_item
  recent_activity_widget:
    shows:
      - recent_comments
      - recent_revision_requests
      - recent_approval_decisions

entry_transitions:
- tap_new_upload -> upload_queue_detail
- tap_drafts_in_progress -> project_list_filtered_draft
- tap_needs_my_review -> review_workspace_filtered_review
- tap_scheduled_today -> publish_settings_filtered_today
- tap_push_failures -> publish_settings_filtered_external_failure
- tap_split_confirmation_waiting -> revenue_split_filtered_confirmation

empty_states:
- no_active_work
- no_failures
- no_scheduled_items
- no_recent_activity

error_states:
- dashboard_summary_load_failed
- notification_load_failed

refresh_policy:
- manual_pull_to_refresh_on_mobile
- timed_refresh_on_desktop
- local_cache_for_summary_cards_allowed

success_feedback:
- upload_created_toast
- publish_request_created_toast
- split_draft_created_toast
