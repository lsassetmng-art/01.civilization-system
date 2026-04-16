# ============================================================
# STREAMING OS CREATOR AND VIEWER SCHEDULER BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-scheduler-binding-freeze
owner: Boss
prepared_by: Zero

queue_names:
- streaming.creator.summary.refresh
- streaming.creator.draft.autosave
- streaming.creator.upload.recovery
- streaming.creator.publish.validation
- streaming.creator.analytics.refresh
- streaming.viewer.feed.refresh
- streaming.viewer.search.compaction
- streaming.viewer.watch.rollup
- streaming.viewer.follow.refresh
- streaming.viewer.playlist.reindex
- streaming.viewer.queue.repair

ownership:
- creator summary refresh -> runtime_worker / creator platform owner
- creator draft autosave -> runtime_worker / creator platform owner
- creator upload recovery -> runtime_worker / creator platform owner
- creator publish validation -> runtime_worker / creator platform owner
- creator analytics refresh -> runtime_worker / creator platform owner
- viewer feed refresh -> runtime_worker / viewer discovery owner
- viewer search compaction -> runtime_worker / viewer continuity owner
- viewer watch rollup -> runtime_worker / viewer continuity owner
- viewer follow refresh -> runtime_worker / viewer continuity owner
- viewer playlist reindex -> runtime_worker / viewer continuity owner
- viewer queue repair -> runtime_worker / viewer continuity owner

retry_intervals:
- streaming.creator.summary.refresh -> 1m, 10m, 30m
- streaming.creator.draft.autosave -> 15s, 1m, 5m
- streaming.creator.upload.recovery -> 1m, 5m, 15m, 1h
- streaming.creator.publish.validation -> 30s, 2m, 10m
- streaming.creator.analytics.refresh -> 10m, 1h, 6h
- streaming.viewer.feed.refresh -> 1m, 5m, 15m
- streaming.viewer.search.compaction -> 10m, 1h
- streaming.viewer.watch.rollup -> 1m, 5m, 15m
- streaming.viewer.follow.refresh -> 1m, 10m, 30m
- streaming.viewer.playlist.reindex -> 30s, 2m, 10m
- streaming.viewer.queue.repair -> 15s, 1m, 5m

scan_windows:
- creator analytics daily refresh
  -> every 6 hours
- creator analytics monthly refresh
  -> every 24 hours
- viewer search compaction
  -> every 24 hours
- viewer watch rollup
  -> every 15 minutes
- viewer feed refresh baseline
  -> every 30 minutes
- playlist reindex repair
  -> every 6 hours
- watch queue repair sweep
  -> every 10 minutes

