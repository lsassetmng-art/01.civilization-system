# ============================================================
# STREAMING OS MODERATION AND NOTIFICATION EXECUTABLE DDL FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: executable-ddl-freeze
owner: Boss
prepared_by: Zero

sql:
create table if not exists streaming.review_queue_items (
  review_queue_item_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  queue_type text not null,
  review_stage text not null,
  priority_level text not null,
  escalation_flag boolean not null default false,
  latest_review_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_review_queue_items_target_type
    check (target_type in (
      'uploaded_video',
      'archive_asset',
      'clip_asset',
      'publish_request',
      'monetization_context'
    )),

  constraint ck_review_queue_items_queue_type
    check (queue_type in (
      'ai_review',
      'human_review',
      'escalated_review',
      're_review'
    )),

  constraint ck_review_queue_items_review_stage
    check (review_stage in (
      'queued',
      'running',
      'waiting_human',
      'decided',
      'blocked',
      'closed'
    )),

  constraint ck_review_queue_items_priority_level
    check (priority_level in (
      'low',
      'medium',
      'high',
      'critical'
    ))
);

create index if not exists ix_review_queue_items_stage
  on streaming.review_queue_items (review_stage, priority_level, created_at);

create index if not exists ix_review_queue_items_target
  on streaming.review_queue_items (target_type, target_id);

create table if not exists streaming.ai_review_jobs (
  ai_review_job_id uuid primary key,
  review_queue_item_id uuid not null,
  ai_review_status text not null,
  suspected_rights_issue_flag boolean not null default false,
  suspected_safety_issue_flag boolean not null default false,
  suspected_age_gate_flag boolean not null default false,
  suspected_ad_suitability_issue_flag boolean not null default false,
  suspected_publish_block_flag boolean not null default false,
  human_review_required_flag boolean not null default false,
  ai_review_note text null,
  started_at timestamptz null,
  completed_at timestamptz null,

  constraint ck_ai_review_jobs_status
    check (ai_review_status in (
      'queued',
      'running',
      'completed',
      'failed',
      'escalated'
    )),

  constraint fk_ai_review_jobs_queue_item
    foreign key (review_queue_item_id)
    references streaming.review_queue_items (review_queue_item_id)
    on update cascade
    on delete cascade
);

create index if not exists ix_ai_review_jobs_queue_item
  on streaming.ai_review_jobs (review_queue_item_id);

create table if not exists streaming.human_review_tasks (
  human_review_task_id uuid primary key,
  review_queue_item_id uuid not null,
  assigned_reviewer_subject_id uuid null,
  human_review_status text not null,
  review_note text null,
  assigned_at timestamptz null,
  decided_at timestamptz null,

  constraint ck_human_review_tasks_status
    check (human_review_status in (
      'queued',
      'assigned',
      'in_review',
      'decided',
      'closed'
    )),

  constraint fk_human_review_tasks_queue_item
    foreign key (review_queue_item_id)
    references streaming.review_queue_items (review_queue_item_id)
    on update cascade
    on delete cascade
);

create index if not exists ix_human_review_tasks_queue_item
  on streaming.human_review_tasks (review_queue_item_id);

create index if not exists ix_human_review_tasks_assigned
  on streaming.human_review_tasks (assigned_reviewer_subject_id, human_review_status);

create table if not exists streaming.review_decision_records (
  review_decision_record_id uuid primary key,
  review_queue_item_id uuid not null,
  final_decision_type text not null,
  decided_by_subject_id uuid null,
  decision_note text null,
  decided_at timestamptz not null default now(),

  constraint ck_review_decision_records_type
    check (final_decision_type in (
      'approve',
      'approve_with_restriction',
      'age_restricted',
      'monetization_restricted',
      'ad_restricted',
      'blocked',
      'correction_required',
      're_review_required'
    )),

  constraint fk_review_decision_records_queue_item
    foreign key (review_queue_item_id)
    references streaming.review_queue_items (review_queue_item_id)
    on update cascade
    on delete cascade
);

create index if not exists ix_review_decision_records_queue_item
  on streaming.review_decision_records (review_queue_item_id, decided_at desc);

create table if not exists streaming.review_dimension_results (
  review_dimension_result_id uuid primary key,
  review_decision_record_id uuid not null,
  dimension_type text not null,
  dimension_result text not null,
  dimension_reason_note text null,
  updated_at timestamptz not null default now(),

  constraint ck_review_dimension_results_type
    check (dimension_type in (
      'rights',
      'safety',
      'age',
      'ad_suitability',
      'publication',
      'monetization'
    )),

  constraint ck_review_dimension_results_result
    check (dimension_result in (
      'none',
      'approved',
      'restricted',
      'rejected',
      'blocked',
      'needs_recheck'
    )),

  constraint uq_review_dimension_results_decision_dimension
    unique (review_decision_record_id, dimension_type),

  constraint fk_review_dimension_results_decision
    foreign key (review_decision_record_id)
    references streaming.review_decision_records (review_decision_record_id)
    on update cascade
    on delete cascade
);

create table if not exists streaming.re_review_requests (
  re_review_request_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  requested_by_subject_id uuid null,
  re_review_reason text null,
  re_review_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_re_review_requests_status
    check (re_review_status in (
      'requested',
      'accepted',
      'rejected',
      'completed'
    ))
);

create table if not exists streaming.restoration_review_records (
  restoration_review_record_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  restoration_status text not null,
  restoration_note text null,
  reviewed_by_subject_id uuid null,
  updated_at timestamptz not null default now(),

  constraint ck_restoration_review_records_status
    check (restoration_status in (
      'requested',
      'under_review',
      'restored',
      'denied'
    ))
);

