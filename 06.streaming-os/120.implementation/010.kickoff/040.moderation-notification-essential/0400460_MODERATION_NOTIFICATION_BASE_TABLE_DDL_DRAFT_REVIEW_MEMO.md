# ============================================================
# MODERATION NOTIFICATION BASE TABLE DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_table_plan:

review_queue_items:
- review_queue_item_id: uuid primary key
- target_type: text not null
- target_id: uuid not null
- priority_class: text not null
- queue_state: text not null
- due_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ai_review_jobs:
- ai_review_job_id: uuid primary key
- review_queue_item_id: uuid not null
- job_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

human_review_tasks:
- human_review_task_id: uuid primary key
- review_queue_item_id: uuid not null
- assigned_actor_id: uuid null
- task_state: text not null
- due_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

review_decision_records:
- review_decision_record_id: uuid primary key
- review_queue_item_id: uuid not null
- decision_actor_id: uuid null
- decision_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

review_dimension_results:
- review_dimension_result_id: uuid primary key
- review_decision_record_id: uuid not null
- dimension_code: text not null
- dimension_state: text not null
- note: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

re_review_requests:
- re_review_request_id: uuid primary key
- review_queue_item_id: uuid not null
- request_reason_code: text not null
- request_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

restoration_review_records:
- restoration_review_record_id: uuid primary key
- review_queue_item_id: uuid not null
- restoration_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

comment_records:
- comment_record_id: uuid primary key
- author_principal_id: uuid null
- target_type: text not null
- target_id: uuid not null
- comment_body: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

comment_moderation_states:
- comment_moderation_state_id: uuid primary key
- comment_record_id: uuid not null
- moderation_state: text not null
- updated_at: timestamptz not null
- created_at: timestamptz not null

report_records:
- report_record_id: uuid primary key
- reporter_principal_id: uuid null
- target_type: text not null
- target_id: uuid not null
- report_reason_code: text not null
- evidence_refs_json: jsonb null
- created_at: timestamptz not null
- updated_at: timestamptz not null

appeal_records:
- appeal_record_id: uuid primary key
- requester_principal_id: uuid null
- target_type: text not null
- target_id: uuid not null
- appeal_reason_code: text not null
- evidence_refs_json: jsonb null
- created_at: timestamptz not null
- updated_at: timestamptz not null

moderation_restoration_records:
- moderation_restoration_record_id: uuid primary key
- target_type: text not null
- target_id: uuid not null
- restoration_state: text not null
- note: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

platform_event_records:
- platform_event_record_id: uuid primary key
- event_type: text not null
- target_type: text null
- target_id: uuid null
- created_at: timestamptz not null
- updated_at: timestamptz not null

notification_records:
- notification_record_id: uuid primary key
- recipient_principal_id: uuid not null
- platform_event_record_id: uuid not null
- notification_type: text not null
- title: text not null
- preview_text: text null
- detail_text: text null
- read_flag: boolean not null default false
- created_at: timestamptz not null
- updated_at: timestamptz not null

notification_delivery_states:
- notification_delivery_state_id: uuid primary key
- notification_record_id: uuid not null
- delivery_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

review_alert_records:
- review_alert_record_id: uuid primary key
- review_queue_item_id: uuid not null
- priority_class: text not null
- alert_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

escalation_alert_records:
- escalation_alert_record_id: uuid primary key
- review_queue_item_id: uuid not null
- priority_class: text not null
- alert_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

draft_constraint_plan:
- primary keys on all ids
- foreign keys from review pipeline dependents to queue/decision roots
- foreign keys from comment moderation to comment root
- foreign key from notification to platform event root
- foreign key from delivery state to notification root
- check constraints on all closed state/type families
- alert families remain separate and do not collapse silently

open_review_points:
- exact FK actions across queue/job/task/decision chain
- whether actor linkage should use direct principal FK or generic actor root later
- whether some review or restoration tables collapse after DB review or remain separate
- whether preview/detail text remains fully stored or partially derived
- whether delivery state needs a richer runtime-only companion family later
