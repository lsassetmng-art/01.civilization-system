# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER SCREEN ITEM BINDING NOTE
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 020.screen-item
owner: Boss
prepared_by: Zero
persistence_schema: life

binding_examples:
  - screen_item: plan_name
    source_entity: life_plan
    source_field: plan_name
    logical_storage: life.life_plan.plan_name

  - screen_item: goal_title
    source_entity: life_goal
    source_field: title
    logical_storage: life.life_goal.title

  - screen_item: next_event_date
    source_entity: event_timeline
    source_field: derived.next_event_date
    logical_storage: derived from life.event_timeline

  - screen_item: review_count
    source_entity: review_log
    source_field: derived.review_count
    logical_storage: derived from life.review_log

  - screen_item: role_type
    source_entity: shared_member
    source_field: role_type
    logical_storage: life.shared_member.role_type

  - screen_item: scenario_name
    source_entity: scenario
    source_field: scenario_name
    logical_storage: life.scenario.scenario_name

note:
  - logical_storage は設計上の想定保持先であり、物理DDL未固定段階では論理表現とする
  - derived項目は直接保持しない
  - derived項目は life schema 内の集計またはアプリ側整形で生成する
