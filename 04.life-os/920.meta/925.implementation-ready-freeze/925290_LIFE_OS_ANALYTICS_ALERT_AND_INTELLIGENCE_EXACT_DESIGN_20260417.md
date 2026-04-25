# ============================================================
# LIFE OS ANALYTICS ALERT AND INTELLIGENCE EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
layer: 060.integration / 070.operations / 120.implementation
document_code: 925290
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact design of analytics, alerting, insights, and assistive intelligence in LifeOS.
- Separate canonical fact ingestion from derived scoring, trend interpretation, and proactive notices.
- Define safe non-diagnostic guidance rules.

principles:
- analytics are derived, not canonical fact
- alert rules are explicit and traceable
- intelligence suggestions are advisory, not authoritative diagnosis
- user-facing explanations must be reproducible from rule and source references
- every score must expose calculation lineage

derived domains:
- dashboard aggregates
- streak analytics
- adherence analytics
- health trend analytics
- goal progress analytics
- risk notices
- reminder optimization suggestions
- daily review summaries
- weekly / monthly insight summaries

derived entities:
- analytics_snapshot
- trend_window
- alert_case
- alert_delivery_attempt
- suggestion_card
- intelligence_explanation
- rule_execution_log

analytics_snapshot exact fields:
- analytics_snapshot_id: uuid pk
- snapshot_scope: enum
- user_id: uuid
- window_start_at: timestamptz
- window_end_at: timestamptz
- snapshot_version: text
- snapshot_json: jsonb
- source_high_watermark_json: jsonb
- generated_at: timestamptz

snapshot_scope enum:
- dashboard_daily
- dashboard_weekly
- dashboard_monthly
- goal_progress
- habit_adherence
- health_metric_trend
- review_summary

trend_window exact fields:
- trend_window_id: uuid pk
- trend_type: enum
- user_id: uuid
- metric_code: text
- window_granularity: enum
- start_at: timestamptz
- end_at: timestamptz
- series_json: jsonb
- trend_direction: enum
- generated_at: timestamptz

alert_case exact fields:
- alert_case_id: uuid pk
- alert_type: enum
- alert_severity: enum
- user_id: uuid
- source_type: text
- source_id: uuid nullable
- alert_status: enum
- trigger_rule_code: text
- trigger_payload_json: jsonb
- created_at: timestamptz
- resolved_at: timestamptz nullable

alert_delivery_attempt exact fields:
- alert_delivery_attempt_id: uuid pk
- alert_case_id: uuid fk
- delivery_channel: enum
- delivery_status: enum
- attempted_at: timestamptz
- response_payload_json: jsonb
- retry_count: integer

suggestion_card exact fields:
- suggestion_card_id: uuid pk
- suggestion_type: enum
- user_id: uuid
- source_window_start_at: timestamptz
- source_window_end_at: timestamptz
- score_value: numeric
- title_text: text
- body_text: text
- suggested_action_json: jsonb
- explanation_id: uuid
- is_dismissed: boolean
- created_at: timestamptz
- expires_at: timestamptz nullable

intelligence_explanation exact fields:
- explanation_id: uuid pk
- explanation_type: enum
- explanation_json: jsonb
- source_reference_json: jsonb
- reproducibility_key: text
- generated_at: timestamptz

rule_execution_log exact fields:
- rule_execution_log_id: uuid pk
- rule_code: text
- rule_version: text
- execution_scope: enum
- user_id: uuid nullable
- execution_status: enum
- input_reference_json: jsonb
- output_reference_json: jsonb
- started_at: timestamptz
- finished_at: timestamptz nullable

alert_type enum:
- missing_habit_streak
- missing_health_input
- unusual_metric_pattern
- sync_stalled
- integration_failure
- goal_at_risk
- overdue_review
- dead_letter_growth

alert_severity enum:
- info
- low
- medium
- high

alert_status enum:
- open
- acknowledged
- muted
- resolved
- cancelled

suggestion_type enum:
- reminder_adjustment
- checkin_prompt
- review_prompt
- goal_followup
- habit_recovery
- sync_attention
- trend_summary
- monthly_reflection

analytics jobs:
- build_dashboard_daily_snapshot
- build_dashboard_weekly_snapshot
- build_health_metric_trend
- build_goal_progress_snapshot
- evaluate_alert_rules
- emit_suggestion_cards
- generate_daily_review_summary
- generate_monthly_reflection_summary

job schedule exactness:
- daily dashboard: every day 04:10 local user timezone
- weekly rollup: monday 04:20 local user timezone
- monthly rollup: first day 04:30 local user timezone
- alert evaluation: every 15 minutes
- sync failure alert: every 10 minutes
- suggestion refresh: every 2 hours
- review summary: on check-in completion and nightly fallback

non-diagnostic safety rules:
- no disease diagnosis text
- no medication recommendation text
- no emergency instruction beyond seek-professional-care style escalation copy
- no hidden model-only score shown without explanation
- every alert body must expose rule or threshold basis

threshold rule examples:
- habit missing threshold:
  - if required habit missing for configured cadence window then open missing_habit_streak alert
- health input stale threshold:
  - if metric expected cadence exceeded then open missing_health_input alert
- sync stalled threshold:
  - if last successful sync older than configured threshold and channel active then open sync_stalled alert
- goal at risk threshold:
  - if progress projection below required trajectory then open goal_at_risk alert

api endpoints:
- GET /api/life/v1/analytics/dashboard
- GET /api/life/v1/analytics/trends/{metricCode}
- GET /api/life/v1/analytics/suggestions
- POST /api/life/v1/analytics/suggestions/{suggestionCardId}/dismiss
- GET /api/life/v1/alerts
- POST /api/life/v1/alerts/{alertCaseId}/acknowledge
- POST /api/life/v1/alerts/{alertCaseId}/mute
- POST /api/life/v1/alerts/{alertCaseId}/resolve
- GET /api/life/v1/reviews/daily-summary
- GET /api/life/v1/reviews/monthly-reflection

dashboard response exactness:
- snapshotVersion
- windowStartAt
- windowEndAt
- cards[]
- cards[].cardType
- cards[].title
- cards[].value
- cards[].trendDirection
- cards[].sourceReference
- alertsSummary
- suggestionCount

trend response exactness:
- metricCode
- windowGranularity
- windowStartAt
- windowEndAt
- series[]
- series[].bucketStartAt
- series[].bucketEndAt
- series[].value
- trendDirection
- explanation

alert list response exactness:
- items[].alertCaseId
- items[].alertType
- items[].alertSeverity
- items[].alertStatus
- items[].createdAt
- items[].title
- items[].body
- items[].ruleCode
- items[].sourceReference

module split:
- analytics-snapshot-service
- trend-window-service
- alert-rule-engine
- alert-delivery-service
- suggestion-generator
- explanation-builder
- analytics-read-api
- analytics-ops-monitor

acceptance gates:
- every alert record links to exact trigger rule code
- every suggestion links to explanation and source window
- analytics snapshots are rebuildable from canonical facts
- user-visible guidance stays within non-diagnostic wording rules
- alert delivery attempts are auditable per channel

