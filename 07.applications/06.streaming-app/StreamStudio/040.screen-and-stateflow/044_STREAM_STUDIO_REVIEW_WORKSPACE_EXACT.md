# ============================================================
# STREAM STUDIO REVIEW WORKSPACE EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: review_workspace
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Review workspace.

screen_goal:
Centralize comments, revision requests, and approval preparation.

review_modes:
- asset_review
- timeline_review
- metadata_review
- subtitle_review
- split_review_reference

main_layout_desktop:
- review_item_list_panel
- preview_or_context_panel
- comment_thread_panel
- action_panel

main_layout_mobile:
- review_item_list
- item_detail_stack
- action_sheet_for_comment_revision

review_item_fields:
- project_title
- asset_title
- review_type
- requester
- due_at
- blocker_badge
- unresolved_count
- approval_dependency_flag

comment_types:
- general_comment
- timeline_comment
- metadata_field_comment
- subtitle_track_comment
- approval_note
- negotiation_reference_note

revision_request_fields:
- request_summary
- requester
- assignee
- due_at
- status
- blocking_flag
- linked_anchor

review_actions:
- add_comment
- create_revision_request
- resolve_comment
- mark_ready_for_recheck
- open_project
- request_approval_from_review

timeline_anchor_rules:
- comment may target start_ms and end_ms
- single-point anchor allowed
- whole-asset anchor allowed
- broken anchor must be visibly marked

revision_stateflow:
- open
- accepted
- in_progress
- resubmitted
- verified
- rejected
- cancelled

approval_preparation_rules:
- unresolved_blocking_revision prevents approval_request
- unresolved_rights_issue prevents approval_request
- non_blocking_comments may coexist with approval_request

filters:
- needs_my_review
- needs_my_response
- overdue
- blocked
- approved_recently

empty_states:
- no_review_items
- no_overdue_items
- no_blocked_items
