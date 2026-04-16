# ============================================================
# LIFE HOME TASK MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines the household task model used in LifeOS.

entity_name:
life_home_task

meaning:
Represents a household maintenance task.

core_fields:
- home_task_id
- user_id
- title
- description
- area_type
- due_at
- recurrence_rule
- completion_state
- priority_level
- shared_scope
- reminder_enabled
- created_at
- updated_at

rules:
- home tasks are daily-life maintenance units
- completion_state must be simple and user-readable
- recurrence is first-class
