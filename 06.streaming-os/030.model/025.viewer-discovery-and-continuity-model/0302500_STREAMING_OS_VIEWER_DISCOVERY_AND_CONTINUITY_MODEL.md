# ============================================================
# STREAMING OS VIEWER DISCOVERY AND CONTINUITY MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: viewer-discovery-and-continuity-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- viewer_home_feed_state
- viewer_search_history
- viewer_watch_history
- subscription_follow_state
- playlist_record
- playlist_item
- watch_queue_state
- watch_queue_item

# ============================================================
# 2. VIEWER_HOME_FEED_STATE
# ============================================================

Recommended meanings:
- viewer_home_feed_state_id
- viewer_subject_id
- latest_feed_generation_reference
  nullable
- feed_version_note
  nullable
- updated_at

# ============================================================
# 3. VIEWER_SEARCH_HISTORY
# ============================================================

Recommended meanings:
- viewer_search_history_id
- viewer_subject_id
- search_query_text
- searched_at
- result_scope_note
  nullable

# ============================================================
# 4. VIEWER_WATCH_HISTORY
# ============================================================

Recommended meanings:
- viewer_watch_history_id
- viewer_subject_id
- watched_target_type
  - video_asset
  - live_session
  - clip_asset
  - broadcaster
- watched_target_id
- watched_at
- watch_progress_note
  nullable

# ============================================================
# 5. SUBSCRIPTION_FOLLOW_STATE
# ============================================================

Recommended meanings:
- subscription_follow_state_id
- viewer_subject_id
- follow_target_type
  - channel
  - creator
  - broadcaster
- follow_target_id
- follow_active_flag
- notification_enabled_flag
- followed_at
- unfollowed_at
  nullable
- updated_at

# ============================================================
# 6. PLAYLIST_RECORD
# ============================================================

Recommended meanings:
- playlist_record_id
- owner_subject_id
- playlist_name
- playlist_visibility
  - private
  - shared
  - public
- created_at
- updated_at

# ============================================================
# 7. PLAYLIST_ITEM
# ============================================================

Recommended meanings:
- playlist_item_id
- playlist_record_id
- target_type
  - video_asset
  - live_session
  - clip_asset
- target_id
- sequence_no
- added_at

# ============================================================
# 8. WATCH_QUEUE_STATE / ITEM
# ============================================================

Recommended meanings:
- watch_queue_state_id
- viewer_subject_id
- queue_active_flag
- updated_at

Recommended meanings for item:
- watch_queue_item_id
- watch_queue_state_id
- target_type
  - video_asset
  - live_session
  - clip_asset
- target_id
- sequence_no
- added_at

# ============================================================
# 9. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- viewer feed state
- search history
- watch history
- follow/subscription state
- saved playlists
- temporary watch queue state

Viewer continuity structures must remain distinct
from reaction and ranking structures.

