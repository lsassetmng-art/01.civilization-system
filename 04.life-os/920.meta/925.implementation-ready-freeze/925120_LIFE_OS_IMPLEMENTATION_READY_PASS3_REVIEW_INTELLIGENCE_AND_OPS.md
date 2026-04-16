# ============================================================
# LIFE OS IMPLEMENTATION-READY PASS 3
# REVIEW, INTELLIGENCE, INTEGRATION, OPERATIONS, POLICY,
# SECURITY, AND INFRASTRUCTURE EXACTNESS
# ============================================================

status: pass-3-master-design
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-16
purpose:
Freeze the implementation-ready contracts for LifeOS review, memory,
assistant orchestration, risk, analytics, integration, operations,
policy, security, and infrastructure layers.

# ============================================================
# 0. ROADMAP
# ============================================================

overall_goal:
Move LifeOS from structurally-expanded design to implementation-ready design.

full_completion_roadmap:
- pass_1 baseline fixed
- pass_2 domain data and flow exactness fixed
- pass_3 review, intelligence, integration, operations, policy, security, infrastructure exactness fixed by this document
- pass_4 interface normalization, implementation mapping completion, final status normalization remaining

current_position:
- pass_1: done
- pass_2: done
- pass_3: fixed by this document
- pass_4: remaining

pass_3_scope:
- 217.memory-life-log
- 218.assistant-orchestration
- 219.daily-checkin-and-review
- 220.risk-and-alert
- 221.life-analytics
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure

pass_3_exit_condition:
Every area in scope has all of the following fixed:
- owned tables and key columns
- exact write and read APIs
- state machines
- emitted and consumed events
- runtime and job ownership
- operational owner and recovery path
- policy guardrails and blocked actions
- access control and storage class
- infrastructure placement and observability signals
- minimum acceptance cases

# ============================================================
# 1. SHARED PASS-3 EXACTNESS RULES
# ============================================================

## 1.1 guiding principle
LifeOS may summarize, classify, prioritize, and support.
LifeOS must not silently act as a medical, legal, or financial authority.
High-sensitivity outputs must always remain explainable, reviewable, and auditable.

## 1.2 common enum: review_window_type
- daily
- weekly
- monthly
- custom
- milestone

## 1.3 common enum: generated_artifact_status
- queued
- rendering
- ready
- superseded
- failed

## 1.4 common enum: recommendation_disposition
- pending
- shown
- dismissed
- snoozed
- accepted
- completed
- expired
- blocked_by_policy

## 1.5 common enum: priority_band
- p0_critical
- p1_high
- p2_medium
- p3_low

## 1.6 common enum: risk_severity
- info
- low
- medium
- high
- critical

## 1.7 common enum: delivery_channel
- in_app
- push
- email
- sms
- household_feed
- admin_queue
- persona_sync_only

## 1.8 common enum: explanation_level
- headline_only
- brief_reasoning
- expanded_reasoning

## 1.9 common safety rule
The following conditions require explicit human-readable explanation text,
audit logging, and visible user review affordance before action completion.
- any output based on class_p3_highly_sensitive_masked data
- any alert with severity high or critical
- any household-visible recommendation derived from private-only facts
- any persona-sync request carrying personal growth or trust implications
- any suppression of a previously scheduled critical reminder

## 1.10 common no-silent-overwrite rule
Generated summaries, scores, patterns, and recommendations are append-only with supersede semantics.
Previously displayed outputs may be superseded but never silently replaced without audit trace.

## 1.11 common outbox rule
All async side effects in pass 3 must be produced through the LifeOS event outbox.
No direct cross-domain mutation is allowed without an outbox and inbox trail.

# ============================================================
# 2. 217.MEMORY-LIFE-LOG
# ============================================================

purpose:
Fix the exact contract for journal capture, memory event extraction,
reflection generation, memorable-day marking, and retrospective handling.

existing_model_alignment:
- 0302172_LIFE_JOURNAL_ENTRY_MODEL
- 0302173_LIFE_MEMORY_EVENT_MODEL
- 0302174_LIFE_REFLECTION_SUMMARY_MODEL
- 0302175_LIFE_MOOD_LINK_MODEL
- 0302176_LIFE_MEMORABLE_DAY_MODEL
- 0302177_LIFE_RETROSPECTIVE_MODEL
- 0502172_LIFE_JOURNAL_LOGGING_FLOW
- 0502173_LIFE_REFLECTION_FLOW

## 2.1 owned tables

