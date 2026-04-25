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
- persona_signed_snapshot_ref
  nullable
- persona_result_event_ref
  nullable
- affiliated_company_civilization_id
  nullable
- auto_tipping_enabled_flag
- created_at
- updated_at

rule:
Profile-level persona linkage must remain reference-only.

not_allowed:
- local persona profile canonical
- local persona mutable mirror

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

rule:
These are Streaming-local derived reaction states,
not Persona canonical emotional truth.

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
- available_national_currency_balance
- updated_at

# ============================================================
# 5. AI_AUTO_TIPPING_RESTRICTION_STATE
# ============================================================

Recommended meanings:
- ai_auto_tipping_restriction_state_id
- ai_auto_tipping_profile_id
- minor_equivalent_flag
- company_affiliation_flag
- restriction_reason_code
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
- updated_at
