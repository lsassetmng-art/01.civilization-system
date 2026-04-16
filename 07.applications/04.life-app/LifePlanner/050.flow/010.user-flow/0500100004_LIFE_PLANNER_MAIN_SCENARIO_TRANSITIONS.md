# ============================================================
# LIFE PLANNER MAIN SCENARIO TRANSITIONS
# ============================================================

status: draft
system: LifePlanner
layer: 050.flow
subfolder: 010.user-flow
phase: phase-1-to-phase-4
owner: Boss
prepared_by: Zero

main_scenarios:

  scenario_01_create_new_plan:
    goal:
      - 新しい人生計画表を作る
    steps:
      - home
      - life_plan_list
      - create_plan
      - plan_basic_form
      - goal_edit
      - timeline_editor
      - plan_review_confirm
      - life_plan_detail
    completion_condition:
      - plan_idが生成され、detailへ遷移できること

  scenario_02_review_existing_plan:
    goal:
      - 既存計画を見直す
    steps:
      - home
      - life_plan_detail
      - review_log_view
      - goal_list or timeline_view
      - edit target screen
      - save
      - review_reason_confirm
      - life_plan_detail
    completion_condition:
      - review_logが追加されること

  scenario_03_apply_reflection_candidate:
    goal:
      - 他アプリ情報を見直し候補として採用する
    steps:
      - home
      - reflection_candidate_view
      - reflection_candidate_detail
      - apply_reflection_confirm
      - affected_goal_or_timeline_edit
      - review_reason_confirm
      - life_plan_detail
    completion_condition:
      - 候補状態がappliedになり、計画に反映されること

  scenario_04_family_share:
    goal:
      - 家族へ閲覧または共同編集権限を付与する
    steps:
      - life_plan_detail
      - family_share_setting
      - member_invite
      - role_select
      - share_scope_edit
      - invite_confirm
      - share_history
    completion_condition:
      - shared_memberが作成されること

  scenario_05_compare_scenarios:
    goal:
      - 複数シナリオを比較する
    steps:
      - life_plan_detail
      - scenario_compare
      - scenario_edit
      - scenario_compare_result
      - adopt_or_keep_note
      - life_plan_detail
    completion_condition:
      - scenario compare resultが保存されること

blocking_rules:
  - Family専用機能はFreeで直接編集不可
  - ブロック時はpricing_guideへ遷移する
  - センシティブ共有設定はownerのみ操作可能
