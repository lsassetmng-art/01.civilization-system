# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER SCREEN PAYLOAD MODEL TRACE MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 060.traceability
owner: Boss
prepared_by: Zero
schema: life

matrix:
  - screen_group: home
    payload_groups:
      - plan.detail summary read
      - reflection_candidate.list summary read
    model_entities:
      - life.life_plan
      - life.life_goal
      - life.life_event_timeline
      - life.life_review_log
      - life.life_reflection_candidate

  - screen_group: life_plan_detail
    payload_groups:
      - life_plan.detail
    model_entities:
      - life.life_plan
      - life.life_goal
      - life.life_event_timeline
      - life.life_review_log

  - screen_group: goal_list_and_edit
    payload_groups:
      - life_goal.list
      - life_goal.create
      - life_goal.update
      - life_goal.milestone.create
    model_entities:
      - life.life_goal
      - life.life_milestone

  - screen_group: timeline_view_and_edit
    payload_groups:
      - life_timeline.event.list
      - life_timeline.event.create
      - life_timeline.event.update
    model_entities:
      - life.life_event_timeline
      - life.life_goal

  - screen_group: reflection_candidate_view
    payload_groups:
      - life_reflection_candidate.list
      - life_reflection_candidate.apply
      - life_reflection_candidate.dismiss
      - life_review.create
    model_entities:
      - life.life_reflection_candidate
      - life.life_review_log
      - affected target entity

  - screen_group: family_share_setting
    payload_groups:
      - life_share.member.invite
      - life_share.member.list
      - life_share.scope.update
    model_entities:
      - life.life_shared_member

  - screen_group: scenario_compare
    payload_groups:
      - life_scenario.create
      - life_scenario.compare
      - life_scenario.decision.apply
    model_entities:
      - life.life_scenario
      - life.life_scenario_decision
