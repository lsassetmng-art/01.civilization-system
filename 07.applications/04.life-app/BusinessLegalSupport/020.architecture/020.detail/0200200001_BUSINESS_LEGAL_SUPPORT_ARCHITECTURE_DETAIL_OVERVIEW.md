
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT ARCHITECTURE DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - コンポーネント分離と責務境界を詳細化する
  - write path と read path を分けて整理する
  - source of truth の誤認を防ぐ
