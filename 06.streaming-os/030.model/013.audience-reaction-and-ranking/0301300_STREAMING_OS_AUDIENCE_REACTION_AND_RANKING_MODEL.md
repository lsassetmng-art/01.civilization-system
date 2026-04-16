# ============================================================
# STREAMING OS AUDIENCE REACTION AND RANKING MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: audience-reaction-and-ranking-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- reaction_event
- favorite_state
- view_signal_summary
- ranking_result
- ranking_generation_batch

# ============================================================
# 2. REACTION_EVENT
# ============================================================

Recommended meanings:
- reaction_event_id
- reaction_type
  - like
  - dislike
  - favorite
  - comment
  - continued_view
  - rewatch
- reaction_target_type
  - video_asset
  - live_session
  - broadcaster
  - clip_asset
- reaction_target_id
- audience_subject_id
- audience_subject_type
  - individual
  - ai_human
  - group
  - company
- reaction_value
  nullable
- reaction_note
  nullable
- reaction_timestamp
- created_at

# ============================================================
# 3. FAVORITE_STATE
# ============================================================

Recommended meanings:
- favorite_state_id
- audience_subject_id
- favorite_target_type
  - video_asset
  - live_session
  - broadcaster
  - clip_asset
- favorite_target_id
- favorite_active_flag
- favorited_at
- unfavorited_at
  nullable
- updated_at

# ============================================================
# 4. VIEW_SIGNAL_SUMMARY
# ============================================================

Recommended meanings:
- view_signal_summary_id
- target_type
  - video_asset
  - live_session
  - broadcaster
  - clip_asset
- target_id
- total_view_count
- total_continued_view_count
- total_rewatch_count
- total_like_count
- total_dislike_count
- total_favorite_count
- total_comment_count
- updated_at

# ============================================================
# 5. RANKING_RESULT
# ============================================================

Recommended meanings:
- ranking_result_id
- ranking_target_type
  - video
  - stream
  - broadcaster
- ranking_target_id
- ranking_period_type
  - daily
  - monthly
  - yearly
  - overall
- ranking_score
- ranking_position
- ranking_generated_at
- ranking_note
  nullable
- created_at

# ============================================================
# 6. RANKING_GENERATION_BATCH
# ============================================================

Recommended meanings:
- ranking_generation_batch_id
- ranking_period_type
  - daily
  - monthly
  - yearly
  - overall
- generated_at
- generation_status
  - pending
  - completed
  - failed
- metric_scope_note
  nullable
- created_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- native reaction events
- favorite state
- view and reaction summaries
- ranking results
- ranking generation batches

Reaction activity and ranking result shall remain distinguishable.

