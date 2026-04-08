# ============================================================
# NOTIFICATION RULE COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents user-facing notification control rules.

fields:
- notification_rule_id
- user_id
- quiet_hours_enabled
- quiet_start_time
- quiet_end_time
- daily_summary_enabled
- grouped_summary_enabled
- renotification_enabled
- created_at
- updated_at

rules:
- quiet hours and daily summary remain distinct controls
