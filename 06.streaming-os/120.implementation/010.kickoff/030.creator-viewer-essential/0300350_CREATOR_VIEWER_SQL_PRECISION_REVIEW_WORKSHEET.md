# ============================================================
# CREATOR VIEWER SQL PRECISION REVIEW WORKSHEET
# ============================================================

status: canonical-review-worksheet
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This worksheet is the working review sheet for K3 SQL precision review.

review_scope:
- creator_profile_view_states
- creator_studio_drafts
- upload_preparation_records
- creator_settings_states
- creator_analytics_snapshot_refs
- viewer_home_feed_states
- viewer_search_histories
- viewer_watch_histories
- subscription_follow_states
- playlist_records
- playlist_items
- watch_queue_states
- watch_queue_items

review_mode:
- precision review only
- no execution
- no implementation coding

reviewer_rule:
- Sato(DB reviewer) participation required

creator_side_review_items:
- exact SQL type choices for creator-side ids
  - decision_status:
  - reviewer_note:
- exact FK type/action for principal-bound creator tables
  - decision_status:
  - reviewer_note:
- exact FK type/action for linked_session_id references
  - decision_status:
  - reviewer_note:
- exact field type strategy for draft title and description
  - decision_status:
  - reviewer_note:
- exact field type strategy for source_locator_ref and checksum_ref
  - decision_status:
  - reviewer_note:
- exact JSON vs structured-column choice for notification_preference
  - decision_status:
  - reviewer_note:
- exact JSON vs structured-column choice for studio_preference
  - decision_status:
  - reviewer_note:
- exact snapshot_ref storage strategy
  - decision_status:
  - reviewer_note:

viewer_side_review_items:
- exact SQL type choices for viewer-side ids
  - decision_status:
  - reviewer_note:
- exact FK type/action for principal-bound continuity tables
  - decision_status:
  - reviewer_note:
- exact field type strategy for query_text
  - decision_status:
  - reviewer_note:
- exact item_type/item_id pair storage strategy
  - decision_status:
  - reviewer_note:
- exact unique constraint shape for subscription follow state
  - decision_status:
  - reviewer_note:
- exact unique constraint shape for playlist order indices
  - decision_status:
  - reviewer_note:
- exact unique constraint shape for watch queue order indices
  - decision_status:
  - reviewer_note:
- exact timestamp type strategy for searched_at and watched_at
  - decision_status:
  - reviewer_note:

index_and_constraint_review_items:
- minimal index set for viewer history lookup
  - decision_status:
  - reviewer_note:
- minimal index set for search history lookup/compaction support
  - decision_status:
  - reviewer_note:
- minimal index set for follow target lookup
  - decision_status:
  - reviewer_note:
- minimal index set for playlist ordering queries
  - decision_status:
  - reviewer_note:
- minimal index set for watch queue ordering queries
  - decision_status:
  - reviewer_note:
- partial index now vs later
  - decision_status:
  - reviewer_note:

policy_projection_review_items:
- exact private-read strategy for search history
  - decision_status:
  - reviewer_note:
- exact private-read strategy for watch history
  - decision_status:
  - reviewer_note:
- exact shared-playlist projection strategy
  - decision_status:
  - reviewer_note:
- exact runtime repair mutation boundary for watch queue
  - decision_status:
  - reviewer_note:
- exact oversight-safe creator analytics projection strategy
  - decision_status:
  - reviewer_note:

exit_condition:
- all blocking SQL precision questions marked resolved or explicitly deferred with rationale
