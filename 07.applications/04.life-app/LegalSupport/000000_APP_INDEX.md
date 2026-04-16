
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT APP INDEX
# ============================================================

status: canonical-draft
phase: implementation-prep-only
system: life-app
schema_name: life
app_name:
  en: LegalSupport
  ja: 法律相談サポートアプリ
root_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/LegalSupport

root_files:
  - 000000_APP_INDEX.md
  - 000001_APP_OVERVIEW.md
  - 000002_APP_READING_ORDER.md

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
  - 900.meta
  - 920.meta

current_design_scope:
  - constitution fixed
  - LifeOS positioning fixed
  - architecture fixed
  - interface fixed
  - business rules fixed
  - operations fixed
  - security fixed
  - model fixed at design responsibility level
  - integration fixed at responsibility level
  - pricing fixed
  - service scope fixed
  - implementation prep handoff fixed

not_in_scope_yet:
  - DDL finalization
  - SQL execution
  - psql execution
  - API implementation
  - application code
  - persistence implementation
  - sync implementation

purpose:
  - LegalSupport の実装準備までの正本入口
