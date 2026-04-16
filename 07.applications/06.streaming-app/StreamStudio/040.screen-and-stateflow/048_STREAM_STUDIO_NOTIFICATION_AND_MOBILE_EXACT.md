# ============================================================
# STREAM STUDIO NOTIFICATION AND MOBILE EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: notification_and_mobile
owner: Boss
prepared_by: Zero

purpose:
Defines the Notification inbox and mobile quick-action surfaces.

notification_inbox:
  categories:
    - upload_completed
    - upload_failed
    - revision_requested
    - comment_received
    - approval_requested
    - approval_decided
    - publish_scheduled
    - publish_succeeded
    - publish_failed
    - split_confirmation_required
    - external_push_failed

notification_fields:
- category
- related_project
- related_asset
- summary_text
- created_at
- unread_flag
- action_button

notification_actions:
- open_related_project
- retry_failed_upload
- open_review_item
- open_approval_request
- open_publish_failure
- open_split_editor
- mark_read
- mark_all_read

mobile_quick_actions:
- quick_metadata_edit
- quick_comment_reply
- approve_or_reject_request
- confirm_publish
- retry_external_push_if_permitted
- save_memo_draft_offline

offline_mobile_scope:
- memo_draft
- revision_request_draft
- metadata_draft_text
- local_notification_cache

online_required_mobile_scope:
- upload_large_media
- publish_execution
- external_push
- settlement_refresh

mobile_state_rules:
- action availability must respect permission scope
- dangerous actions require confirmation sheet
- long-form tables are replaced by stacked cards
- approval note entry must remain possible before decision submit