### life_journal_entry
required_fields:
- id
- user_id
- entry_date
- entry_timestamp
- locale_code
- title nullable
- body_text
- source_type
- capture_method manual|voice_transcript|imported
- journal_status draft|submitted|archived|superseded
- contains_sensitive_flag
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_memory_event
required_fields:
- id
- user_id
- source_journal_entry_id nullable
- event_date
- event_type
- event_title
- event_summary_text
- emotional_weight_score nullable
- memorability_score nullable
- extraction_status pending|accepted|rejected|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_mood_link
required_fields:
- id
- user_id
- linked_resource_type journal_entry|memory_event|daily_checkin|review
- linked_resource_id
- mood_code
- mood_intensity_score nullable
- confidence_score nullable
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_reflection_summary
required_fields:
- id
- user_id
- review_window_type
- window_start_date
- window_end_date
- based_on_resource_count
- summary_headline
- summary_body_text
- explanation_level
- artifact_status
- supersedes_id nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_memorable_day
required_fields:
- id
- user_id
- target_date
- memorable_reason_code
- source_resource_count
- memorable_confidence_score
- status suggested|confirmed|dismissed|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_retrospective
required_fields:
- id
- user_id
- retrospective_type month_end|quarter_end|year_end|custom
- window_start_date
- window_end_date
- source_summary_ids_json
- retrospective_text
- key_learnings_json
- generated_artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 2.2 exact APIs

### POST /v1/life/journal-entries
request_fields:
- idempotency_key
- entry_timestamp
- locale_code
- title nullable
- body_text
- capture_method
- mood_code nullable
- mood_intensity_score nullable
response:
- common write response
- resource_type: life_journal_entry

### POST /v1/life/journal-entries/{id}/submit
request_fields:
- idempotency_key
response:
- common write response
- followup_job_enqueued: true

### POST /v1/life/reflections/render
request_fields:
- idempotency_key
- review_window_type
- window_start_date
- window_end_date
- explanation_level
response:
- common write response
- resource_type: life_reflection_summary

### POST /v1/life/memorable-days/{date}/confirm
request_fields:
- idempotency_key
response:
- common write response

### GET /v1/life/journal-entries
query:
- from_date
- to_date
- capture_method nullable
- page_token

### GET /v1/life/reflections
query:
- review_window_type nullable
- from_date nullable
- to_date nullable
- artifact_status default ready

## 2.3 state machines

journal_status_machine:
- draft -> submitted
- submitted -> archived
- submitted -> superseded
- archived -> superseded

reflection_status_machine:
- queued -> rendering
- rendering -> ready
- rendering -> failed
- ready -> superseded
- failed -> queued

memorable_day_status_machine:
- suggested -> confirmed
- suggested -> dismissed
- confirmed -> superseded
- dismissed -> superseded

## 2.4 emitted events
- life.journal_entry.submitted.v1
- life.memory_event.extracted.v1
- life.reflection_summary.ready.v1
- life.memorable_day.confirmed.v1
- life.retrospective.ready.v1

consumed_events:
- life.daily_checkin.completed.v1
- life.review.completed.v1
- life.analytics.pattern.ready.v1

## 2.5 UI stateflow
- Journal Capture Screen: draft -> validate -> submit -> confirmation
- Reflection Screen: request render -> queued banner -> ready view -> superseded banner when refreshed
- Memory Timeline Screen: grouped by date -> open source journal -> mood-linked indicator
- Memorable Day Screen: suggested badge -> confirm or dismiss -> immutable history item

## 2.6 implementation ownership
- module.life-memory.command
- module.life-memory.query
- module.life-memory.render-job
- module.life-memory.event-producer

## 2.7 acceptance
- submitting the same idempotency_key twice must not duplicate journal rows
- reflection rendering must record source counts and supersede previous ready output for same window
- deleting source facts is forbidden; correction must produce supersede chain

# ============================================================
# 3. 218.ASSISTANT-ORCHESTRATION
# ============================================================

purpose:
Fix the exact contract for intervention priority, silence windows,
recommendation ordering, delivery decisions, and persona-assistant orchestration.

existing_model_alignment:
- 0302182_LIFE_INTERVENTION_PRIORITY_MODEL
- 0302183_LIFE_SILENCE_WINDOW_MODEL
- 0302184_LIFE_ESCALATION_RULE_MODEL
- 0302185_LIFE_SUPPORT_TIMING_MODEL
- 0302186_LIFE_REMINDER_TONE_BASIS_MODEL
- 0302187_LIFE_SUGGESTION_PRIORITY_MODEL
- 0402182_LIFE_SUGGESTION_ORCHESTRATION_RUNTIME
- 0402183_LIFE_ESCALATION_RULE_RUNTIME
- 0402184_LIFE_SILENCE_WINDOW_RUNTIME

## 3.1 owned tables

### life_intervention_priority_rule
required_fields:
- id
- user_id
- domain_scope life|health|meal|sleep|activity|home|finance|review
- trigger_type reminder|risk|review|routine_recovery|recommendation
- priority_band
- score_weight_json
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_silence_window
required_fields:
- id
- user_id
- silence_type sleep|work|focus|manual|emergency_override_block
- local_start_time
- local_end_time
- timezone_code
- allow_critical_override_flag
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_escalation_rule
required_fields:
- id
- user_id
- trigger_family risk|non_response|missed_critical_routine|device_gap
- severity_threshold
- escalation_delay_minutes
- target_channel_json
- requires_user_visibility_first_flag
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_support_timing_rule
required_fields:
- id
- user_id
- context_type wakeup|late_evening|post_meal|post_workout|weekly_review|stress_window
- allowed_flag
- preferred_delivery_channel
- preferred_explanation_level
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_reminder_tone_basis
required_fields:
- id
- user_id
- tone_code gentle|neutral|direct|minimal
- applicable_scope reminder|review|risk|household
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_suggestion_priority_rule
required_fields:
- id
- user_id
- suggestion_family recovery|prevention|reflection|budget|home_stock|routine
- ranking_weight_json
- max_active_suggestions integer
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_intervention_decision
required_fields:
- id
- user_id
- source_event_type
- source_event_id
- computed_priority_band
- blocked_by_silence_flag
- blocked_by_policy_flag
- chosen_channel nullable
- explanation_text
- decision_status pending|scheduled|dispatched|blocked|expired|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 3.2 exact APIs

