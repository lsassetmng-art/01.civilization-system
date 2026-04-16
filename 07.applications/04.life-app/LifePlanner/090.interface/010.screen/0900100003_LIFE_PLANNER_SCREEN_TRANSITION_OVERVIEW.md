
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER SCREEN TRANSITION OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 010.screen
phase: phase-1-to-phase-4
owner: Boss
prepared_by: Zero

screen_groups:
  root:
    - home
    - life_plan_list
    - pricing_guide
    - settings
    - notification_center

  plan_core:
    - life_plan_detail
    - timeline_view
    - goal_list
    - goal_edit
    - milestone_view
    - review_log_view
    - risk_list

  collaboration:
    - family_share_setting
    - member_invite
    - share_scope_edit
    - share_history

  advanced:
    - scenario_compare
    - scenario_edit
    - scenario_compare_result
    - domain_dashboard
    - age_view
    - reflection_candidate_view
    - reflection_candidate_detail

screen_design_rules:
  - homeは全体把握と入口に徹する
  - life_plan_detailは1計画の中心ハブにする
  - detail配下の画面は戻り先をdetailに固定する
  - family/share/scenarioはdetail起点で入る
  - blocked featureはpricing_guideへ逃がす
