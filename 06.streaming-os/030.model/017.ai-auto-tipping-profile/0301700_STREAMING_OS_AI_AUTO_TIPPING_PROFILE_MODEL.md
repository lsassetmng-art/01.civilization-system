# ============================================================
# STREAMING OS AI AUTO TIPPING PROFILE MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: ai-auto-tipping-profile-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- ai_auto_tipping_profile
- ai_auto_tipping_emotion_state
- ai_auto_tipping_limit_state
- ai_auto_tipping_restriction_state
- ai_auto_tipping_stop_state

# ============================================================
# 2. AI_AUTO_TIPPING_PROFILE
# ============================================================

Recommended meanings:
- ai_auto_tipping_profile_id
- ai_human_civilization_id
- persona_profile_reference
  nullable
- affiliated_company_civilization_id
  nullable
- auto_tipping_enabled_flag
- created_at
- updated_at

# ============================================================
# 3. AI_AUTO_TIPPING_EMOTION_STATE
# ============================================================

Recommended meanings:
- ai_auto_tipping_emotion_state_id
- ai_auto_tipping_profile_id
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
  - rising
  - stable
  - falling
- updated_at

# ============================================================
# 4. AI_AUTO_TIPPING_LIMIT_STATE
# ============================================================

Recommended meanings:
- ai_auto_tipping_limit_state_id
- ai_auto_tipping_profile_id
- auto_tipping_total_limit
- auto_tipping_per_stream_limit
- auto_tipping_per_day_limit
- current_auto_tipping_total_amount
- current_auto_tipping_stream_amount
- current_auto_tipping_day_amount
- system_safety_cap_note
  nullable
- updated_at

# ============================================================
# 5. AI_AUTO_TIPPING_RESTRICTION_STATE
# ============================================================

Recommended meanings:
- ai_auto_tipping_restriction_state_id
- ai_auto_tipping_profile_id
- available_national_currency_balance
- minor_equivalent_flag
- company_policy_restriction_flag
- governance_restriction_flag
- session_restriction_flag
- restriction_note
  nullable
- updated_at

# ============================================================
# 6. AI_AUTO_TIPPING_STOP_STATE
# ============================================================

Recommended meanings:
- ai_auto_tipping_stop_state_id
- ai_auto_tipping_profile_id
- auto_tipping_stop_flag
- stop_reason_code
  nullable
- stop_reason_note
  nullable
- resumable_flag
- updated_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- Ai(human) auto tipping profile
- emotional reaction state
- limit state
- restriction state
- stop state

Emotional auto tipping behavior
shall remain explainable and stateful.

