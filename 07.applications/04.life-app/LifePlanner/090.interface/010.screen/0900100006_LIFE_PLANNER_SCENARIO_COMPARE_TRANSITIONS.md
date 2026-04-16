# ============================================================
# LIFE PLANNER SCENARIO COMPARE TRANSITIONS
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 010.screen
phase: phase-4
owner: Boss
prepared_by: Zero

entry:
  - life_plan_detail -> scenario_compare

scenario_compare:
  sections:
    - scenario_list
    - cost_compare
    - event_compare
    - risk_compare
    - memo_area

  actions:
    - create_scenario
    - edit_scenario
    - compare_selected
    - keep_note_only
    - reflect_to_plan

scenario_flow:
  - scenario_compare
  - scenario_edit
  - scenario_compare_result
  - adopt_or_keep_note
  - life_plan_detail

plan_rules:
  - Freeではscenario_compareは開けずpricing_guideへ遷移する
  - compare結果は即時自動反映しない
  - ownerの採用操作でのみ計画へ反映する
