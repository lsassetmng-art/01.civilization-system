# ============================================================
# STREAMING OS ASSET AND PUBLISH PHYSICAL SCHEMA CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: physical-schema-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

# ============================================================
# 1. PURPOSE
# ============================================================

This document proposes physical-schema candidate grouping
for archive,
clip,
and external publish data.

# ============================================================
# 2. CANDIDATE TABLE FAMILIES
# ============================================================

Recommended table families:
- archive_assets
- clip_assets
- clip_derivation_refs
- asset_review_states
- asset_governance_states
- external_publish_targets
- external_publish_settings
- external_publish_jobs
- external_publish_results

All listed candidate table families
are assumed to be placed under the `streaming` schema.

# ============================================================
# 3. FOREIGN KEY DIRECTION CANDIDATE
# ============================================================

Recommended direction:
- archive_assets reference streaming_sessions
- clip_assets reference source session and optionally archive asset
- clip_derivation_refs reference clip_assets and source objects
- review/governance states reference archive or clip assets
- publish settings/jobs/results reference archive or clip assets

# ============================================================
# 4. INDEXING CANDIDATE
# ============================================================

Likely indexes:
- by session_id
- by asset_status
- by publish_ready_flag
- by external_publish_status
- by external_publish_target_type
- by updated_at
- by publish_schedule_at

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

Physical schema for asset and publish data
should preserve the distinction between
canonical asset existence,
review state,
governance state,
publish settings,
job execution,
and publish result.

