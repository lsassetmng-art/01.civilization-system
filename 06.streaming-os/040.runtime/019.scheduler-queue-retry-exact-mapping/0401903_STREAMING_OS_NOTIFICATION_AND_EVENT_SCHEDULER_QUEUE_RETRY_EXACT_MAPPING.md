# ============================================================
# STREAMING OS NOTIFICATION AND EVENT SCHEDULER / QUEUE / RETRY EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: scheduler-queue-retry-exact-mapping
owner: Boss
prepared_by: Zero

queue_mapping:
- platform_event_fanout_job
  -> queue: streaming.notify.event.fanout
- notification_delivery_job
  -> queue: streaming.notify.delivery
- notification_retry_job
  -> queue: streaming.notify.retry
- review_alert_refresh_job
  -> queue: streaming.notify.review.alert
- escalation_alert_refresh_job
  -> queue: streaming.notify.escalation.alert

priority_mapping:
- platform_event_fanout_job -> high
- notification_delivery_job -> high
- notification_retry_job -> medium
- review_alert_refresh_job -> high
- escalation_alert_refresh_job -> high

scheduler_mapping:
- platform_event_fanout_job -> on platform event creation
- notification_delivery_job -> on fanout result
- notification_retry_job -> delayed retry schedule
- review_alert_refresh_job -> on review queue mutation and periodic overdue scan
- escalation_alert_refresh_job -> on escalation condition and periodic overdue scan

retry_mapping:
- platform_event_fanout_job -> retry yes / max_attempts 6 / backoff short_exponential
- notification_delivery_job -> retry yes / max_attempts 10 / backoff bounded_exponential
- notification_retry_job -> retry yes / max_attempts 12 / backoff progressive_bounded
- review_alert_refresh_job -> retry yes / max_attempts 5 / backoff exponential
- escalation_alert_refresh_job -> retry yes / max_attempts 5 / backoff exponential

