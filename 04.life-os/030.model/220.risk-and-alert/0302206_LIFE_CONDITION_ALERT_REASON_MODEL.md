# ============================================================
# LIFE CONDITION ALERT REASON MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: risk-and-alert
owner: Boss
prepared_by: Zero

purpose:
Defines explanation records for condition-related alerts.

entity_name:
life_condition_alert_reason

meaning:
Represents a readable reason attached to a condition alert.

core_fields:
- condition_alert_reason_id
- alert_id
- reason_label
- explanation_note
- created_at
