# ============================================================
# LIFE ACTIVITY GOAL PROGRESS MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: activity-exercise
owner: Boss
prepared_by: Zero

purpose:
Defines progress against activity goals in LifeOS.

entity_name:
life_activity_goal_progress

meaning:
Represents progress state for movement or exercise targets.

core_fields:
- activity_goal_progress_id
- user_id
- goal_label
- period_start
- period_end
- progress_rate
- explanation_note
- created_at
