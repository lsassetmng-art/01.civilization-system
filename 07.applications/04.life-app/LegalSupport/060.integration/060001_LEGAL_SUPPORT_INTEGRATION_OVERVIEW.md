
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT INTEGRATION OVERVIEW
# ============================================================

status: canonical-initialized
system: LegalSupport

lifeos_linkages:
  - InheritanceSupportへ相続案件を振り分ける
  - BusinessLegalSupportへ事業案件を振り分ける
  - EndOfLifePlannerへ遺言・家族引継ぎ関連を振り分ける
  - MoneyPlannerへ相談費用連携を将来追加可能とする

integration_rules:
  - 法的判断結果は連携対象にしない
  - 振り分けは案件分類ベースで行う
