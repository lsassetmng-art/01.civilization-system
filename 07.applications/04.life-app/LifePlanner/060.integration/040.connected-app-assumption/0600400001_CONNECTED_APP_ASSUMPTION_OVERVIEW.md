
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# CONNECTED APP ASSUMPTION OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 040.connected-app-assumption
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - LifePlannerが受け取る外部アプリ由来情報の前提を整理する
  - まだ exact upstream contract が未固定でも、期待する意味単位を先に決める
  - reflection candidate の品質を安定化する

connected_apps:
  - MoneyPlanner
  - EndOfLifePlanner
  - BodyMetrics
  - TrainingCoach
  - 法律系アプリ群
