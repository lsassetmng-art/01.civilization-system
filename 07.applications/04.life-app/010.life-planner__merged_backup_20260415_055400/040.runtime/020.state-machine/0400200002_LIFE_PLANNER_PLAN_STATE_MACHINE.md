# ============================================================
# LIFE PLANNER PLAN STATE MACHINE
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 020.state-machine
owner: Boss
prepared_by: Zero
schema: life
entity: life.life_plan

state_field:
  - plan_status

states:
  - draft
  - active
  - archived

entry_state:
  - draft

terminal_state:
  - archived

allowed_transitions:
  - from: draft
    to: active
    trigger:
      - owner activates plan
    conditions:
      - plan_name exists
      - start_year exists
      - end_year exists
      - primary planning intent is defined

  - from: active
    to: archived
    trigger:
      - owner archives plan
    conditions:
      - explicit owner action only

  - from: archived
    to: active
    trigger:
      - owner restores plan
    conditions:
      - explicit owner action only

forbidden_transitions:
  - draft -> archived without owner action
  - archived -> draft
  - any transition by family_viewer
  - final transition by family_editor

runtime_notes:
  - draftでもgoal / timelineの仮登録は許可できる
  - activeは通常運用対象
  - archivedは参照中心で編集は制限対象
