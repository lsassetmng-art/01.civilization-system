# ============================================================
# STREAMING OS MODERATION AND APPEAL SCHEDULER / QUEUE / RETRY EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: scheduler-queue-retry-exact-mapping
owner: Boss
prepared_by: Zero

queue_mapping:
- report_intake_normalization_job
  -> queue: streaming.moderation.report.intake
- comment_moderation_state_transition_job
  -> queue: streaming.moderation.comment.transition
- appeal_queue_dispatch_job
  -> queue: streaming.moderation.appeal.dispatch
- re_review_restart_job
  -> queue: streaming.moderation.rereview.restart
- restoration_followup_job
  -> queue: streaming.moderation.restoration.followup

priority_mapping:
- report_intake_normalization_job -> high
- comment_moderation_state_transition_job -> high
- appeal_queue_dispatch_job -> high
- re_review_restart_job -> high
- restoration_followup_job -> medium

scheduler_mapping:
- report_intake_normalization_job -> on report submission
- comment_moderation_state_transition_job -> on moderation decision
- appeal_queue_dispatch_job -> on appeal submission
- re_review_restart_job -> on accepted re-review
- restoration_followup_job -> on restoration decision and daily unresolved sweep

retry_mapping:
- report_intake_normalization_job -> retry yes / max_attempts 8 / backoff short_exponential
- comment_moderation_state_transition_job -> retry yes / max_attempts 8 / backoff short_exponential
- appeal_queue_dispatch_job -> retry yes / max_attempts 6 / backoff exponential
- re_review_restart_job -> retry yes / max_attempts 6 / backoff exponential
- restoration_followup_job -> retry yes / max_attempts 5 / backoff bounded_exponential

