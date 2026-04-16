# ============================================================
# STREAMING OS REACTION RANKING AND AD API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact payload intent
for native reactions,
rankings,
and internal ad APIs.

# ============================================================
# 2. REACTION SUBMIT API
# ============================================================

endpoint_intent:
- submit native reaction

request_payload:
- actor_civilization_id
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
- reaction_value
  nullable
- reaction_note
  nullable

response_payload:
- reaction_event_id
- reaction_type
- reaction_target_type
- reaction_target_id
- accepted_flag
- rejection_reason_codes
- reaction_timestamp

# ============================================================
# 3. REACTION SUMMARY API
# ============================================================

endpoint_intent:
- read native reaction summary

request_payload:
- actor_civilization_id
- target_type
  - video_asset
  - live_session
  - broadcaster
  - clip_asset
- target_id

response_payload:
- target_type
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
# 4. RANKING LIST API
# ============================================================

endpoint_intent:
- read ranking list

request_payload:
- actor_civilization_id
- ranking_target_type
  - video
  - stream
  - broadcaster
- ranking_period_type
  - daily
  - monthly
  - yearly
  - overall
- limit
  optional
- offset
  optional

response_payload:
- ranking_target_type
- ranking_period_type
- ranking_results:
  - ranking_target_id
  - ranking_position
  - ranking_score
  - ranking_generated_at
  - ranking_note
    nullable

# ============================================================
# 5. AD LIST API
# ============================================================

endpoint_intent:
- list internal ads

request_payload:
- actor_civilization_id
- ad_status_filter
  optional:
  - draft
  - active
  - inactive
  - blocked
  - archived

response_payload:
- ads:
  - ad_data_id
  - ad_title
  - ad_origin_subject_id
    nullable
  - ad_origin_type
  - ad_status
  - active_from
    nullable
  - active_until
    nullable
- generated_at

# ============================================================
# 6. AD UPSERT API
# ============================================================

endpoint_intent:
- create or update internal ad data

request_payload:
- actor_civilization_id
- ad_data_id
  nullable
- ad_title
- ad_origin_subject_id
  nullable
- ad_origin_type
  - sponsor
  - internal_campaign
  - company
  - partner
- ad_asset_reference
  nullable
- ad_text_payload
  nullable
- ad_status
  - draft
  - active
  - inactive
  - blocked
  - archived
- active_from
  nullable
- active_until
  nullable

response_payload:
- ad_data_id
- ad_status
- updated_at

# ============================================================
# 7. AD INSERTION RULE UPSERT API
# ============================================================

endpoint_intent:
- create or update ad insertion rule

request_payload:
- actor_civilization_id
- ad_insertion_rule_id
  nullable
- ad_data_id
- target_content_type
  - live_session
  - archive_asset
  - clip_asset
- insertion_position
  - pre_roll
  - mid_roll
  - post_roll
  - overlay
- frequency_policy_note
  nullable
- target_nation_id
  nullable
- target_channel_id
  nullable
- target_program_id
  nullable
- rule_status
  - active
  - inactive
  - blocked

response_payload:
- ad_insertion_rule_id
- ad_data_id
- rule_status
- updated_at

