# ============================================================
# LIFE DAILY CHECKIN MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines the daily check-in model in LifeOS.

entity_name:
life_daily_checkin

meaning:
Represents a structured user check-in for a day.

core_fields:
- daily_checkin_id
- user_id
- checkin_date
- mood_level
- energy_level
- body_condition_level
- stress_level
- sleep_feeling_level
- free_note
- completion_state
- created_at
- updated_at

rules:
- daily check-in is lightweight
- values may remain approximate
- free note is optional
