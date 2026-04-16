# ============================================================
# STREAM STUDIO PROJECT DETAIL EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: project_detail
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Project Detail workspace.

screen_goal:
Provide one canonical creator-side workspace for asset preparation,
review handling, approval handling, publish preparation, and split setup.

header_area:
- project_title
- project_status_badge
- owner_info
- collaborator_count
- quick_actions

quick_actions:
- upload_asset
- request_review
- request_approval
- open_publish
- open_split_editor

tabs:
- overview
- assets
- metadata
- subtitle
- review
- approval
- publish
- split
- audit

overview_tab:
  sections:
    - project_summary
    - latest_asset_version
    - readiness_summary
    - blocker_summary
    - recent_activity

assets_tab:
  sections:
    - source_media_list
    - thumbnail_list
    - subtitle_package_list
    - draft_version_list
  actions:
    - add_asset
    - replace_asset_version
    - assign_primary_asset
    - archive_unused_asset

metadata_tab:
  fields:
    - title
    - description
    - tags
    - default_language
    - category
    - visibility_hint
  validations:
    - title_required
    - title_length_limit
    - description_length_limit
    - reserved_tag_rules

subtitle_tab:
  sections:
    - track_list
    - default_track_setting
    - auto_generated_track_marker
  actions:
    - upload_subtitle
    - set_default_track
    - disable_track
    - replace_track

review_tab:
  sections:
    - timeline_comments
    - metadata_comments
    - revision_requests
  actions:
    - add_comment
    - create_revision_request
    - resolve_comment
    - jump_to_anchor

approval_tab:
  sections:
    - approval_requirements
    - active_approval_requests
    - decision_history
  actions:
    - request_approval
    - cancel_request_if_allowed
    - view_decision_note

publish_tab:
  sections:
    - visibility
    - schedule
    - destination_selection
    - readiness_checks
    - publish_history
  actions:
    - validate_readiness
    - save_publish_setting
    - publish_now
    - schedule_publish

split_tab:
  sections:
    - split_version_summary
    - party_lines
    - fixed_fee_lines
    - negotiation_log
    - settlement_reference
  actions:
    - create_split_draft
    - edit_split_line
    - submit_split_for_approval
    - activate_split_version

audit_tab:
  sections:
    - event_timeline
    - policy_override_history
    - publish_request_history
    - external_push_history

project_state_summary:
- project_draft
- project_in_review
- project_approval_pending
- project_publish_ready
- project_scheduled
- project_published
- project_failed
- project_archived

transition_rules:
- unresolved_blocker prevents publish_now
- approval_pending prevents activate_publish if policy requires approval
- rights_block prevents external_push_creation
- split_conflict blocks split_activation

mobile_behavior:
- tab list becomes segmented stacked navigation
- audit tab becomes summary-first
- heavy asset actions may deep-link to tablet_or_pc_recommended_notice
