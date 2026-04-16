# ============================================================
# LIFE TREND SUMMARY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: life-analytics
owner: Boss
prepared_by: Zero

purpose:
Defines trend summaries in LifeOS analytics.

entity_name:
life_trend_summary

meaning:
Represents a summarized trend over a period.

core_fields:
- trend_summary_id
- user_id
- period_start
- period_end
- trend_label
- summary_text
- created_at