### PUT /v1/life/assistant/silence-windows/{id}
request_fields:
- idempotency_key
- silence_type
- local_start_time
- local_end_time
- timezone_code
- allow_critical_override_flag
- active_flag
response:
- common write response

### PUT /v1/life/assistant/preferences/reminder-tone
request_fields:
- idempotency_key
- tone_code
- applicable_scope
- active_flag
response:
- common write response

### POST /v1/life/assistant/intervention-preview
request_fields:
- idempotency_key
- source_event_type
- source_event_id
response:
- status accepted
- preview:
  - computed_priority_band
  - blocked_by_silence_flag
  - blocked_by_policy_flag
  - chosen_channel nullable
  - explanation_text

### GET /v1/life/assistant/decisions
query:
- decision_status nullable
- from_timestamp nullable
- to_timestamp nullable

## 3.3 state machines

intervention_decision_status_machine:
- pending -> scheduled
- pending -> blocked
- scheduled -> dispatched
- scheduled -> expired
- dispatched -> superseded
- blocked -> superseded

## 3.4 emitted events
- life.intervention.decision.created.v1
- life.intervention.dispatched.v1
- life.intervention.blocked.v1
- life.silence_window.changed.v1

consumed_events:
- life.risk_alert.created.v1
- life.review_signal.created.v1
- life.task.overdue.detected.v1
- life.analytics.recommendation_ready.v1

## 3.5 orchestration rules
- critical risk may bypass silence window only when allow_critical_override_flag is true
- finance suggestions can never be sent to household_feed unless source facts are household-scope and not class_p3
- reminder tone changes affect future dispatch only, never rewrite historical messages
- blocked_by_policy_flag takes precedence over all priority computations

## 3.6 UI stateflow
- Assistant Preference Screen: edit -> validate -> save -> confirmation toast
- Intervention History Screen: pending/scheduled/dispatched/blocked tabs -> detail drawer with explanation text
- Silence Window Screen: create/edit/deactivate -> immediate recomputation of pending non-critical interventions

## 3.7 implementation ownership
- module.life-assistant.rule-engine
- module.life-assistant.preference-command
- module.life-assistant.dispatch-job
- module.life-assistant.explanation-renderer

## 3.8 acceptance
- changing a silence window must reschedule only future non-dispatched decisions
- a blocked decision must store a policy or silence reason, never null reason
- persona-related intervention preview must not expose private raw facts outside consent boundary

# ============================================================
# 4. 219.DAILY-CHECKIN-AND-REVIEW
# ============================================================

purpose:
Fix the exact contract for daily checkin capture, daily summary generation,
weekly review rendering, review signals, and status snapshots.

existing_model_alignment:
- 0302192_LIFE_DAILY_CHECKIN_MODEL
- 0302193_LIFE_DAILY_SUMMARY_MODEL
- 0302194_LIFE_WEEKLY_REVIEW_MODEL
- 0302195_LIFE_REVIEW_SIGNAL_MODEL
- 0302196_LIFE_STATUS_SNAPSHOT_MODEL
- 0502192_LIFE_DAILY_CHECKIN_FLOW
- 0502193_LIFE_DAILY_SUMMARY_FLOW
- 0502194_LIFE_WEEKLY_REVIEW_FLOW

## 4.1 owned tables

### life_daily_checkin
required_fields:
- id
- user_id
- target_date
- mood_code
- energy_score nullable
- stress_score nullable
- sleep_self_rating nullable
- appetite_self_rating nullable
- free_text nullable
- checkin_status draft|submitted|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_daily_summary
required_fields:
- id
- user_id
- target_date
- source_fact_count
- summary_headline
- summary_body_text
- key_flags_json
- generated_artifact_status
- supersedes_id nullable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_weekly_review
required_fields:
- id
- user_id
- week_start_date
- week_end_date
- source_summary_ids_json
- wins_text
- risks_text
- followup_actions_json
- generated_artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_review_signal
required_fields:
- id
- user_id
- signal_family streak_break|risk_rise|goal_progress|routine_recovery|budget_pressure|sleep_debt
- signal_strength_score
- source_window_start_date
- source_window_end_date
- signal_status open|consumed|dismissed|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_status_snapshot
required_fields:
- id
- user_id
- snapshot_date
- overall_state_code stable|watch|attention|critical
- domain_status_json
- active_signal_count
- unresolved_alert_count
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 4.2 exact APIs

