
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# STATE MACHINE OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 020.state-machine
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - LifePlannerの主要entityの状態遷移を固定する
  - UI、payload、権限、論理テーブルと整合させる
  - 実装前に不正遷移や曖昧な状態定義を防ぐ

state_targets:
  - life_plan
  - life_goal
  - life_milestone
  - life_event_timeline
  - life_review_log
  - life_reflection_candidate
  - life_shared_member
  - life_scenario_decision

runtime_principles:
  - 自動確定は禁止
  - ownerが最終判断を持つ
  - family_editorは一部編集可だが最終確定権限は持たない
  - family_viewerは状態変更不可
