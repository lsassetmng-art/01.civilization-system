# ============================================================
# LIFE SPENDING ALERT MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines spending-alert records in LifeOS.

entity_name:
life_spending_alert

meaning:
Represents a lightweight overspend or unusual-spending alert.

core_fields:
- spending_alert_id
- user_id
- period_start
- period_end
- alert_type
- alert_level
- explanation_note
- created_at