### POST /v1/life/checkins
request_fields:
- idempotency_key
- target_date
- mood_code
- energy_score nullable
- stress_score nullable
- sleep_self_rating nullable
- appetite_self_rating nullable
- free_text nullable
response:
- common write response
- resource_type: life_daily_checkin

### POST /v1/life/daily-summaries/render
request_fields:
- idempotency_key
- target_date
response:
- common write response

### POST /v1/life/weekly-reviews/render
request_fields:
- idempotency_key
- week_start_date
- week_end_date
response:
- common write response

### GET /v1/life/status-snapshots/latest
response_fields:
- snapshot_date
- overall_state_code
- domain_status_json
- active_signal_count
- unresolved_alert_count

## 4.3 state machines

checkin_status_machine:
- draft -> submitted
- submitted -> superseded

review_signal_status_machine:
- open -> consumed
- open -> dismissed
- consumed -> superseded
- dismissed -> superseded

status_snapshot_refresh_machine:
- previous snapshot stays immutable
- next snapshot is append-only per target date

## 4.4 emitted events
- life.daily_checkin.completed.v1
- life.daily_summary.ready.v1
- life.weekly_review.ready.v1
- life.review_signal.created.v1
- life.status_snapshot.refreshed.v1

consumed_events:
- life.health_fact.updated.v1
- life.sleep_fact.updated.v1
- life.activity_fact.updated.v1
- life.finance_budget_state.changed.v1
- life.home_stock_state.changed.v1

## 4.5 UI stateflow
- Daily Checkin Screen: draft -> inline validation -> submit -> done state -> summary CTA
- Daily Summary Screen: loading skeleton -> ready -> superseded badge if re-rendered
- Weekly Review Screen: render request -> queued -> ready -> action cards for followup tasks
- Life Dashboard: latest status snapshot card + open signals + unresolved alerts

## 4.6 implementation ownership
- module.life-review.command
- module.life-review.render-job
- module.life-review.signal-engine
- module.life-review.snapshot-projection

## 4.7 acceptance
- one user may have at most one submitted daily checkin per target date after supersede collapse
- weekly review must store explicit source_summary_ids_json
- dashboard latest snapshot must never read from mutable in-progress summary rows

# ============================================================
# 5. 220.RISK-AND-ALERT
# ============================================================

purpose:
Fix the exact contract for thresholds, risk signals, alert generation,
escalation, and condition alert reasons.

existing_model_alignment:
- 0302202_LIFE_RISK_SIGNAL_MODEL
- 0302203_LIFE_ALERT_MODEL
- 0302204_LIFE_ESCALATION_EVENT_MODEL
- 0302205_LIFE_THRESHOLD_MODEL
- 0302206_LIFE_CONDITION_ALERT_REASON_MODEL
- 0502202_LIFE_ALERT_GENERATION_FLOW
- 0502203_LIFE_ESCALATION_FLOW
- 0402202_LIFE_ALERT_RUNTIME
- 0402203_LIFE_ESCALATION_RUNTIME

## 5.1 owned tables

### life_threshold
required_fields:
- id
- user_id nullable for default rule
- domain_scope health|sleep|activity|finance|home|review|device
- metric_code
- threshold_type lower_bound|upper_bound|streak_limit|missing_data_limit|compound_rule
- threshold_value_json
- severity_on_breach
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_condition_alert_reason
required_fields:
- id
- domain_scope
- reason_code
- display_label
- explanation_template
- action_template nullable
- severity_default
- active_flag
- created_at
- updated_at
- record_version
privacy_class: class_p1_personal_standard

### life_risk_signal
required_fields:
- id
- user_id
- domain_scope
- metric_code
- observed_window_start_at
- observed_window_end_at
- observed_value_json
- triggered_threshold_id
- risk_severity
- confidence_score
- explanation_text
- signal_status open|cooling_down|resolved|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_alert
required_fields:
- id
- user_id
- source_risk_signal_id
- alert_reason_id
- risk_severity
- chosen_channel
- first_visible_at nullable
- acknowledged_at nullable
- alert_status queued|visible|acknowledged|resolved|suppressed|expired|superseded
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

### life_escalation_event
required_fields:
- id
- user_id
- source_alert_id
- escalation_level user_repeat|household_notice|support_queue|admin_queue
- target_channel
- trigger_reason non_response|severity_rise|repeat_pattern|manual_override
- escalation_status queued|sent|cancelled|completed|failed
- created_at
- updated_at
- record_version
privacy_class: class_p3_highly_sensitive_masked

## 5.2 exact APIs

### PUT /v1/life/risk/thresholds/{id}
request_fields:
- idempotency_key
- domain_scope
- metric_code
- threshold_type
- threshold_value_json
- severity_on_breach
- active_flag
response:
- common write response

### POST /v1/life/risk/evaluate
request_fields:
- idempotency_key
- domain_scope
- source_fact_ref nullable
- target_window_start_at
- target_window_end_at
response:
- common write response
- resource_type: life_risk_signal

### POST /v1/life/alerts/{id}/acknowledge
request_fields:
- idempotency_key
response:
- common write response

