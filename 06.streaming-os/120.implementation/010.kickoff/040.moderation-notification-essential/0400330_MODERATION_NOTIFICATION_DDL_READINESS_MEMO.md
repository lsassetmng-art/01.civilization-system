# ============================================================
# MODERATION NOTIFICATION DDL READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K4 readiness for future DDL drafting.

tables_in_scope:
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

meaning_level_ready_items:
- review pipeline vs moderation boundary is closed
- general notification vs review alert boundary is closed
- recipient-facing vs runtime delivery visibility boundary is closed
- moderation mutation authority boundary is closed

still_precision_open:
- exact SQL type names
- exact evidence-ref storage strategy
- exact default clauses
- exact FK action clauses
- exact check syntax
- exact index method and partial-index strategy
- exact policy/projection SQL

ddl_risk_notes:
- do not collapse review pipeline and moderation outcome tables
- do not expose runtime delivery state as recipient-facing detail
- do not collapse review alerts into generic notification records
- do not let end-user mutation paths rewrite moderation-only state

recommended_future_order:
1. decide SQL precision items with Sato(DB reviewer)
2. draft review pipeline tables
3. draft moderation tables
4. draft notification and alert tables
5. draft minimal indexes
6. draft recipient-safe and role-safe projection strategies
7. review against K4 decision pack
