# ============================================================
# LIFE DAILY SUMMARY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines daily summaries in LifeOS.

entity_name:
life_daily_summary

meaning:
Represents a summary view over a single day.

core_fields:
- daily_summary_id
- user_id
- target_date
- summary_text
- state_label
- created_at