### POST /v1/life/alerts/{id}/resolve
request_fields:
- idempotency_key
- resolution_note nullable
response:
- common write response

### GET /v1/life/alerts
query:
- alert_status nullable
- minimum_severity nullable
- from_timestamp nullable
- to_timestamp nullable

## 5.3 state machines

risk_signal_status_machine:
- open -> cooling_down
- open -> resolved
- open -> superseded
- cooling_down -> resolved
- cooling_down -> open
- resolved -> superseded

alert_status_machine:
- queued -> visible
- queued -> suppressed
- visible -> acknowledged
- visible -> resolved
- acknowledged -> resolved
- visible -> expired
- acknowledged -> superseded
- resolved -> superseded

escalation_status_machine:
- queued -> sent
- queued -> cancelled
- sent -> completed
- sent -> failed
- failed -> queued

## 5.4 emitted events
- life.risk_signal.created.v1
- life.risk_signal.resolved.v1
- life.risk_alert.created.v1
- life.risk_alert.acknowledged.v1
- life.escalation_event.sent.v1

consumed_events:
- life.device_sync.completed.v1
- life.checkin.completed.v1
- life.analytics.score.ready.v1
- life.assistant.decision.blocked.v1

## 5.5 hard guardrails
- no high or critical alert may be household-visible without explicit scope rule and user-consent basis
- suppressed alerts must retain suppress_reason_code and actor_type
- alert acknowledgement never resolves the underlying risk signal automatically
- critical alert resolution requires either explicit resolve action or a resolving evaluation run

## 5.6 UI stateflow
- Alert Center: queued hidden from user until visible -> open detail -> acknowledge -> resolve path
- Threshold Settings Screen: edit -> policy validation -> save -> evaluation preview
- Escalation Timeline Screen: show trigger reason, target channel, sent/completed/failed status

## 5.7 implementation ownership
- module.life-risk.threshold-command
- module.life-risk.evaluation-engine
- module.life-risk.alert-dispatch-job
- module.life-risk.escalation-job

## 5.8 acceptance
- a repeated evaluation on unchanged facts must not duplicate open risk signals for the same active threshold window
- alert suppression must write actor, reason, timestamp, and original severity
- escalation retries must be bounded and observable

# ============================================================
# 6. 221.LIFE-ANALYTICS
# ============================================================

purpose:
Fix the exact contract for pattern detection, trend summaries,
correlation outputs, scores, and recommendation explanations.

existing_model_alignment:
- 0302212_LIFE_PATTERN_MODEL
- 0302213_LIFE_TREND_SUMMARY_MODEL
- 0302214_LIFE_CORRELATION_MODEL
- 0302215_LIFE_SCORE_MODEL
- 0302216_LIFE_RECOMMENDATION_EXPLANATION_MODEL

## 6.1 owned tables

### life_pattern
required_fields:
- id
- user_id
- pattern_family routine|sleep|meal|activity|mood|budget|home_stock
- detection_window_start_date
- detection_window_end_date
- pattern_title
- pattern_summary_text
- confidence_score
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_trend_summary
required_fields:
- id
- user_id
- metric_code
- review_window_type
- window_start_date
- window_end_date
- direction_code rising|falling|stable|volatile
- summary_text
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_correlation
required_fields:
- id
- user_id
- left_metric_code
- right_metric_code
- window_start_date
- window_end_date
- correlation_strength_score
- explanation_text
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_score
required_fields:
- id
- user_id
- score_family consistency|recovery|budget_balance|home_stability|overall
- score_value
- score_band excellent|good|watch|attention
- score_window_start_date
- score_window_end_date
- explanation_text
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_recommendation_explanation
required_fields:
- id
- user_id
- source_recommendation_ref
- explanation_level
- explanation_text
- evidence_refs_json
- artifact_status
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

## 6.2 exact APIs

### POST /v1/life/analytics/patterns/render
request_fields:
- idempotency_key
- pattern_family nullable
- window_start_date
- window_end_date
response:
- common write response

### POST /v1/life/analytics/scores/render
request_fields:
- idempotency_key
- score_family nullable
- window_start_date
- window_end_date
response:
- common write response

### GET /v1/life/analytics/overview
query:
- window_start_date
- window_end_date
response_fields:
- patterns
- trend_summaries
- scores
- active_recommendation_explanations

## 6.3 state machines

analytics_artifact_status_machine:
- queued -> rendering
- rendering -> ready
- rendering -> failed
- ready -> superseded
- failed -> queued

## 6.4 emitted events
- life.analytics.pattern.ready.v1
- life.analytics.score.ready.v1
- life.analytics.trend.ready.v1
- life.analytics.recommendation_ready.v1

consumed_events:
- life.daily_summary.ready.v1
- life.weekly_review.ready.v1
- life.risk_signal.created.v1
- life.memory_event.extracted.v1

## 6.5 analytics guardrails
- all analytics outputs must store evidence_refs_json or source counts sufficient for traceability
- correlation output is explanatory only and may not auto-create critical alerts without explicit risk rule evaluation
- score bands are user guidance signals, not diagnostic labels

