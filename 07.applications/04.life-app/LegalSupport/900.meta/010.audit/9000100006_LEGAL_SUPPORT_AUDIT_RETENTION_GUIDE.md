# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT AUDIT RETENTION GUIDE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit
schema: life

retention_guidelines:
  high_severity_actions:
    keep:
      - long_term
    examples:
      - archive_legal_case
      - reopen_legal_case
      - family share changes
      - export execution

  medium_severity_actions:
    keep:
      - medium_term
    examples:
      - legal_case updates
      - document verification
      - notification preference changes

  low_severity_actions:
    keep:
      - optional_or_aggregated
    examples:
      - preview generation
      - non-destructive helper actions

guidelines:
  - snapshot volume は action severity に応じて制御する
  - export 実行ログは included_sections を保持する
  - private note 全文は audit へ過剰保存しない
