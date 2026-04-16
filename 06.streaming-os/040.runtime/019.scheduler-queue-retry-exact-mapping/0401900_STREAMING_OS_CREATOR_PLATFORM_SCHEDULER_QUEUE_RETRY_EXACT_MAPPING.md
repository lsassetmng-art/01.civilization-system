# ============================================================
# STREAMING OS CREATOR PLATFORM SCHEDULER / QUEUE / RETRY EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: scheduler-queue-retry-exact-mapping
owner: Boss
prepared_by: Zero

# ============================================================
# 1. JOB FAMILY
# ============================================================

Covered jobs:
- creator_profile_summary_refresh_job
- creator_studio_draft_autosave_job
- upload_preparation_recovery_job
- publish_preparation_validation_job
- creator_analytics_snapshot_refresh_job

# ============================================================
# 2. QUEUE MAPPING
# ============================================================

queue_mapping:
- creator_profile_summary_refresh_job
  -> queue: streaming.creator.summary.refresh
- creator_studio_draft_autosave_job
  -> queue: streaming.creator.draft.autosave
- upload_preparation_recovery_job
  -> queue: streaming.creator.upload.recovery
- publish_preparation_validation_job
  -> queue: streaming.creator.publish.validation
- creator_analytics_snapshot_refresh_job
  -> queue: streaming.creator.analytics.refresh

# ============================================================
# 3. PRIORITY MAPPING
# ============================================================

priority_mapping:
- creator_profile_summary_refresh_job
  -> medium
- creator_studio_draft_autosave_job
  -> high
- upload_preparation_recovery_job
  -> high
- publish_preparation_validation_job
  -> high
- creator_analytics_snapshot_refresh_job
  -> medium

# ============================================================
# 4. SCHEDULER MAPPING
# ============================================================

scheduler_mapping:
- creator_profile_summary_refresh_job
  -> on creator-side mutation and nightly reconciliation
- creator_studio_draft_autosave_job
  -> event-driven and short periodic fallback
- upload_preparation_recovery_job
  -> periodic recovery scan
- publish_preparation_validation_job
  -> on publish request and pre-scheduled publish window
- creator_analytics_snapshot_refresh_job
  -> daily / monthly / yearly / overall windows

# ============================================================
# 5. RETRY MAPPING
# ============================================================

retry_mapping:
- creator_profile_summary_refresh_job
  -> retry yes
  -> max_attempts 5
  -> backoff exponential
- creator_studio_draft_autosave_job
  -> retry yes
  -> max_attempts 8
  -> backoff short_exponential
- upload_preparation_recovery_job
  -> retry yes
  -> max_attempts 12
  -> backoff bounded_exponential
- publish_preparation_validation_job
  -> retry yes
  -> max_attempts 6
  -> backoff exponential
- creator_analytics_snapshot_refresh_job
  -> retry yes
  -> max_attempts 4
  -> backoff linear_then_exponential