create table if not exists streaming.comment_records (
  comment_record_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  author_subject_id uuid not null,
  comment_body text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_comment_records_target_type
    check (target_type in (
      'video_asset',
      'live_session',
      'clip_asset'
    ))
);

create index if not exists ix_comment_records_target
  on streaming.comment_records (target_type, target_id, created_at desc);

create table if not exists streaming.comment_moderation_states (
  comment_moderation_state_id uuid primary key,
  comment_record_id uuid not null,
  moderation_status text not null,
  moderation_reason_note text null,
  moderated_by_subject_id uuid null,
  updated_at timestamptz not null default now(),

  constraint ck_comment_moderation_states_status
    check (moderation_status in (
      'visible',
      'hidden',
      'removed',
      'restricted',
      'restored'
    )),

  constraint uq_comment_moderation_states_comment
    unique (comment_record_id),

  constraint fk_comment_moderation_states_comment
    foreign key (comment_record_id)
    references streaming.comment_records (comment_record_id)
    on update cascade
    on delete cascade
);

create table if not exists streaming.report_records (
  report_record_id uuid primary key,
  report_target_type text not null,
  report_target_id uuid not null,
  reported_by_subject_id uuid null,
  report_reason_code text not null,
  report_note text null,
  report_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_report_records_target_type
    check (report_target_type in (
      'video_asset',
      'live_session',
      'clip_asset',
      'comment',
      'channel',
      'creator'
    )),

  constraint ck_report_records_status
    check (report_status in (
      'submitted',
      'in_review',
      'resolved',
      'rejected'
    ))
);

create index if not exists ix_report_records_status
  on streaming.report_records (report_status, created_at);

create table if not exists streaming.appeal_records (
  appeal_record_id uuid primary key,
  appeal_target_type text not null,
  appeal_target_id uuid not null,
  requested_by_subject_id uuid null,
  appeal_reason_note text null,
  appeal_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_appeal_records_status
    check (appeal_status in (
      'submitted',
      'accepted',
      'rejected',
      'completed'
    ))
);

create index if not exists ix_appeal_records_status
  on streaming.appeal_records (appeal_status, created_at);

create table if not exists streaming.moderation_restoration_records (
  moderation_restoration_record_id uuid primary key,
  restoration_target_type text not null,
  restoration_target_id uuid not null,
  restoration_status text not null,
  restoration_note text null,
  reviewed_by_subject_id uuid null,
  updated_at timestamptz not null default now(),

  constraint ck_moderation_restoration_records_status
    check (restoration_status in (
      'requested',
      'under_review',
      'restored',
      'denied'
    ))
);

create table if not exists streaming.platform_event_records (
  platform_event_record_id uuid primary key,
  event_category text not null,
  target_type text null,
  target_id uuid null,
  event_note text null,
  created_at timestamptz not null default now(),

  constraint ck_platform_event_records_category
    check (event_category in (
      'live_start',
      'follow_event',
      'publish_event',
      'review_event',
      'moderation_event',
      'ranking_event',
      'restoration_event'
    ))
);

create index if not exists ix_platform_event_records_category_created
  on streaming.platform_event_records (event_category, created_at desc);

create table if not exists streaming.notification_records (
  notification_record_id uuid primary key,
  recipient_subject_id uuid not null,
  notification_category text not null,
  notification_title text not null,
  notification_body text null,
  read_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_notification_records_category
    check (notification_category in (
      'live_start',
      'follow_event',
      'publish_event',
      'review_outcome',
      'ranking_event',
      'moderation_event',
      'restoration_event'
    ))
);

create index if not exists ix_notification_records_recipient_created
  on streaming.notification_records (recipient_subject_id, created_at desc);

create index if not exists ix_notification_records_recipient_read
  on streaming.notification_records (recipient_subject_id, read_flag, created_at desc);

create table if not exists streaming.notification_delivery_states (
  notification_delivery_state_id uuid primary key,
  notification_record_id uuid not null,
  delivery_status text not null,
  delivered_at timestamptz null,
  updated_at timestamptz not null default now(),

  constraint ck_notification_delivery_states_status
    check (delivery_status in (
      'pending',
      'delivered',
      'failed',
      'dismissed'
    )),

  constraint uq_notification_delivery_states_notification
    unique (notification_record_id),

  constraint fk_notification_delivery_states_notification
    foreign key (notification_record_id)
    references streaming.notification_records (notification_record_id)
    on update cascade
    on delete cascade
);

create table if not exists streaming.review_alert_records (
  review_alert_record_id uuid primary key,
  review_queue_item_id uuid null,
  alert_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_review_alert_records_status
    check (alert_status in (
      'active',
      'acknowledged',
      'closed'
    )),

  constraint fk_review_alert_records_queue_item
    foreign key (review_queue_item_id)
    references streaming.review_queue_items (review_queue_item_id)
    on update cascade
    on delete set null
);

create table if not exists streaming.escalation_alert_records (
  escalation_alert_record_id uuid primary key,
  review_queue_item_id uuid null,
  escalation_stage text not null,
  escalation_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_escalation_alert_records_stage
    check (escalation_stage in (
      'ai_to_human',
      'overdue_review',
      'restoration_required'
    )),

  constraint ck_escalation_alert_records_status
    check (escalation_status in (
      'active',
      'acknowledged',
      'closed'
    )),

  constraint fk_escalation_alert_records_queue_item
    foreign key (review_queue_item_id)
    references streaming.review_queue_items (review_queue_item_id)
    on update cascade
    on delete set null
);

