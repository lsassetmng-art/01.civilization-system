# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH SCREEN RESPONSIBILITY FULL MATRIX
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - 各画面が何を表示し、何を更新し、何を持たないかを固定する
  - 画面肥大化を防ぐ

screens:

dashboard:
  primary_responsibility:
    - 今日の状況サマリー表示
    - 継続状況表示
    - 今日の導線起点
  may_read:
    - streak_summary
    - training_session summary
    - fatigue snapshot
    - device_sync_state summary
  may_not_edit:
    - detailed training_plan structure
    - guide_content body
  outputs:
    - today_plan への遷移
    - streak_and_progress への遷移

today_plan:
  primary_responsibility:
    - 本日の運動一覧表示
    - セッション開始導線
  may_read:
    - training_session
    - training_plan
    - training_plan_item
    - recommendation badge
  may_not_edit:
    - premium settings
    - training_goal detail maintenance

plan_editor:
  primary_responsibility:
    - 運動プラン作成 / 編集
  may_edit:
    - training_plan
    - training_plan_rest_rule
    - training_plan_item
  may_not_edit:
    - completion_log
    - guide master
    - streak_summary direct values

session_execution:
  primary_responsibility:
    - 実施中の進行支援
    - 種目順表示
    - ガイド簡易表示
  may_edit:
    - training_session start / stop / completion path
  may_not_edit:
    - master exercise definitions
    - billing state

completion_result:
  primary_responsibility:
    - 完了結果表示
    - achievement_rate / streak 反映結果表示
  may_read:
    - completion_log
    - streak_summary
  may_not_edit:
    - finalized completion_log direct correction

guide_viewer:
  primary_responsibility:
    - ガイド本文 / メディア表示
    - safety notice 表示
  may_read:
    - guide_content
    - exercise_item_safety_notice
  may_not_edit:
    - session result
    - plan composition

settings:
  primary_responsibility:
    - notification preference
    - locale / currency preference candidate
    - app behavior preference
  may_edit:
    - app preference store candidate
  may_not_edit:
    - training_session finalized history

premium_upgrade:
  primary_responsibility:
    - Premium 価値説明
    - 課金導線
  may_read:
    - entitlement state
    - localized price text
  may_not_edit:
    - training content

screen_boundary_rules:
  - dashboard は編集画面にしない
  - session_execution は plan editor 代替にしない
  - guide_viewer は content management 画面にしない
  - completion_result は correction 画面にしない
