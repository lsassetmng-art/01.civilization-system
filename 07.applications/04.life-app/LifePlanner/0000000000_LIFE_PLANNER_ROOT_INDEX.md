
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER ROOT INDEX
# ============================================================

status: draft
system: LifePlanner
layer: root
owner: Boss
prepared_by: Zero

root_documents:
  - 0000000000_LIFE_PLANNER_ROOT_INDEX.md
  - 0000000001_LIFE_PLANNER_ROOT_OVERVIEW.md
  - 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md

layers:
  - 010.constitution
  - 020.architecture
  - 030.model
  - 040.runtime
  - 050.flow
  - 060.integration
  - 070.operations
  - 080.policy
  - 090.interface
  - 100.security
  - 110.infrastructure
  - 120.implementation
  - 130.development
  - 920.meta

note:
  - 本アプリは LifeOS / 人生設計領域の主軸アプリとして設計する
  - 人生計画表、年表、目標、費用概算、見直し履歴を中核とする
