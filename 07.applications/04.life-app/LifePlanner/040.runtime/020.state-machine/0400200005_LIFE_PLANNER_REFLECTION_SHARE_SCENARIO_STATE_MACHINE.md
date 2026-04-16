# ============================================================
# LIFE PLANNER REFLECTION / SHARE / SCENARIO STATE MACHINE
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 020.state-machine
owner: Boss
prepared_by: Zero
schema: life

entity_01:
  entity: life.life_reflection_candidate
  state_field:
    - reflection_status
  states:
    - pending
    - applied
    - dismissed
  entry_state:
    - pending
  allowed_transitions:
    - pending -> applied
    - pending -> dismissed
  forbidden_transitions:
    - applied -> pending
    - dismissed -> pending
    - applied -> dismissed
    - dismissed -> applied
  role_rules:
    owner:
      - can apply
      - can dismiss
    family_editor:
      - cannot finalize
    family_viewer:
      - cannot act

entity_02:
  entity: life.life_shared_member
  state_field:
    - invite_status
  states:
    - pending
    - accepted
    - declined
  entry_state:
    - pending
  allowed_transitions:
    - pending -> accepted
    - pending -> declined
  forbidden_transitions:
    - accepted -> pending
    - declined -> pending
  notes:
    - scope update is not a status transition
    - scope update is separate mutable attribute change

entity_03:
  entity: life.life_scenario_decision
  state_field:
    - decision
  states:
    - keep_note_only
    - adopt_to_plan
    - archive_only
  entry_state:
    - keep_note_only
  notes:
    - scenario_decision は結果種別であり通常の状態遷移管理より decision record として扱う
    - adopt_to_plan は explicit owner action only

cross_entity_rules:
  - reflection apply creates review_log
  - scenario adopt_to_plan may require goal or event update proposal, but auto-update is not required by default
  - accepted shared member still follows share_scope restrictions
