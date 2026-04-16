# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# NOTIFICATION REVIEW OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 020.notification-review
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - LifePlannerの通知対象を固定する
  - 見直しサイクルを運用設計として定義する
  - 通知の出しすぎや不安煽りを防ぐ

operation_principles:
  - 通知は整理支援のために行う
  - 強制感の強い通知にしない
  - センシティブ情報は共有範囲外へ通知しない
  - 他アプリ起点の変化は自動確定ではなく見直し候補通知に留める
