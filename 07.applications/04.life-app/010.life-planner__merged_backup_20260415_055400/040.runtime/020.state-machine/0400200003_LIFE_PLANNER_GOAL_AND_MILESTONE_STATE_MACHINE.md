# ============================================================
# LIFE PLANNER GOAL AND MILESTONE STATE MACHINE
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 020.state-machine
owner: Boss
prepared_by: Zero
schema: life

entity_01:
  entity: life.life_goal
  state_field:
    - goal_status
  states:
    - not_started
    - planned
    - in_progress
    - completed
    - paused
    - cancelled
  entry_state:
    - planned
  allowed_transitions:
    - not_started -> planned
    - planned -> in_progress
    - planned -> paused
    - in_progress -> completed
    - in_progress -> paused
    - paused -> in_progress
    - planned -> cancelled
    - paused -> cancelled
  forbidden_transitions:
    - completed -> in_progress
    - completed -> planned
    - cancelled -> any
  notes:
    - not_started は登録直後の未着手整理用
    - planned は開始待ち
    - completed は最終完了
    - cancelled は終端扱い

entity_02:
  entity: life.life_milestone
  state_field:
    - milestone_status
  states:
    - not_started
    - planned
    - in_progress
    - completed
    - paused
    - cancelled
  entry_state:
    - planned
  allowed_transitions:
    - planned -> in_progress
    - in_progress -> completed
    - in_progress -> paused
    - paused -> in_progress
    - planned -> cancelled
  forbidden_transitions:
    - completed -> any
    - cancelled -> any

role_rules:
  owner:
    - can change all goal and milestone states
  family_editor:
    - can change state within shared scope
    - cannot change state on hidden sensitive categories
  family_viewer:
    - cannot change any state
