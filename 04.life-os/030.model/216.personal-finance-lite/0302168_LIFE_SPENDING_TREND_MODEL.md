# ============================================================
# LIFE SPENDING TREND MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines spending trend summaries in LifeOS.

entity_name:
life_spending_trend

meaning:
Represents private spending tendency across time.

core_fields:
- spending_trend_id
- user_id
- period_type
- period_start
- period_end
- trend_label
- explanation_note
- created_at
