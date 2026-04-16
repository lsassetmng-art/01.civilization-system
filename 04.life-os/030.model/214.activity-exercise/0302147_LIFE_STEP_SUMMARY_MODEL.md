# ============================================================
# LIFE STEP SUMMARY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: activity-exercise
owner: Boss
prepared_by: Zero

purpose:
Defines step summary records in LifeOS.

entity_name:
life_step_summary

meaning:
Represents a summarized daily or periodic step count.

core_fields:
- step_summary_id
- user_id
- date_or_period
- step_count
- source_type
- created_at