## 6.6 UI stateflow
- Analytics Overview Screen: request window -> load projections -> cards by family -> drilldown explanation
- Recommendation Explanation Drawer: headline -> reasoning -> evidence refs count

## 6.7 implementation ownership
- module.life-analytics.feature-store
- module.life-analytics.render-job
- module.life-analytics.query-projection
- module.life-analytics.explanation-renderer

## 6.8 acceptance
- analytics rerender on same window supersedes previous ready artifacts without destructive overwrite
- every surfaced recommendation must have a stored explanation row
- no analytics card may expose raw class_p3 facts in household context

# ============================================================
# 7. 060.INTEGRATION EXACTNESS
# ============================================================

purpose:
Fix LifeOS cross-boundary event, sync, consent, and persona exchange contracts.

existing_model_alignment:
- 0300500001_LIFE_INTEGRATION_REF_MODEL
- 0300500002_LIFE_EVENT_OUTBOX_MODEL
- 0300500003_LIFE_PERSONA_GROWTH_REQUEST_MODEL
- 0300500004_LIFE_SYNC_EVENT_INBOX_MODEL
- 0302200_LIFE_PERSONA_USAGE_REQUEST_MODEL
- 0302201_LIFE_PERSONA_USAGE_RESULT_SYNC_MODEL
- 0302202_LIFE_PERSONA_TRUST_SYNC_MODEL
- 0302203_LIFE_INTERVENTION_REQUEST_MODEL
- 0302204_LIFE_RECOMMENDATION_RESULT_MODEL
- 0302205_LIFE_CONSENT_VISIBILITY_MODEL

## 7.1 owned tables

### life_integration_ref
required_fields:
- id
- user_id
- integration_provider_code
- external_subject_ref
- connection_status active|paused|revoked|error
- consent_visibility_scope private_only|selected_domains|household_shareable
- created_at
- updated_at
- record_version
privacy_class: class_p2_sensitive_life

### life_event_outbox
required_fields:
- id
- aggregate_type
- aggregate_id
- event_type
- event_version
- payload_json
- dispatch_status queued|dispatched|failed|dead_letter
- correlation_id
- created_at
- updated_at
privacy_class: class_p1_personal_standard

### life_sync_event_inbox
required_fields:
- id
- provider_code
- inbound_event_type
- inbound_event_ref
- payload_json
- consume_status queued|consumed|failed|dead_letter|ignored_duplicate
- correlation_id
- created_at
- updated_at
privacy_class: class_p1_personal_standard

### life_persona_usage_request
required_fields:
- id
- user_id
- persona_ref
- requested_scope growth|intervention|summary|trust_sync
- consent_visibility_id
- payload_ref
- request_status queued|sent|completed|failed|cancelled
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_persona_usage_result_sync
required_fields:
- id
- user_id
- request_id
- result_type recommendation|summary|trust_signal|intervention_result
- payload_json
- sync_status received|accepted|rejected|superseded
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_persona_trust_sync
required_fields:
- id
- user_id
- persona_ref
- trust_metric_code
- trust_value_json
- sync_timestamp
- sync_status accepted|blocked|superseded
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_intervention_request
required_fields:
- id
- user_id
- source_signal_ref
- target_persona_ref nullable
- requested_action_family
- explanation_level
- request_status queued|sent|completed|failed|cancelled
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_recommendation_result
required_fields:
- id
- user_id
- request_id nullable
- recommendation_family
- recommendation_payload_json
- result_status received|accepted|dismissed|expired|superseded
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

### life_consent_visibility
required_fields:
- id
- user_id
- visibility_scope private_only|selected_domains|persona_only|household_shareable
- allowed_domain_json
- allowed_provider_json
- active_flag
- created_at
- updated_at
privacy_class: class_p2_sensitive_life

## 7.2 integration envelope
All cross-boundary events must carry:
- event_id
- event_type
- event_version
- occurred_at
- producer_system life-os
- user_ref nullable when policy allows
- correlation_id
- trace_ref
- sensitivity_class
- payload_json

## 7.3 exact APIs

### POST /v1/life/integrations/{provider}/connect
request_fields:
- idempotency_key
- external_subject_ref
- consent_visibility_scope
response:
- common write response

### PUT /v1/life/consent-visibility/{id}
request_fields:
- idempotency_key
- visibility_scope
- allowed_domain_json
- allowed_provider_json
- active_flag
response:
- common write response

### POST /v1/life/persona/usage-requests
request_fields:
- idempotency_key
- persona_ref
- requested_scope
- consent_visibility_id
- payload_ref
response:
- common write response

### POST /v1/life/inbox/consume
request_fields:
- idempotency_key
- provider_code
- inbound_event_type
- inbound_event_ref
- payload_json
response:
- common write response

## 7.4 integration rules
- outbox dispatch is the only supported producer path
- inbox consume is idempotent on provider_code + inbound_event_ref
- consent must be checked both at request creation and again at dispatch time
- revoked consent blocks new dispatch but does not erase historical records
- persona trust sync may update current projections but must preserve prior trust rows

