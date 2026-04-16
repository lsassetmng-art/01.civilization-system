# ============================================================
# STREAMING OS AD MANAGEMENT MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: ad-management-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- ad_data
- ad_insertion_rule
- ad_display_event

# ============================================================
# 2. AD_DATA
# ============================================================

Recommended meanings:
- ad_data_id
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
- created_at
- updated_at

# ============================================================
# 3. AD_INSERTION_RULE
# ============================================================

Recommended meanings:
- ad_insertion_rule_id
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
- created_at
- updated_at

# ============================================================
# 4. AD_DISPLAY_EVENT
# ============================================================

Recommended meanings:
- ad_display_event_id
- ad_data_id
- ad_insertion_rule_id
- target_content_type
  - live_session
  - archive_asset
  - clip_asset
- target_content_id
- displayed_at
- display_status
  - shown
  - skipped
  - blocked
  - failed
- display_note
  nullable
- created_at

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- internal ad data
- internal ad insertion rules
- internal ad display history

Internal ad structures
shall remain separate from external-platform ad behavior.

