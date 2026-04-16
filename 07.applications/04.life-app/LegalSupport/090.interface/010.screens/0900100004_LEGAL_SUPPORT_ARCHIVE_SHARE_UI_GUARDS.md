# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT ARCHIVE SHARE UI GUARDS
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

ui_guard_points:

  archive_guard:
    before_archive_checks:
      - active_export_in_progress must be false
      - user confirms archive intent
      - user is informed notifications will stop

  reopen_guard:
    before_reopen_checks:
      - owner only
      - archived or completed only
      - user confirms reopen intent

  family_share_guard:
    before_enable_checks:
      - plus_family plan required
      - visibility_scope reviewed
      - hidden sections reviewed
      - document shared_flag reviewed

  export_guard:
    before_pdf_export_checks:
      - at least one section selected
      - hidden documents excluded
      - private notes excluded
      - target scope confirmed

  expense_guard:
    before_family_exposure_checks:
      - expense_record default hidden
      - user explicitly opts in if future support added

ui_messages:
  archive_confirm:
    - この案件をアーカイブすると通常通知は停止されます
  reopen_confirm:
    - この案件を再開すると更新と通知が再び有効になります
  share_confirm:
    - 共有範囲に含まれる内容を確認してください
  export_confirm:
    - PDFに含める項目を最終確認してください
