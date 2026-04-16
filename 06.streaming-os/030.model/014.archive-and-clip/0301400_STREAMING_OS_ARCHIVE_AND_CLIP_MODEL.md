# ============================================================
# STREAMING OS ARCHIVE AND CLIP MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: archive-and-clip-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- archive_asset
- clip_asset
- clip_derivation_reference
- asset_review_state
- asset_governance_state

# ============================================================
# 2. ARCHIVE_ASSET
# ============================================================

Recommended meanings:
- archive_asset_id
- session_id
- channel_id
- program_id
  nullable
- stream_principal_civilization_id
- asset_title
- asset_status
  - generating
  - ready
  - failed
  - blocked
  - locked
  - archived
- asset_storage_reference
  nullable
- asset_duration_seconds
  nullable
- asset_visibility_intent
  - internal_only
  - archive_only
  - external_publish_candidate
- created_at
- updated_at

# ============================================================
# 3. CLIP_ASSET
# ============================================================

Recommended meanings:
- clip_asset_id
- source_archive_asset_id
  nullable
- source_session_id
- stream_principal_civilization_id
- clip_title
- clip_status
  - draft
  - ready
  - blocked
  - locked
  - archived
- clip_start_offset_seconds
  nullable
- clip_end_offset_seconds
  nullable
- clip_storage_reference
  nullable
- created_at
- updated_at

# ============================================================
# 4. CLIP_DERIVATION_REFERENCE
# ============================================================

Recommended meanings:
- clip_derivation_reference_id
- clip_asset_id
- source_type
  - archive_asset
  - session
- source_id
- derivation_note
  nullable
- created_at

# ============================================================
# 5. ASSET_REVIEW_STATE
# ============================================================

Recommended meanings:
- asset_review_state_id
- asset_type
  - archive
  - clip
- asset_id
- rights_review_status
  - none
  - pending
  - approved
  - rejected
  - blocked
- safety_review_status
  - none
  - pending
  - approved
  - rejected
  - blocked
- company_approval_status
  - none
  - pending
  - approved
  - rejected
  - blocked
- publish_ready_flag
- updated_at

# ============================================================
# 6. ASSET_GOVERNANCE_STATE
# ============================================================

Recommended meanings:
- asset_governance_state_id
- asset_type
  - archive
  - clip
- asset_id
- publication_block_flag
- hidden_flag
- locked_flag
- suspended_flag
- latest_governance_event_id
  nullable
- updated_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- archive existence
- clip existence
- derivation relation
- review state
- governance restriction state

Canonical asset existence
shall remain separate from publication result.

