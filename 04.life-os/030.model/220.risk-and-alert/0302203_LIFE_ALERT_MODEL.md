# ============================================================
# LIFE ALERT MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: risk-and-alert
owner: Boss
prepared_by: Zero

purpose:
Defines alerts in LifeOS.

entity_name:
life_alert

meaning:
Represents a surfaced alert requiring unusual attention.

core_fields:
- alert_id
- user_id
- alert_type
- alert_level
- source_signal_id
- surfaced_at
- explanation_note
- created_at
