# ============================================================
# STREAMING OS NOTIFICATION AND EVENT EXACT DDL CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: exact-ddl-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

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

  constraint fk_notification_delivery_states_notification_id
    foreign key (notification_record_id)
    references streaming.notification_records (notification_record_id)
    on update cascade
    on delete cascade
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
    ))
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
    ))
);

