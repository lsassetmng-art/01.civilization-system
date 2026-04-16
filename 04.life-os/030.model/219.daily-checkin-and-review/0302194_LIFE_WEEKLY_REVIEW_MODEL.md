# ============================================================
# LIFE WEEKLY REVIEW MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines weekly review summaries in LifeOS.

entity_name:
life_weekly_review

meaning:
Represents a weekly structured review output.

core_fields:
- weekly_review_id
- user_id
- week_start
- week_end
- summary_text
- focus_points
- created_at
