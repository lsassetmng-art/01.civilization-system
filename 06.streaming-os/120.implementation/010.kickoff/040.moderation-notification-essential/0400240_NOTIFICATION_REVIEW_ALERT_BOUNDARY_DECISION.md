# ============================================================
# NOTIFICATION REVIEW ALERT BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K4-002

decision:
General notifications and review alerts remain distinct notification families.

general_notifications:
- recipient-facing inbox items
- creator/viewer/general event communication

review_alerts:
- reviewer/moderation assignment or queue urgency signals
- queue-specific or escalation-specific alert objects

rules:
- review alert does not collapse into general inbox item semantics
- review alert detail remains review/assignment scoped
- general notification detail must not expose raw review workspace state
