# ============================================================
# STREAMING OS CORPORATE SCHEDULER BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-scheduler-binding-freeze
owner: Boss
prepared_by: Zero

queue_names:
- streaming.corporate.channel.refresh
- streaming.corporate.oversight.refresh
- streaming.corporate.affiliation.sync
- streaming.corporate.stream.visibility

ownership:
- corporate channel refresh -> runtime_worker / corporate oversight owner
- corporate oversight refresh -> runtime_worker / corporate oversight owner
- corporate affiliation sync -> runtime_worker / corporate oversight owner
- corporate stream visibility -> runtime_worker / corporate oversight owner

retry_intervals:
- streaming.corporate.channel.refresh -> 1m, 10m, 30m
- streaming.corporate.oversight.refresh -> 1m, 10m, 30m
- streaming.corporate.affiliation.sync -> 1m, 5m, 15m, 1h
- streaming.corporate.stream.visibility -> 1m, 10m, 30m

scan_windows:
- affiliation sync repair
  -> every 6 hours
- oversight summary refresh
  -> every 6 hours
- company-owned stream visibility refresh
  -> every 30 minutes
- channel profile reconciliation
  -> every 24 hours

freeze_rules:
- corporate queues must not own canonical stream lifecycle mutation
- corporate queues may refresh projections and oversight summaries only
- affiliation sync must not redefine historical ownership

