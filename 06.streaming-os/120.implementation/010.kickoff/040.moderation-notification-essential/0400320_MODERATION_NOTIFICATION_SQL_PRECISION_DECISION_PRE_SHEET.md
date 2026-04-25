# ============================================================
# MODERATION NOTIFICATION SQL PRECISION DECISION PRE-SHEET
# ============================================================

status: canonical-pre-sheet
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Prepares the decision sheet for SQL-precision review of K4 moderation-notification-essential.

review_role_note:
- Sato(DB reviewer) is required when SQL phase starts

review_pipeline_decisions_to_close:
- exact FK strategy across review_queue_items and dependent review tables
- exact actor linkage strategy for assigned reviewer and decision actor fields
- exact check implementation for job/task/decision/result/alert states
- exact due/overdue timestamp storage strategy if introduced or refined
- exact limited-outcome projection support storage strategy

moderation_decisions_to_close:
- exact field type strategy for comment body
- exact evidence ref storage strategy for reports and appeals
- exact check implementation for moderation state, report reason, appeal reason, decision state
- exact actor linkage strategy for reporter/requester/author relations

notification_decisions_to_close:
- exact event type and notification type check implementation
- exact preview/detail storage split
- exact read_flag storage strategy
- exact delivery-state storage and visibility strategy
- exact alert-family storage distinction for review vs escalation alerts

constraint_and_index_decisions_to_close:
- minimal index sets for review queue lookup
- minimal index sets for moderation target lookup
- minimal index sets for recipient notification lookup
- minimal index sets for alert priority and updated_at lookup
- partial index deferral vs immediate introduction

note:
This sheet prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
