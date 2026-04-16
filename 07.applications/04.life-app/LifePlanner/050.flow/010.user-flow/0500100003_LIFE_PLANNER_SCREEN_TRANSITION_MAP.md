# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER SCREEN TRANSITION MAP
# ============================================================

status: draft
system: LifePlanner
layer: 050.flow
subfolder: 010.user-flow
phase: phase-1-to-phase-4
owner: Boss
prepared_by: Zero

purpose:
  - LifePlannerの主要画面遷移を固定する
  - 画面間の責務を明確化する
  - 実装前に導線の迷子を防ぐ

entry_points:
  - home
  - notification_center
  - pricing_guide
  - reflection_candidate_view

primary_transition_map:
  home:
    next:
      - life_plan_list
      - life_plan_detail
      - notification_center
      - reflection_candidate_view
      - pricing_guide
      - settings

  life_plan_list:
    next:
      - life_plan_detail
      - create_plan
      - pricing_guide
    back:
      - home

  create_plan:
    next:
      - plan_basic_form
      - timeline_editor
      - goal_edit
      - plan_review_confirm
    back:
      - life_plan_list

  life_plan_detail:
    next:
      - timeline_view
      - goal_list
      - review_log_view
      - risk_list
      - family_share_setting
      - scenario_compare
      - domain_dashboard
      - age_view
      - reflection_candidate_view
    back:
      - life_plan_list
      - home

  timeline_view:
    next:
      - event_edit
      - goal_detail_from_timeline
      - life_plan_detail
    back:
      - life_plan_detail

  goal_list:
    next:
      - goal_edit
      - milestone_view
      - life_plan_detail
    back:
      - life_plan_detail

  review_log_view:
    next:
      - review_detail
      - life_plan_detail
    back:
      - life_plan_detail

  risk_list:
    next:
      - risk_edit
      - life_plan_detail
    back:
      - life_plan_detail

  family_share_setting:
    next:
      - member_invite
      - share_scope_edit
      - share_history
      - life_plan_detail
      - pricing_guide
    back:
      - life_plan_detail

  scenario_compare:
    next:
      - scenario_edit
      - scenario_compare_result
      - life_plan_detail
      - pricing_guide
    back:
      - life_plan_detail

  domain_dashboard:
    next:
      - life_plan_detail
      - goal_list
      - timeline_view
    back:
      - life_plan_detail

  age_view:
    next:
      - life_plan_detail
      - timeline_view
      - pricing_guide
    back:
      - life_plan_detail

  reflection_candidate_view:
    next:
      - reflection_candidate_detail
      - apply_reflection_confirm
      - life_plan_detail
    back:
      - home
      - life_plan_detail

  notification_center:
    next:
      - notification_detail
      - life_plan_detail
      - reflection_candidate_view
    back:
      - home

  pricing_guide:
    next:
      - upgrade_confirm
      - home
      - life_plan_detail
    back:
      - home
      - blocked_feature_origin

transition_principles:
  - homeを最上位の迷わない起点にする
  - 1計画の深掘りはlife_plan_detailを中心ハブにする
  - 編集系画面は必ず親画面へ戻せるようにする
  - 有料機能導線はpricing_guideへ逃がす
  - 他アプリ反映候補はhomeとlife_plan_detailの両方から入れる
