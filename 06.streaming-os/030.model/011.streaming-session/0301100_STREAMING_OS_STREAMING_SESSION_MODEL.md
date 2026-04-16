# ============================================================
# STREAMING OS STREAMING SESSION MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: streaming-session-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- streaming_session
- session_archive_state
- session_publication_state
- session_monetization_state
- session_governance_state

# ============================================================
# 2. STREAMING_SESSION
# ============================================================

Recommended meanings:
- session_id
- channel_id
- program_id
  nullable
- session_title
- stream_principal_civilization_id
- stream_principal_type
- ownership_mode
  - corporate_official
  - individual_owned
  - group_owned
  - ai_human_owned
- session_state
  - draft
  - scheduled
  - ready
  - pre_live_check
  - live
  - paused
  - interrupted
  - ended
  - archive_generating
  - archive_ready
  - rights_review_pending
  - publish_ready
  - pushing_external
  - externally_published
  - monetization_open
  - settlement_pending
  - settled
  - locked
  - suspended
  - cancelled
  - archived
- scheduled_start_at
  nullable
- actual_start_at
  nullable
- actual_end_at
  nullable
- affiliated_company_civilization_id
  nullable
- corporate_stream_flag
- individual_stream_flag
- archived_flag
- lock_flag
- suspension_flag
- created_at
- updated_at

# ============================================================
# 3. SESSION_ARCHIVE_STATE
# ============================================================

Recommended meanings:
- session_archive_state_id
- session_id
- archive_generation_status
  - none
  - generating
  - ready
  - failed
- archive_asset_id
  nullable
- clip_count
- latest_clip_asset_id
  nullable
- archive_note
  nullable
- updated_at

# ============================================================
# 4. SESSION_PUBLICATION_STATE
# ============================================================

Recommended meanings:
- session_publication_state_id
- session_id
- rights_review_status
  - none
  - pending
  - approved
  - rejected
  - blocked
- publish_ready_flag
- external_publish_status
  - none
  - queued
  - pushing
  - succeeded
  - failed
  - blocked
- latest_external_publish_job_id
  nullable
- latest_external_publish_result_id
  nullable
- publication_block_reason
  nullable
- updated_at

# ============================================================
# 5. SESSION_MONETIZATION_STATE
# ============================================================

Recommended meanings:
- session_monetization_state_id
- session_id
- monetization_open_flag
- settlement_status
  - none
  - pending
  - processing
  - settled
  - held
  - blocked
- total_tip_gross_amount
- total_tip_net_amount
- total_tip_held_amount
- total_tip_refunded_amount
- primary_revenue_beneficiary_civilization_id
- beneficiary_display_currency_id
  nullable
- updated_at

# ============================================================
# 6. SESSION_GOVERNANCE_STATE
# ============================================================

Recommended meanings:
- session_governance_state_id
- session_id
- governance_review_open_flag
- publication_block_flag
- monetization_hold_flag
- performer_restriction_flag
- visibility_reduced_flag
- session_locked_flag
- session_suspended_flag
- latest_governance_event_id
  nullable
- updated_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve session lifecycle,
archive state,
publication state,
monetization state,
and governance state
as distinct structures.

