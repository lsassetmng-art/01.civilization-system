# ============================================================
# STREAMING OS MODERATION AND NOTIFICATION TABLE FAMILY RLS BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

moderation_and_notification_table_families:
- review_queue_items
- ai_review_jobs
- human_review_tasks
- review_decision_records
- review_dimension_results
- re_review_requests
- restoration_review_records
- comment_records
- comment_moderation_states
- report_records
- appeal_records
- moderation_restoration_records
- platform_event_records
- notification_records
- notification_delivery_states
- review_alert_records
- escalation_alert_records

binding_rules:

review_queue_items / ai_review_jobs / human_review_tasks / review_decision_records / review_dimension_results:
- read:
  assigned_reviewer,
  moderation_operator,
  platform_operator,
  runtime_worker
- mutate:
  assigned_reviewer within assignment scope,
  moderation_operator,
  runtime_worker for system propagation
- deny:
  public viewers,
  unrelated creators

re_review_requests / restoration_review_records:
- read:
  affected requester for limited outcome subset,
  assigned_reviewer,
  moderation_operator,
  platform_operator
- mutate:
  assigned_reviewer,
  moderation_operator,
  runtime_worker for system propagation

comment_records:
- public read:
  allowed only for comments that remain effectively visible by policy
- mutate create:
  viewer_self / creator_self through canonical submit path
- mutate update/delete:
  moderation path only,
  not arbitrary author overwrite of canonical moderation state

comment_moderation_states:
- read:
  moderation_operator,
  assigned_reviewer,
  platform_operator,
  limited derived visibility to affected owner where policy allows
- mutate:
  moderation_operator,
  runtime_worker for propagation

report_records:
- read:
  reporting subject for owned submitted subset,
  moderation_operator,
  platform_operator
- mutate create:
  authenticated reporting subject
- mutate status:
  moderation_operator,
  assigned_reviewer where assigned,
  runtime_worker for propagation

appeal_records:
- read:
  requester for own subset,
  moderation_operator,
  assigned_reviewer,
  platform_operator
- mutate create:
  affected requester
- mutate status:
  moderation_operator,
  assigned_reviewer,
  runtime_worker

moderation_restoration_records:
- read:
  affected requester for own outcome subset,
  moderation_operator,
  platform_operator
- mutate:
  moderation_operator,
  assigned_reviewer where assigned,
  runtime_worker

platform_event_records:
- read:
  platform_operator,
  runtime_worker,
  integration_service,
  recipient-scoped derived read paths only
- mutate:
  runtime_worker,
  integration_service

notification_records / notification_delivery_states:
- read:
  recipient subject,
  platform_operator,
  runtime_worker for delivery
- mutate recipient-facing:
  recipient may mutate read_flag only on own records
- mutate system-facing:
  runtime_worker,
  integration_service,
  platform_operator by support path only

review_alert_records / escalation_alert_records:
- read:
  assigned_reviewer,
  moderation_operator,
  platform_operator
- mutate:
  assigned_reviewer,
  moderation_operator,
  runtime_worker

