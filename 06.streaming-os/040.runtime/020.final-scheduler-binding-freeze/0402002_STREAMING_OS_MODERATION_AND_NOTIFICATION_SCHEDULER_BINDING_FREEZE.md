# ============================================================
# STREAMING OS MODERATION AND NOTIFICATION SCHEDULER BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-scheduler-binding-freeze
owner: Boss
prepared_by: Zero

queue_names:
- streaming.review.queue.dispatch
- streaming.review.ai.execute
- streaming.review.human.assign
- streaming.review.rereview.restart
- streaming.review.restoration.followup
- streaming.moderation.report.intake
- streaming.moderation.comment.transition
- streaming.notify.event.fanout
- streaming.notify.delivery
- streaming.notify.retry
- streaming.notify.review.alert
- streaming.notify.escalation.alert

ownership:
- review queue dispatch -> runtime_worker / review pipeline owner
- review ai execute -> integration_service + runtime_worker
- review human assign -> runtime_worker / review pipeline owner
- review rereview restart -> runtime_worker / review pipeline owner
- review restoration followup -> runtime_worker / review pipeline owner
- moderation report intake -> runtime_worker / moderation owner
- moderation comment transition -> runtime_worker / moderation owner
- notify event fanout -> runtime_worker / notification owner
- notify delivery -> runtime_worker / notification owner
- notify retry -> runtime_worker / notification owner
- notify review alert -> runtime_worker / notification owner
- notify escalation alert -> runtime_worker / notification owner

retry_intervals:
- streaming.review.queue.dispatch -> 30s, 2m, 10m
- streaming.review.ai.execute -> 1m, 10m, 30m
- streaming.review.human.assign -> 1m, 5m, 15m
- streaming.review.rereview.restart -> 1m, 10m, 30m
- streaming.review.restoration.followup -> 5m, 30m, 2h
- streaming.moderation.report.intake -> 30s, 2m, 10m
- streaming.moderation.comment.transition -> 30s, 2m, 10m
- streaming.notify.event.fanout -> 15s, 1m, 5m
- streaming.notify.delivery -> 30s, 2m, 10m, 30m
- streaming.notify.retry -> 10m, 30m, 2h, 6h
- streaming.notify.review.alert -> 1m, 10m, 30m
- streaming.notify.escalation.alert -> 1m, 10m, 30m

scan_windows:
- overdue review scan
  -> every 10 minutes
- review alert reconciliation
  -> every 15 minutes
- escalation alert reconciliation
  -> every 15 minutes
- notification retry sweep
  -> every 10 minutes
- restoration unresolved sweep
  -> every 6 hours

