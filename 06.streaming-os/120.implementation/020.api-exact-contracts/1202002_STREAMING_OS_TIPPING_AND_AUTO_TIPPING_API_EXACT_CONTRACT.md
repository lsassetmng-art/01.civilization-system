# ============================================================
# STREAMING OS TIPPING AND AUTO TIPPING API EXACT CONTRACT
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
for formal tipping,
currency conversion,
and Ai(human) auto tipping APIs.

# ============================================================
# 2. MANUAL TIP CREATE API
# ============================================================

endpoint_intent:
- create a formal manual tip event

request_payload:
- actor_civilization_id
- session_id
- target_performer_participation_id
  nullable
- target_performer_civilization_id
  nullable
- tip_amount_source
- tip_currency_source_id
- source_nation_id
- tip_message
  nullable

response_payload:
- tip_event_id
- tip_status
- primary_revenue_beneficiary_civilization_id
- beneficiary_currency_id
  nullable
- beneficiary_amount_converted
  nullable
- display_currency_id
  nullable
- display_amount
  nullable
- created_at

# ============================================================
# 3. TIP DETAIL API
# ============================================================

endpoint_intent:
- read formal tip detail

request_payload:
- actor_civilization_id
- tip_event_id

response_payload:
- tip_event_id
- session_id
- tip_origin_type
  - manual
  - ai_emotional_auto
- tip_actor_civilization_id
  nullable
- primary_revenue_beneficiary_civilization_id
- tip_amount_source
- tip_currency_source_id
- source_nation_id
- fee_amount_source
- net_amount_source
- beneficiary_nation_id
- beneficiary_currency_id
- beneficiary_amount_converted
- display_currency_id
- display_amount
- tip_status
- hold_reason
  nullable
- fraud_state
- businessos_linkage_flag
- linkage_status
- created_at

# ============================================================
# 4. AUTO TIPPING PROFILE DETAIL API
# ============================================================

endpoint_intent:
- read Ai(human) auto tipping state

request_payload:
- actor_civilization_id
- ai_human_civilization_id

response_payload:
- ai_auto_tipping_profile_id
- ai_human_civilization_id
- auto_tipping_enabled_flag
- affiliated_company_civilization_id
  nullable
- current_emotion_state:
  - target_session_id
    nullable
  - target_broadcaster_civilization_id
    nullable
  - video_impression_intensity
  - video_empathy_intensity
  - video_support_intention
  - broadcaster_impression_intensity
  - broadcaster_empathy_intensity
  - broadcaster_support_intention
  - emotion_trend
- current_limit_state:
  - auto_tipping_total_limit
  - auto_tipping_per_stream_limit
  - auto_tipping_per_day_limit
  - current_auto_tipping_total_amount
  - current_auto_tipping_stream_amount
  - current_auto_tipping_day_amount
- current_restriction_state:
  - available_national_currency_balance
  - minor_equivalent_flag
  - company_policy_restriction_flag
  - governance_restriction_flag
  - session_restriction_flag
- current_stop_state:
  - auto_tipping_stop_flag
  - stop_reason_code
    nullable
  - resumable_flag

# ============================================================
# 5. AUTO TIPPING CONTROL API
# ============================================================

endpoint_intent:
- enable or disable auto tipping profile

request_payload:
- actor_civilization_id
- ai_human_civilization_id
- auto_tipping_enabled_flag

response_payload:
- ai_auto_tipping_profile_id
- ai_human_civilization_id
- auto_tipping_enabled_flag
- updated_at

