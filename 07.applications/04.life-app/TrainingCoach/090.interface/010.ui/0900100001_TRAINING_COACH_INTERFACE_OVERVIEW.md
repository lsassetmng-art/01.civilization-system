
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH INTERFACE OVERVIEW
# ============================================================

status: canonical-draft
phase: design-initialization
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - today_plan
  - plan_editor
  - session_execution
  - completion_result
  - streak_and_progress
  - guide_viewer
  - settings
  - premium_upgrade

ui_principles:
  - 実施中は迷わせない
  - 1画面1目的を優先する
  - スマホ優先だがタブレット / PC閲覧性も担保する
