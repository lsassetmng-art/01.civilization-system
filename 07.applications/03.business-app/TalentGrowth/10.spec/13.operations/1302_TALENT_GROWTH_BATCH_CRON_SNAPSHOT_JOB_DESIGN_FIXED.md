# TALENT GROWTH BATCH CRON SNAPSHOT JOB DESIGN FIXED

status: draft-batch-cron-snapshot-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の batch job,
cron job,
snapshot job,
recalculation job を固定するための資料である。

前提:
- online request で重い再計算を完結させない
- snapshot は append-first
- batch は business event と整合させる
- 通知生成と計算系 job を分ける

# 1. job group 一覧
- outbox publisher jobs
- notification delivery jobs
- expiry detection jobs
- snapshot generation jobs
- analytics aggregation jobs
- recommendation generation jobs
- export jobs
- consistency / repair jobs

# 2. 推奨 job registry naming
format:
- tg.job.<domain>.<purpose>

examples:
- tg.job.outbox.publish
- tg.job.notification.deliver
- tg.job.certification.expiry_scan
- tg.job.snapshot.evaluation_daily
- tg.job.analytics.distribution_refresh
- tg.job.recommendation.growth_refresh
- tg.job.export.generate
- tg.job.consistency.audit_repair_check

# 3. 必須job一覧

## 3-1. outbox publish job
job_name:
- tg.job.outbox.publish

purpose:
- tg_outbox_event の READY/PENDING を publish する

input:
- batch size
- company scope optional

frequency:
- every 1-5 minutes

outputs:
- published event
- failed event
- dead letter escalation

## 3-2. notification delivery job
job_name:
- tg.job.notification.deliver

purpose:
- tg_notification_delivery の PENDING を配信する

frequency:
- every 1-5 minutes

outputs:
- SENT / DELIVERED / FAILED update

## 3-3. certification expiry scan job
job_name:
- tg.job.certification.expiry_scan

purpose:
- expiring soon / expired を検知し event 発行する

frequency:
- daily

scan logic:
- expiry_date - today <= threshold days -> expiring soon
- expiry_date < today -> expired

outputs:
- tg.certification.item.expiring_soon
- tg.certification.item.expired

## 3-4. evaluation snapshot daily job
job_name:
- tg.job.snapshot.evaluation_daily

purpose:
- evaluation snapshot を daily append する

frequency:
- daily or cycle milestone based

source:
- tg_evaluation_sheet

target:
- tg_evaluation_snapshot

## 3-5. role-fit snapshot refresh job
job_name:
- tg.job.snapshot.role_fit_refresh

purpose:
- role-fit / promotion / successor 候補算出を更新する

frequency:
- nightly
- and on approval / publish event trigger

source:
- tg_employee_profile
- tg_employee_skill
- tg_employee_certification
- tg_role_requirement
- tg_evaluation_sheet

target:
- tg_role_fit_snapshot

## 3-6. analytics distribution refresh job
job_name:
- tg.job.analytics.distribution_refresh

purpose:
- 分布分析用集約更新

frequency:
- nightly
- optionally on cycle publish

outputs:
- distribution materialized view or snapshot tables

## 3-7. evaluator bias refresh job
job_name:
- tg.job.analytics.evaluator_bias_refresh

purpose:
- 評価者偏り分析を再集計する

frequency:
- nightly
- and after publish batch

## 3-8. growth recommendation refresh job
job_name:
- tg.job.recommendation.growth_refresh

purpose:
- gap / role requirement / recent evaluation をもとに推奨を更新する

frequency:
- on publish
- nightly catch-up

target:
- tg_growth_recommendation

## 3-9. training ROI refresh job
job_name:
- tg.job.analytics.training_roi_refresh

purpose:
- 研修投資対効果を更新する

frequency:
- monthly
- on demand by HR

target:
- tg_training_roi_snapshot

## 3-10. export generation job
job_name:
- tg.job.export.generate

purpose:
- export job を非同期生成する

frequency:
- event-driven

inputs:
- export type
- filter snapshot
- locale
- reporting currency

outputs:
- file
- status update
- export completed / failed event

## 3-11. stale review reminder job
job_name:
- tg.job.evaluation.review_reminder

purpose:
- review due を過ぎた対象へ reminder event を発行する

frequency:
- daily

## 3-12. growth plan review due job
job_name:
- tg.job.growth_plan.review_due_scan

purpose:
- growth plan の next_review_due_at を見て review due event を発行する

frequency:
- daily

# 4. snapshot rule

## 4-1. evaluation snapshot
trigger:
- daily scheduled
- evaluation publish event
- cycle close event

append rule:
- update ではなく append-first
- same employee + same cycle + same day の重複防止 key を持つ

## 4-2. role-fit snapshot
trigger:
- nightly refresh
- evaluation approved / published
- major profile or requirement change

append or replace:
- latest reference table として replace acceptable
- audit 必要なら history も保持

## 4-3. ROI snapshot
trigger:
- monthly close
- on demand rebuild

# 5. retry / backoff rule

## outbox / notification jobs
- exponential backoff
- max retry configurable
- dead letter after threshold

## aggregation jobs
- fail fast and rerun allowed
- partial success must be logged

## export jobs
- user-facing status required
- failed job should expose stable error code

# 6. job audit columns
すべての job log / run log に以下を推奨する。

- job_run_id
- job_name
- company_id
- started_at
- finished_at
- status_code
- processed_count
- success_count
- failed_count
- last_error_code
- last_error_message
- audit_trace_id
- created_at
- created_by

# 7. consistency check jobs

## 7-1. evaluation consistency check
checks:
- published sheet without approval
- approval without audit
- score detail mismatch

## 7-2. notification consistency check
checks:
- notification without source event
- delivery without notification
- repeated duplicate notification

## 7-3. snapshot consistency check
checks:
- missing snapshot after publish
- stale role-fit snapshot after requirement update

# 8. event-driven vs scheduled split

## event-driven
- self review submitted
- manager review submitted
- approve / publish
- export requested
- ai assist draft generated

## scheduled
- expiry detection
- stale review reminder
- growth plan due scan
- nightly snapshot refresh
- monthly ROI refresh

# 9. operational priority

## phase A
- outbox publish
- notification deliver
- certification expiry scan
- evaluation snapshot daily
- stale review reminder
- growth plan review due scan

## phase B
- role-fit snapshot refresh
- distribution refresh
- evaluator bias refresh
- growth recommendation refresh

## phase C
- training ROI refresh
- export generate
- consistency checks

## phase D
- advanced rebuild / repair jobs
- backfill jobs for analytics history

# 10. 結論
TalentGrowth の batch / cron / snapshot job は、
通知、期限検知、評価保存、候補抽出、分析更新を
分離した job registry で固定する。

中核原則は以下である。
- request path で重い集計を完結させない
- snapshot append-first
- recommendation and analytics are async
- consistency checks are first-class jobs
