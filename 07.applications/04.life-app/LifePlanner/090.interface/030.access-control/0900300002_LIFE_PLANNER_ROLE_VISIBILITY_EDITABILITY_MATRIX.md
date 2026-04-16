# ============================================================
# LIFE PLANNER ROLE VISIBILITY EDITABILITY MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 030.access-control
owner: Boss
prepared_by: Zero
schema: life

matrix:

  home:
    owner:
      visible: full
      editable: none
    family_editor:
      visible: within_shared_scope
      editable: none
    family_viewer:
      visible: within_shared_scope
      editable: none

  life_plan_detail_plan_basic:
    owner:
      visible: full
      editable: yes
    family_editor:
      visible: within_shared_scope
      editable: no
    family_viewer:
      visible: within_shared_scope
      editable: no

  goal_list_and_goal_edit:
    owner:
      visible: full
      editable: yes
    family_editor:
      visible: within_shared_scope
      editable: yes_within_scope
    family_viewer:
      visible: within_shared_scope
      editable: no

  milestone_view_and_edit:
    owner:
      visible: full
      editable: yes
    family_editor:
      visible: within_shared_scope
      editable: yes_within_scope
    family_viewer:
      visible: within_shared_scope
      editable: no

  timeline_view_and_event_edit:
    owner:
      visible: full
      editable: yes
    family_editor:
      visible: within_shared_scope
      editable: yes_within_scope
    family_viewer:
      visible: within_shared_scope
      editable: no

  review_log_view:
    owner:
      visible: full
      editable: create_only
    family_editor:
      visible: within_shared_scope
      editable: create_review_proposal
    family_viewer:
      visible: within_shared_scope
      editable: no

  family_share_setting:
    owner:
      visible: full
      editable: yes
    family_editor:
      visible: no
      editable: no
    family_viewer:
      visible: no
      editable: no

  scenario_compare:
    owner:
      visible: family_plan_only
      editable: yes
    family_editor:
      visible: family_plan_only_within_shared_scope
      editable: compare_note_only
    family_viewer:
      visible: family_plan_only_within_shared_scope
      editable: no

  scenario_final_decision:
    owner:
      visible: family_plan_only
      editable: yes
    family_editor:
      visible: family_plan_only
      editable: no
    family_viewer:
      visible: family_plan_only
      editable: no

  reflection_candidate_view:
    owner:
      visible: full
      editable: apply_or_dismiss
    family_editor:
      visible: within_shared_scope_summary_only
      editable: no
    family_viewer:
      visible: no
      editable: no

sensitive_category_rule:
  - health
  - end_of_life
  - legal_memo
  - asset_summary

sensitive_rule_note:
  - 上記カテゴリは share_scope allow flag が true のときのみ family roles に表示する
