# ============================================================
# LIFE EXERCISE SESSION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: activity-exercise
owner: Boss
prepared_by: Zero

purpose:
Defines exercise-session records in LifeOS.

entity_name:
life_exercise_session

meaning:
Represents a discrete exercise activity.

core_fields:
- exercise_session_id
- user_id
- session_type
- started_at
- ended_at
- intensity_label
- note
- created_at
