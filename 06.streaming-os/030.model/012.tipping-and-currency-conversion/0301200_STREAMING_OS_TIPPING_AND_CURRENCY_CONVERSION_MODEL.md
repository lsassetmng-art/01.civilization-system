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
- stream_principal_civilization_id
- primary_revenue_beneficiary_civilization_id
- tip_origin_type
- tip_actor_civilization_id
- target_performer_participation_id
- target_performer_civilization_id
- target_persona_id
- tip_amount_source
- tip_currency_source_id
- source_nation_id
- tip_message
- tip_status
- fee_amount_source
- net_amount_source
- hold_reason
- fraud_state
- created_at
- updated_at

# ============================================================
# 3. TIP_BENEFICIARY_RESOLUTION
# ============================================================

Recommended meanings:
- tip_beneficiary_resolution_id
- tip_event_id
- resolution_status
- beneficiary_civilization_id
- beneficiary_scope
- resolution_reason
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
- persona_signed_snapshot_ref
  nullable
- persona_result_event_ref
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

rule:
Persona-facing input here must be:
- signed snapshot reference
- or formal Persona result reference

not_allowed:
- local persona profile canonical
- local persona internal emotional truth

# ============================================================
# 6. BUSINESSOS_LINKAGE_REFERENCE
# ============================================================

Recommended meanings:
- businessos_linkage_ref_id
- tip_event_id
- businessos_linkage_flag
- linkage_status
- businessos_reference_id
  nullable
- linkage_note
  nullable
- updated_at
