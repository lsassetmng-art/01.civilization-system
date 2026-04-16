# ============================================================
# STREAM STUDIO PUBLISH SETTINGS EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: publish_settings
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Publish Settings screen.

screen_goal:
Allow creators and producers to safely configure visibility,
schedule, destination, and publish execution.

main_sections:
- asset_summary
- visibility_setting
- schedule_setting
- destination_setting
- readiness_check
- publish_execution
- publish_history
- external_push_history

visibility_setting:
  values:
    - private
    - limited
    - public
    - scheduled_public

schedule_setting:
  fields:
    - publish_now_or_schedule
    - scheduled_datetime
    - timezone_display
  rules:
    - scheduled_datetime_required_if_schedule_selected
    - past_datetime_rejected
    - approval_required_before_scheduling_if_policy_requires

destination_setting:
  initial_destinations:
    - streaming_internal_publication
    - youtube_extension
  fields:
    - destination_toggle
    - connector_account_selector
    - destination_note

readiness_check:
  checks:
    - metadata_complete
    - thumbnail_present
    - subtitle_policy_satisfied
    - approval_satisfied
    - rights_clear
    - split_policy_satisfied_if_required
    - connector_binding_valid_if_external

publish_execution_actions:
- validate_readiness
- save_draft_publish_setting
- publish_now
- schedule_publish
- cancel_scheduled_publish_if_allowed
- retry_failed_external_push

publish_result_surfaces:
- canonical_publish_status
- external_push_status
- last_publish_request
- last_failure_code
- retryability_flag

publish_stateflow:
- draft_publish_setting
- readiness_checked
- approval_blocked
- rights_blocked
- publish_ready
- scheduled
- published
- failed
- partially_published_external_failed

hard_blocks:
- unresolved_approval_requirement
- unresolved_rights_issue
- invalid_schedule
- missing_destination_requirements
- connector_not_bound_for_external_target

user_feedback:
- readiness_success_banner
- publish_success_toast
- schedule_saved_toast
- external_push_failed_banner
