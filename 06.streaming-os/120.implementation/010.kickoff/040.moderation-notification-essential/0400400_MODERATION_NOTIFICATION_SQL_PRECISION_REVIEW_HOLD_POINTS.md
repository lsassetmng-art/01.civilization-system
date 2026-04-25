# ============================================================
# MODERATION NOTIFICATION SQL PRECISION REVIEW HOLD POINTS
# ============================================================

status: canonical-hold-points
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Identifies the exact hold points that must be confirmed in K4 SQL precision review.

hold_points:
- jsonb vs structured columns for evidence references
- whether review alerts and escalation alerts stay separate tables or converge under one typed family
- exact actor linkage strategy across review and moderation families
- exact due/urgency time-field introduction strategy for review pipeline tables
- exact notification preview/detail split storage strategy
- exact projection SQL strategy for recipient-safe vs runtime-only visibility
- exact policy enforcement shape for moderation-only mutation paths

hold_severity:
- blocking_for_ddl_if_unresolved: yes

note:
These are precision hold points only.
They do not reopen K4 meaning-level design.
