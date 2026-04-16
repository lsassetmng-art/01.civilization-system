
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical-initialized
system: LegalSupport

assumptions:
  - iPhone / Android / PC / Tablet 対応
  - 初期は設計正本を先行し、詳細実装は後続
  - 保存方式や外部連携詳細は別フェーズで具体化する

schema_policy:
  primary_schema: life

notes:
  - LegalSupport は LifeOS 系個人法務整理アプリとして life スキーマを主保存先とする
