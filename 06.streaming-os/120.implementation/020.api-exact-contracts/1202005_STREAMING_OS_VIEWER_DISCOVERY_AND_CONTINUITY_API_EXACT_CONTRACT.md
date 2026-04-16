# ============================================================
# STREAMING OS VIEWER DISCOVERY AND CONTINUITY API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. HOME FEED API
# ============================================================

endpoint_intent:
- read viewer home/discovery feed

request_payload:
- actor_civilization_id
- feed_scope
  - personalized
  - ranking_linked
  - live_now
  - category
- category_reference
  nullable
- limit
  optional
- offset
  optional

response_payload:
- viewer_home_feed_state_id
  nullable
- feed_scope
- feed_items:
  - target_type
  - target_id
  - display_reason
    nullable
  - ranking_reference
    nullable
- generated_at

# ============================================================
# 2. SEARCH API
# ============================================================

endpoint_intent:
- execute explicit search

request_payload:
- actor_civilization_id
- search_query_text
- result_scope
  - all
  - video
  - live
  - clip
  - channel
  - creator
- limit
  optional
- offset
  optional

response_payload:
- viewer_search_history_id
  nullable
- result_scope
- results:
  - target_type
  - target_id
  - matched_title
    nullable
  - matched_reason
    nullable
- searched_at

# ============================================================
# 3. FOLLOW / SUBSCRIPTION API
# ============================================================

endpoint_intent:
- create or update follow/subscription state

request_payload:
- actor_civilization_id
- follow_target_type
  - channel
  - creator
  - broadcaster
- follow_target_id
- follow_active_flag
- notification_enabled_flag

response_payload:
- subscription_follow_state_id
- follow_target_type
- follow_target_id
- follow_active_flag
- notification_enabled_flag
- followed_at
  nullable
- unfollowed_at
  nullable
- updated_at

# ============================================================
# 4. PLAYLIST UPSERT API
# ============================================================

endpoint_intent:
- create or update playlist and items

request_payload:
- actor_civilization_id
- playlist_record_id
  nullable
- playlist_name
- playlist_visibility
  - private
  - shared
  - public
- playlist_items:
  - target_type
    - video_asset
    - live_session
    - clip_asset
  - target_id
  - sequence_no

response_payload:
- playlist_record_id
- playlist_name
- playlist_visibility
- item_count
- updated_at

# ============================================================
# 5. WATCH QUEUE API
# ============================================================

endpoint_intent:
- read or update temporary watch queue

request_payload:
- actor_civilization_id
- queue_mutation_type
  - read
  - replace
  - append
  - remove
  - reorder
  - clear
- queue_items
  optional:
  - target_type
  - target_id
  - sequence_no

response_payload:
- watch_queue_state_id
- queue_active_flag
- queue_items:
  - watch_queue_item_id
  - target_type
  - target_id
  - sequence_no
- updated_at