## 7.5 implementation ownership
- module.life-integration.outbox
- module.life-integration.inbox
- module.life-integration.consent-guard
- module.life-integration.persona-adapter

## 7.6 acceptance
- duplicate inbound events must collapse to ignored_duplicate without side effects
- revoked consent must prevent future persona usage requests from dispatching
- failed dispatch rows must be retryable without payload mutation

# ============================================================
# 8. 070.OPERATIONS EXACTNESS
# ============================================================

purpose:
Fix operational ownership, incident handling, manual recovery,
and bounded retry rules for LifeOS.

operational_owner_map:
- life-memory: journal and reflection support owner
- life-review: checkin and review support owner
- life-risk: alert and escalation support owner
- life-integration: sync and outbox owner
- platform-sre: queue, worker, and datastore health owner
- privacy-admin: consent and exposure incident owner

## 8.1 standard operation states
- normal
- degraded
- incident_open
- manual_recovery
- post_incident_review

## 8.2 allowed manual actions
- replay failed outbox message
- replay failed inbox consume after duplicate check
- mark alert dispatch failed -> queued for bounded retry
- trigger re-render of summary or analytics artifact
- suppress visible alert only with actor, reason, and audit note
- deactivate faulty threshold rule

## 8.3 forbidden manual actions
- direct deletion of journal, risk, alert, or consent rows
- direct mutation of generated payload_json in outbox or inbox history
- household-scope widening without a new consent row
- manual resolution of critical alert without audit note

## 8.4 retry rules
- outbox dispatch: exponential backoff, maximum 7 attempts, then dead_letter
- inbox consume: maximum 5 attempts, then dead_letter
- render jobs: maximum 3 attempts, then failed artifact status
- alert delivery: maximum 5 attempts per channel
- escalation delivery: maximum 3 attempts per escalation level

## 8.5 manual recovery path
1. identify failing unit from correlation_id and trace_ref
2. freeze new non-critical dispatch when incident_open
3. preserve evidence rows and extract payload snapshot
4. replay from outbox or rerender from source facts
5. verify downstream projections refreshed
6. close incident with operator note and linked audit refs

## 8.6 minimum observability signals
- outbox queue depth
- inbox queue depth
- render job failure count
- open alert count by severity
- escalation failure count
- blocked-by-policy intervention count
- supersede chain break count

## 8.7 acceptance
- every operation with manual recovery must specify actor and note
- dead-letter rows must remain queryable by support tooling
- post-incident replay must never create duplicate accepted business rows

# ============================================================
# 9. 080.POLICY EXACTNESS
# ============================================================

purpose:
Fix policy boundaries for sensitive-life handling, multilingual output,
household sharing, and recommendation safety.

## 9.1 policy set

### policy: sensitive_life_minimization
policy_statement:
Only the minimum necessary sensitive data may be shown in user-visible outputs.
permitted_action:
- show concise explanations referencing categories and time windows
blocked_action:
- expose raw class_p3 details in summary cards, notifications, or household feeds
escalation_threshold:
- any planned cross-scope exposure of class_p3 data

### policy: no_hidden_authority_claim
policy_statement:
LifeOS may support decisions but must not present itself as a licensed authority.
permitted_action:
- say a pattern or risk signal suggests attention
blocked_action:
- declare diagnosis, legal judgment, or final financial advice as system fact
escalation_threshold:
- any template attempting authoritative claim language

### policy: household_boundary_enforcement
policy_statement:
Private scope remains private unless an explicit consent visibility row allows a narrower permitted share.
permitted_action:
- share household-safe stock reminders derived from shared items
blocked_action:
- show private mood, health, or finance facts in household surface
escalation_threshold:
- any derived household recommendation sourced from private-only data

### policy: multilingual_output_consistency
policy_statement:
Generated multilingual outputs must preserve meaning and severity.
permitted_action:
- translate explanation text while preserving severity labels
blocked_action:
- downgrade or exaggerate severity across languages
escalation_threshold:
- severity mismatch detected between source and translated output

### policy: recommendation_explainability
policy_statement:
Every surfaced recommendation must have an explanation record and source trace.
permitted_action:
- concise headline with expandable reasoning
blocked_action:
- recommendation with no stored explanation_text or evidence refs
escalation_threshold:
- production surface finds recommendation without explanation row

## 9.2 enforcement points
- write-time policy guard for consent and scope
- dispatch-time policy guard for visibility and channel
- render-time policy guard for explanation and language integrity
- admin audit review for override and suppression actions

## 9.3 acceptance
- blocked policy actions must emit blocked_by_policy outcome, not silent failure
- translated critical alert text must preserve original severity label
- household feed projection must exclude private-only derived outputs by default

# ============================================================
# 10. 100.SECURITY EXACTNESS
# ============================================================

purpose:
Fix access control, privacy classes, audit integrity, and secret handling for LifeOS.

## 10.1 access control matrix

user_self:
- read own private, selected-domain, and household-safe projections
- write own commands within consent and policy boundary
- acknowledge or resolve own visible alerts

