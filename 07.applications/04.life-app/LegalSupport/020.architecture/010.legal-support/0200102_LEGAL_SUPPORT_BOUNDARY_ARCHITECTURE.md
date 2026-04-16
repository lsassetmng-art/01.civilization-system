
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT BOUNDARY ARCHITECTURE
# ============================================================

status: canonical-draft
phase: design-only

internal_boundaries:
  - case boundary
  - document confidentiality boundary
  - consultation record boundary
  - task/deadline operational boundary
  - share/export boundary

external_boundaries:
  - InheritanceSupport から相続整理要約を受ける
  - EndOfLifePlanner から意思情報要約を受ける
  - MoneyPlanner から資産/負債要約を受ける

boundary_rules:
  - 他アプリ正本を上書きしない
  - LegalSupport は相談整理責務に限定する
  - export artifact は原資料と同一視しない
  - permissions は計算結果であり正本データではない

non_goals:
  - 法的結論エンジン化
  - 自動訴訟判断
  - 税務/法務の最終断定
