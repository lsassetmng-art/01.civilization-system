# ============================================================
# LIFE CONTINUITY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: activity-exercise
owner: Boss
prepared_by: Zero

purpose:
Defines continuity tracking for activity and exercise.

entity_name:
life_continuity

meaning:
Represents streaks, breaks, and continuity state for activity habits.

core_fields:
- continuity_id
- user_id
- continuity_type
- current_streak
- break_state
- note
- created_at
- updated_at
