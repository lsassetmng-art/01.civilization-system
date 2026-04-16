# ============================================================
# STREAMING OS CORPORATE CHANNEL AND AFFILIATION API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CHANNEL DETAIL API
# ============================================================

endpoint_intent:
- read channel and channel profile detail

request_payload:
- actor_civilization_id
- channel_record_id

response_payload:
- channel_record_id
- channel_owner_civilization_id
- channel_display_name
- channel_status
- official_channel_flag
- profile_description
  nullable
- artwork_reference
  nullable
- visibility_setting
- updated_at

# ============================================================
# 2. CHANNEL UPSERT API
# ============================================================

endpoint_intent:
- create or update channel and profile state

request_payload:
- actor_civilization_id
- channel_record_id
  nullable
- channel_display_name
- channel_status
  - active
  - restricted
  - suspended
  - archived
- official_channel_flag
- profile_description
  nullable
- artwork_reference
  nullable
- visibility_setting
  - public
  - limited
  - restricted

response_payload:
- channel_record_id
- channel_profile_state_id
- channel_status
- updated_at

# ============================================================
# 3. CORPORATE OVERSIGHT API
# ============================================================

endpoint_intent:
- read or update company-side oversight state

request_payload:
- actor_civilization_id
- company_civilization_id
- channel_record_id
- oversight_status
  optional:
  - active
  - restricted
  - suspended
- latest_oversight_note
  nullable

response_payload:
- corporate_channel_oversight_record_id
- company_civilization_id
- channel_record_id
- oversight_status
- latest_oversight_note
  nullable
- updated_at

# ============================================================
# 4. AFFILIATED STREAMER API
# ============================================================

endpoint_intent:
- read or update affiliated streamer reference

request_payload:
- actor_civilization_id
- company_civilization_id
- streamer_civilization_id
- affiliation_status
  - active
  - inactive
  - restricted
- official_stream_capable_flag

response_payload:
- affiliated_streamer_reference_id
- company_civilization_id
- streamer_civilization_id
- affiliation_status
- official_stream_capable_flag
- updated_at

