# TALENT GROWTH BUSINESS EVENT OUTBOX NOTIFICATION FIXED

status: draft-business-event-outbox-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の業務イベント、
outbox、
通知生成、
配信連携の骨格を固定するための資料である。

前提:
- 通知は direct send ではなく event-first で扱う
- DB更新と event 発行は分離しない
- notification は outbox から非同期配信する
- 共通部品設計ではなく、TalentGrowth 本体責務として定義する
- BusinessOS 側通知基盤へ接続する場合でも、
  TalentGrowth 側で発行責務を明確に持つ

# 1. 設計原則
- business state change first
- outbox append only
- notification is derived from business event
- event payload is minimal but traceable
- retry is infrastructure concern, not screen concern
- user-facing message text and event payload are分離する
- audit_trace_id を event / notification に引き継ぐ

# 2. event domain 一覧
- evaluation
- certification
- growth_plan
- recommendation
- calibration
- successor
- export
- ai_assist
- system_job

# 3. event naming rule
format:
- tg.<domain>.<entity>.<action>

examples:
- tg.evaluation.sheet.self_review_submitted
- tg.evaluation.sheet.manager_review_submitted
- tg.evaluation.sheet.sent_back
- tg.evaluation.sheet.approved
- tg.evaluation.sheet.published
- tg.certification.item.expiring_soon
- tg.certification.item.renewed
- tg.growth_plan.plan.created
- tg.growth_plan.plan.review_due
- tg.export.job.completed
- tg.ai_assist.draft.generated

# 4. 必須business events

## 4-1. evaluation events
- tg.evaluation.sheet.created
- tg.evaluation.sheet.self_review_saved
- tg.evaluation.sheet.self_review_submitted
- tg.evaluation.sheet.manager_review_saved
- tg.evaluation.sheet.manager_review_submitted
- tg.evaluation.sheet.sent_back
- tg.evaluation.sheet.hr_review_saved
- tg.evaluation.sheet.calibration_saved
- tg.evaluation.sheet.approved
- tg.evaluation.sheet.published
- tg.evaluation.sheet.reopened

## 4-2. certification events
- tg.certification.item.created
- tg.certification.item.updated
- tg.certification.item.expiring_soon
- tg.certification.item.expired
- tg.certification.item.renewal_started
- tg.certification.item.renewed

## 4-3. growth plan events
- tg.growth_plan.plan.created
- tg.growth_plan.plan.updated
- tg.growth_plan.action.progress_updated
- tg.growth_plan.plan.review_due
- tg.growth_plan.plan.completed
- tg.growth_plan.recommendation.accepted
- tg.growth_plan.recommendation.rejected

## 4-4. calibration / successor / export / AI events
- tg.calibration.session.created
- tg.calibration.session.closed
- tg.successor.candidate.created
- tg.successor.candidate.updated
- tg.export.job.requested
- tg.export.job.completed
- tg.export.job.failed
- tg.ai_assist.draft.generated
- tg.ai_assist.bias_check.completed

# 5. outbox table 方針
TalentGrowth 専用 outbox table を持つ。

recommended table:
- tg_outbox_event

recommended columns:
- outbox_event_id
- company_id
- event_name
- event_domain
- entity_type
- entity_id
- aggregate_key
- payload_json
- status_code
- occurred_at
- available_at
- retry_count
- last_retry_at
- last_error_code
- last_error_message
- published_at
- consumed_by_json
- audit_trace_id
- created_at
- created_by

status_code candidates:
- PENDING
- READY
- PUBLISHING
- PUBLISHED
- FAILED
- DEAD_LETTER

# 6. outbox payload 原則
payload は event ごとに専用だが、
最低限以下を持つ。

common payload fields:
- company_id
- event_name
- entity_type
- entity_id
- actor_employee_id
- actor_role_code
- occurred_at
- audit_trace_id

example:
~~~json
{
  "company_id": "comp_01",
  "event_name": "tg.evaluation.sheet.self_review_submitted",
  "entity_type": "EVALUATION_SHEET",
  "entity_id": "esheet_01",
  "actor_employee_id": "emp_01HX001",
  "actor_role_code": "EMPLOYEE",
  "evaluation_cycle_id": "ecycle_01",
  "employee_id": "emp_01HX001",
  "manager_employee_id": "emp_mgr_01",
  "occurred_at": "2026-04-12T12:20:00+09:00",
  "audit_trace_id": "atrace_01"
}
~~~

# 7. notification model 方針
通知は event から派生生成する。

