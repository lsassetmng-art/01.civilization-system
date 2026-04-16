# ============================================================
# STREAMING OS CORPORATE CHANNEL AND AFFILIATION SCHEDULER / QUEUE / RETRY EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: scheduler-queue-retry-exact-mapping
owner: Boss
prepared_by: Zero

queue_mapping:
- channel_profile_refresh_job
  -> queue: streaming.corporate.channel.refresh
- corporate_oversight_summary_refresh_job
  -> queue: streaming.corporate.oversight.refresh
- affiliated_streamer_reference_sync_job
  -> queue: streaming.corporate.affiliation.sync
- company_owned_stream_visibility_refresh_job
  -> queue: streaming.corporate.stream.visibility

priority_mapping:
- channel_profile_refresh_job -> medium
- corporate_oversight_summary_refresh_job -> medium
- affiliated_streamer_reference_sync_job -> high
- company_owned_stream_visibility_refresh_job -> medium

scheduler_mapping:
- channel_profile_refresh_job -> on channel mutation and nightly reconciliation
- corporate_oversight_summary_refresh_job -> on oversight mutation and scheduled summary refresh
- affiliated_streamer_reference_sync_job -> on affiliation mutation and periodic repair
- company_owned_stream_visibility_refresh_job -> on stream ownership-related mutation and scheduled refresh

retry_mapping:
- channel_profile_refresh_job -> retry yes / max_attempts 4 / backoff exponential
- corporate_oversight_summary_refresh_job -> retry yes / max_attempts 4 / backoff exponential
- affiliated_streamer_reference_sync_job -> retry yes / max_attempts 6 / backoff bounded_exponential
- company_owned_stream_visibility_refresh_job -> retry yes / max_attempts 5 / backoff exponential

