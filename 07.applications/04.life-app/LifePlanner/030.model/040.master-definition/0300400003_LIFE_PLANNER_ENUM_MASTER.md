# ============================================================
# LIFE PLANNER ENUM MASTER
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 040.master-definition
owner: Boss
prepared_by: Zero
schema: life

enums:

  visibility_policy:
    - private
    - family_shared

  plan_status:
    - draft
    - active
    - archived

  role_type:
    - owner
    - family_viewer
    - family_editor

  goal_status:
    - not_started
    - planned
    - in_progress
    - completed
    - paused
    - cancelled

  milestone_status:
    - not_started
    - planned
    - in_progress
    - completed
    - paused
    - cancelled

  priority:
    - low
    - medium
    - high
    - critical

  event_mode:
    - single_date
    - date_range

  reflection_status:
    - pending
    - applied
    - dismissed

  invite_status:
    - pending
    - accepted
    - declined

  scenario_decision:
    - keep_note_only
    - adopt_to_plan
    - archive_only

  review_trigger_source:
    - manual
    - money_planner
    - end_of_life_planner
    - body_metrics
    - training_coach
    - legal_support_app

enum_policy:
  - enum は snake_case 固定
  - UI表示ラベルは locale 別にマッピングする
  - payload / schema / runtime で同じ enum を使う