recommended tables:
- tg_notification
- tg_notification_delivery

## 7-1. tg_notification columns
- notification_id
- company_id
- source_event_id
- notification_type_code
- target_employee_id
- title_key
- body_key
- body_params_json
- deep_link_type
- deep_link_target_id
- priority_code
- unread_flag
- notification_status_code
- created_at
- created_by
- audit_trace_id
- version_no

## 7-2. tg_notification_delivery columns
- notification_delivery_id
- company_id
- notification_id
- channel_code
- delivery_status_code
- attempted_at
- delivered_at
- provider_message_id
- last_error_code
- last_error_message
- retry_count
- created_at
- created_by
- audit_trace_id
- version_no

channel_code candidates:
- IN_APP
- EMAIL
- PUSH
- WEBHOOK_INTERNAL

delivery_status_code candidates:
- PENDING
- SENT
- DELIVERED
- FAILED
- CANCELLED

# 8. 通知生成ルール

## 8-1. self review submitted
source event:
- tg.evaluation.sheet.self_review_submitted

targets:
- manager_employee_id

notification type:
- REVIEW_REQUEST

deep link:
- evaluation_sheet_id -> manager review input

## 8-2. sent back
source event:
- tg.evaluation.sheet.sent_back

targets:
- sent back 先の actor

notification type:
- ACTION_REQUIRED

deep link:
- evaluation_sheet_id -> self review or manager review

## 8-3. approved / published
source events:
- tg.evaluation.sheet.approved
- tg.evaluation.sheet.published

targets:
- employee_id
- manager_employee_id
- optionally HR owner

notification type:
- RESULT_READY

deep link:
- evaluation_sheet_id -> my evaluation result

## 8-4. certification expiring soon
source event:
- tg.certification.item.expiring_soon

targets:
- employee_id
- optionally manager_employee_id
- optionally HR watcher

notification type:
- CERT_EXPIRY_ALERT

deep link:
- employee_certification_id -> certification management

## 8-5. growth plan review due
source event:
- tg.growth_plan.plan.review_due

targets:
- employee_id
- manager_employee_id

notification type:
- GROWTH_REVIEW_DUE

deep link:
- growth_plan_id -> growth plan

## 8-6. export completed
source event:
- tg.export.job.completed

targets:
- requested_by_employee_id

notification type:
- EXPORT_READY

deep link:
- export_job_id -> export status / download

# 9. user-facing notification type code
- REVIEW_REQUEST
- ACTION_REQUIRED
- RESULT_READY
- CERT_EXPIRY_ALERT
- GROWTH_REVIEW_DUE
- EXPORT_READY
- EXPORT_FAILED
- CALIBRATION_NOTICE
- SUCCESSOR_UPDATE
- SYSTEM_ALERT

# 10. delivery routing rule
基本ルール:
- 全通知は IN_APP を持つ
- mobile capable user には PUSH 可
- formal trace が必要な場合は EMAIL 可
- internal system integration は WEBHOOK_INTERNAL 可

recommended routing:
- REVIEW_REQUEST -> IN_APP + PUSH
- ACTION_REQUIRED -> IN_APP + PUSH
- RESULT_READY -> IN_APP
- CERT_EXPIRY_ALERT -> IN_APP + EMAIL optional
- EXPORT_READY -> IN_APP
- EXPORT_FAILED -> IN_APP + EMAIL optional

# 11. idempotency rule
- same event_name + entity_id + target_employee_id + channel_code + dedupe window
  で重複生成を抑制する
- outbox republish でも user-facing duplicate を避ける
- notification create と delivery create は idempotent key を持つ

recommended dedupe fields:
- dedupe_key
- source_event_id
- target_employee_id
- channel_code

# 12. dead letter rule
以下で DEAD_LETTER 化を許可する。
- retry_count exceeded
- invalid payload
- target missing permanently
- unsupported channel permanently

DEAD_LETTER でも以下は保持する。
- payload_json
- last_error_code
- last_error_message
- retry_count
- audit_trace_id

# 13. audit rule
すべての event / notification / delivery に
audit_trace_id を引き継ぐ。

監査可能対象:
- event 発行
- notification 生成
- delivery 実行
- delivery 失敗
- retry
- dead letter 化

# 14. 結論
TalentGrowth の通知は、
画面から直接送るのではなく、
business event -> outbox -> notification -> delivery
の流れで固定する。

中核原則は以下である。
- state change first
- event append first
- delivery async
- user message derived
- full traceable
