# ============================================================
# STREAMING OS CHANNEL AND CORPORATE OVERSIGHT MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: channel-and-corporate-oversight-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- channel_record
- channel_profile_state
- corporate_channel_oversight_record
- affiliated_streamer_reference

# ============================================================
# 2. CHANNEL_RECORD
# ============================================================

Recommended meanings:
- channel_record_id
- channel_owner_civilization_id
- channel_display_name
- channel_status
  - active
  - restricted
  - suspended
  - archived
- official_channel_flag
- created_at
- updated_at

# ============================================================
# 3. CHANNEL_PROFILE_STATE
# ============================================================

Recommended meanings:
- channel_profile_state_id
- channel_record_id
- profile_description
  nullable
- artwork_reference
  nullable
- visibility_setting
  - public
  - limited
  - restricted
- updated_at

# ============================================================
# 4. CORPORATE_CHANNEL_OVERSIGHT_RECORD
# ============================================================

Recommended meanings:
- corporate_channel_oversight_record_id
- company_civilization_id
- channel_record_id
- oversight_status
  - active
  - restricted
  - suspended
- latest_oversight_note
  nullable
- updated_at

# ============================================================
# 5. AFFILIATED_STREAMER_REFERENCE
# ============================================================

Recommended meanings:
- affiliated_streamer_reference_id
- company_civilization_id
- streamer_civilization_id
- affiliation_status
  - active
  - inactive
  - restricted
- official_stream_capable_flag
- updated_at

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- channel existence
- channel profile state
- corporate oversight state
- affiliated streamer references

Company oversight must remain distinct
from individual participation and ownership.

