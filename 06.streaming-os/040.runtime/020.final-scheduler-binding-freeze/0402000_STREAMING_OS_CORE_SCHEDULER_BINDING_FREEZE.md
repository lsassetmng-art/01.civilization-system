# ============================================================
# STREAMING OS CORE SCHEDULER BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-scheduler-binding-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE QUEUE NAMES
# ============================================================

queue_names:
- streaming.session.lifecycle
- streaming.asset.archive.generate
- streaming.asset.clip.derive
- streaming.publish.dispatch
- streaming.publish.retry
- streaming.monetization.tip.execute
- streaming.monetization.autotip.evaluate
- streaming.reaction.rollup
- streaming.ranking.generate
- streaming.ad.display.record

# ============================================================
# 2. OWNERSHIP
# ============================================================

ownership:
- session lifecycle queue -> runtime_worker / session runtime owner
- archive generate queue -> runtime_worker / asset runtime owner
- clip derive queue -> runtime_worker / asset runtime owner
- publish dispatch queue -> integration_service + runtime_worker
- publish retry queue -> runtime_worker
- tip execute queue -> runtime_worker
- autotip evaluate queue -> runtime_worker
- reaction rollup queue -> runtime_worker
- ranking generate queue -> runtime_worker
- ad display record queue -> runtime_worker

# ============================================================
# 3. RETRY INTERVALS
# ============================================================

retry_intervals:
- streaming.session.lifecycle
  -> 30s, 2m, 10m
- streaming.asset.archive.generate
  -> 1m, 5m, 15m
- streaming.asset.clip.derive
  -> 1m, 5m, 15m
- streaming.publish.dispatch
  -> 1m, 10m, 30m, 2h
- streaming.publish.retry
  -> 10m, 30m, 2h, 6h
- streaming.monetization.tip.execute
  -> 30s, 2m, 10m
- streaming.monetization.autotip.evaluate
  -> 30s, 5m, 15m
- streaming.reaction.rollup
  -> 1m, 5m
- streaming.ranking.generate
  -> 5m, 30m
- streaming.ad.display.record
  -> 30s, 2m, 10m

# ============================================================
# 4. SCAN WINDOWS
# ============================================================

scan_windows:
- ranking_generate_daily
  -> every 15 minutes
- ranking_generate_monthly
  -> every 6 hours
- ranking_generate_yearly
  -> every 24 hours
- publish_retry_scan
  -> every 10 minutes
- archive_generate_repair_scan
  -> every 15 minutes