household_member:
- read only household-shareable projections
- no access to private journal, private checkin, private risk, private finance artifacts
- may act on shared household tasks and stock reminders only

support_operator:
- read operational metadata, queue state, correlation_id, error summaries
- no raw class_p3 payload access by default
- temporary elevated view requires break-glass audit and approval

privacy_admin:
- review consent, visibility, suppression, and exposure incidents
- no content editing rights on business rows

system_worker:
- least-privilege service account per module
- access only required tables and queues

## 10.2 storage classes
- class_p0_public_copy_safe: normal encrypted storage
- class_p1_personal_standard: encrypted at rest, normal query access
- class_p2_sensitive_life: encrypted at rest, masked in most support tools
- class_p3_highly_sensitive_masked: encrypted at rest, masked by default, restricted column access, redacted notification payloads

## 10.3 audit integrity rules
- every write command stores actor_type, actor_ref, idempotency_key, correlation_id
- every privilege-elevated read stores reason_code and session_ref
- every suppression, override, and consent change stores before and after snapshot refs
- audit rows are append-only and immutable from app-layer APIs

## 10.4 secret and key rules
- provider credentials stored in secret manager only
- no provider tokens in business tables except opaque references
- notification channel secrets scoped per environment and rotated

## 10.5 notification security rules
- push payloads for high/critical alerts must be redacted headline-only by default
- email or sms escalation may include only approved safe text templates
- deep links must enforce re-auth for class_p3 content

## 10.6 acceptance
- support tooling must redact class_p3 fields by default
- break-glass access must generate explicit audit event
- compromised provider token rotation must not require mutation of historical rows

# ============================================================
# 11. 110.INFRASTRUCTURE EXACTNESS
# ============================================================

purpose:
Fix runtime placement, queue topology, storage layout,
and monitoring boundaries for LifeOS.

## 11.1 runtime topology
api_units:
- life-api-command
- life-api-query

worker_units:
- life-outbox-dispatch-worker
- life-inbox-consume-worker
- life-memory-render-worker
- life-review-render-worker
- life-risk-evaluation-worker
- life-alert-dispatch-worker
- life-escalation-worker
- life-analytics-render-worker

scheduled_units:
- daily-summary-scheduler
- weekly-review-scheduler
- threshold-evaluation-scheduler
- stale-alert-expiry-scheduler
- dead-letter-reconciliation-scheduler

## 11.2 queue topology
- queue.life.outbox.dispatch
- queue.life.inbox.consume
- queue.life.render.memory
- queue.life.render.review
- queue.life.risk.evaluate
- queue.life.alert.dispatch
- queue.life.escalation.dispatch
- queue.life.analytics.render
- queue.life.dead_letter.reprocess

## 11.3 datastore layout
primary_relational_store:
- all business rows
- all audit rows
- outbox and inbox history

projection_store:
- dashboard latest snapshot
- alert center projections
- analytics overview projections
- household-safe feed projections

object_storage:
- imported raw attachment refs only
- render artifact snapshots when needed
- never primary source of truth for structured business state

## 11.4 infra guardrails
- outbox and inbox workers must be horizontally scalable and idempotent
- queue consumers must use visibility timeout longer than max handler time
- projections may be rebuilt from primary rows and are never sole source of truth
- dead-letter queues retained long enough for incident analysis and replay

## 11.5 monitoring signals
- p95 command latency by endpoint
- queue lag by queue name
- worker success/failure rate
- dead-letter growth rate
- alert dispatch latency by severity and channel
- summary/render freshness lag
- projection rebuild duration

## 11.6 capacity planning rules
- critical alert path receives reserved worker concurrency
- analytics rendering must never starve alert or risk queues
- daily and weekly review batch runs must support per-user sharding

## 11.7 backup and recovery
- relational store point-in-time recovery enabled
- projection store rebuildable from source tables
- object storage versioning enabled for retained artifacts
- disaster recovery runbook must include outbox replay order and consent consistency verification

## 11.8 acceptance
- alert queue saturation must not block command writes
- projection store loss must be recoverable without business-row loss
- replay after restore must preserve idempotency and not re-open resolved alerts incorrectly

# ============================================================
# 12. PASS-3 COMPLETION JUDGMENT
# ============================================================

what_is_now_fixed:
- memory and reflection exact contracts
- assistant orchestration exact contracts
- daily checkin and review exact contracts
- risk and alert exact contracts
- analytics exact contracts
- integration and consent exact contracts
- operations, policy, security, and infrastructure exactness baseline

what_is_still_remaining_for_full_implementation_ready_completion:
- 090.interface normalization to exact request/response and screen-state detail for all remaining UI files
- 120.implementation mapping completion to repository/module/test path granularity
- 130.development exact acceptance and release sequencing completion
- final status normalization and integrated rebuilt regeneration

honest_position:
Pass 3 materially reduces the remaining uncertainty.
After pass 1 to pass 3, LifeOS is no longer blocked by conceptual ambiguity in its core runtime or governance layers.
The main remaining work is final normalization and implementation-folder completion, not rethinking the design itself.
