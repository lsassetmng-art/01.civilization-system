# ============================================================
# STREAMING OS VIEWER CONTINUITY SCHEDULER / QUEUE / RETRY EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: scheduler-queue-retry-exact-mapping
owner: Boss
prepared_by: Zero

queue_mapping:
- viewer_home_feed_refresh_job
  -> queue: streaming.viewer.feed.refresh
- search_history_compaction_job
  -> queue: streaming.viewer.search.compaction
- watch_history_rollup_job
  -> queue: streaming.viewer.watch.rollup
- follow_notification_eligibility_refresh_job
  -> queue: streaming.viewer.follow.refresh
- playlist_consistency_reindex_job
  -> queue: streaming.viewer.playlist.reindex
- watch_queue_reorder_repair_job
  -> queue: streaming.viewer.queue.repair

priority_mapping:
- viewer_home_feed_refresh_job -> medium
- search_history_compaction_job -> low
- watch_history_rollup_job -> medium
- follow_notification_eligibility_refresh_job -> medium
- playlist_consistency_reindex_job -> medium
- watch_queue_reorder_repair_job -> high

scheduler_mapping:
- viewer_home_feed_refresh_job -> scheduled refresh and major relevance trigger
- search_history_compaction_job -> daily maintenance window
- watch_history_rollup_job -> periodic short window
- follow_notification_eligibility_refresh_job -> on follow mutation and periodic reconciliation
- playlist_consistency_reindex_job -> on playlist mutation and nightly repair
- watch_queue_reorder_repair_job -> on queue mutation and short fallback sweep

retry_mapping:
- viewer_home_feed_refresh_job -> retry yes / max_attempts 4 / backoff exponential
- search_history_compaction_job -> retry yes / max_attempts 3 / backoff linear
- watch_history_rollup_job -> retry yes / max_attempts 4 / backoff exponential
- follow_notification_eligibility_refresh_job -> retry yes / max_attempts 5 / backoff exponential
- playlist_consistency_reindex_job -> retry yes / max_attempts 5 / backoff bounded_exponential
- watch_queue_reorder_repair_job -> retry yes / max_attempts 6 / backoff short_exponential

