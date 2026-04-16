# ============================================================
# STREAMING OS VIEWER DISCOVERY AND CONTINUITY RUNTIME JOBS
# ============================================================

status: canonical-draft
system: streaming-os
domain: viewer-discovery-and-continuity-runtime-jobs
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY JOBS
# ============================================================

Recommended runtime jobs:
- viewer_home_feed_refresh_job
- search_history_compaction_job
- watch_history_rollup_job
- follow_notification_eligibility_refresh_job
- playlist_consistency_reindex_job
- watch_queue_reorder_repair_job

# ============================================================
# 2. WORKER RESPONSIBILITIES
# ============================================================

Recommended workers:
- home feed worker
- search history worker
- watch history worker
- follow continuity worker
- playlist worker
- watch queue worker

# ============================================================
# 3. TRIGGER PRINCIPLE
# ============================================================

Typical triggers:
- watch completed
- follow state changed
- playlist mutated
- queue reordered
- scheduled discovery refresh window reached

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Viewer-side runtime handling
shall preserve separate jobs for:
- home/discovery refresh
- search/history maintenance
- follow continuity refresh
- playlist consistency
- watch queue continuity

