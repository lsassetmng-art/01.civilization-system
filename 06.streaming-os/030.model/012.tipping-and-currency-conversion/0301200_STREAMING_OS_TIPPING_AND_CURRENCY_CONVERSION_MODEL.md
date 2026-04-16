# ============================================================
# STREAMING OS TIPPING AND CURRENCY CONVERSION MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: tipping-and-currency-conversion-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- tip_event
- tip_beneficiary_resolution
- tip_currency_conversion
- auto_tip_emotional_context
- businessos_linkage_reference

# ============================================================
# 2. TIP_EVENT
# ============================================================

Recommended meanings:
- tip_event_id
- session_id
- channel_id
- program_id
  nullable
- stream_principal_civilization_id
- primary_revenue_beneficiary_civilization_id
- tip_origin_type
  - manual
  - ai_emotional_auto
- tip_actor_civilization_id
  nullable
- target_performer_participation_id
  nullable
- target_performer_civilization_id
  nullable
- target_persona_id
  nullable
- tip_amount_source
- tip_currency_source_id
- source_nation_id
- tip_message
  nullable
- tip_status
  - initiated
  - authorized
  - captured
  - failed
  - refunded
  - partially_refunded
  - held
  - released
  - reversed
  - blocked
- fee_amount_source
- net_amount_source
- hold_reason
  nullable
- fraud_state
  - none
  - suspected
  - confirmed
- created_at
- updated_at

# ============================================================
# 3. TIP_BENEFICIARY_RESOLUTION
# ============================================================

Recommended meanings:
- tip_beneficiary_resolution_id
- tip_event_id
- beneficiary_civilization_id
- beneficiary_type
  - individual
  - group
  - company
  - ai_human
- beneficiary_nation_id
- beneficiary_currency_id
- beneficiary_amount_converted
- display_currency_id
- display_amount
- conversion_rule_reference
  nullable
- conversion_timestamp
  nullable
- resolved_at
- updated_at

# ============================================================
# 4. TIP_CURRENCY_CONVERSION
# ============================================================

Recommended meanings:
- tip_currency_conversion_id
- tip_event_id
- source_nation_id
- source_currency_id
- source_amount
- beneficiary_nation_id
- beneficiary_currency_id
- converted_amount
- display_currency_id
- display_amount
- conversion_rate_reference
  nullable
- conversion_status
  - pending
  - converted
  - failed
  - blocked
- conversion_timestamp
  nullable
- updated_at

# ============================================================
# 5. AUTO_TIP_EMOTIONAL_CONTEXT
# ============================================================

Recommended meanings:
- auto_tip_emotional_context_id
- tip_event_id
- auto_tipping_subject_civilization_id
- persona_profile_reference
  nullable
- video_impression_intensity
- video_empathy_intensity
- video_support_intention
- broadcaster_impression_intensity
- broadcaster_empathy_intensity
- broadcaster_support_intention
- auto_tipping_total_limit
- auto_tipping_per_stream_limit
- auto_tipping_per_day_limit
- current_auto_tipping_total_amount
- current_auto_tipping_stream_amount
- current_auto_tipping_day_amount
- available_national_currency_balance
- minor_equivalent_flag
- auto_tipping_stop_flag
- stop_reason_code
  nullable
- created_at
- updated_at

# ============================================================
# 6. BUSINESSOS_LINKAGE_REFERENCE
# ============================================================

Recommended meanings:
- businessos_linkage_reference_id
- tip_event_id
- businessos_linkage_flag
- linkage_status
  - none
  - pending
  - linked
  - failed
- businessos_reference_id
  nullable
- linkage_note
  nullable
- updated_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- formal tip event meaning
- source currency meaning
- beneficiary-side conversion meaning
- display currency meaning
- optional auto tipping emotional context
- optional BusinessOS linkage reference

