# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT SCREEN ACTION MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

screen_action_matrix:

  dashboard:
    reads:
      - list_legal_case
      - get_legal_case_detail_summary
      - list_upcoming_deadline
    writes: []

  legal_case_list:
    reads:
      - list_legal_case
    writes:
      - create_legal_case
      - archive_legal_case

  legal_case_detail:
    reads:
      - get_legal_case_detail
    writes:
      - update_legal_case

  fact_timeline_screen:
    reads:
      - list_fact_timeline
    writes:
      - create_fact_timeline
      - update_fact_timeline
      - reorder_fact_timeline

  stakeholder_screen:
    reads:
      - list_stakeholder
    writes:
      - create_stakeholder
      - update_stakeholder

  document_screen:
    reads:
      - list_document_item
    writes:
      - create_document_item
      - update_document_item

  question_screen:
    reads:
      - list_question
    writes:
      - create_question
      - update_question

  consultation_history_screen:
    reads:
      - list_consultation_note
    writes:
      - create_consultation_note
      - update_consultation_note

  action_deadline_screen:
    reads:
      - list_action_item
      - list_deadline_item
    writes:
      - create_action_item
      - update_action_item
      - create_deadline_item
      - update_deadline_item

  expense_screen_future:
    reads:
      - list_expense_record
    writes:
      - create_expense_record
      - update_expense_record

  export_pdf_screen:
    reads:
      - get_legal_case_detail
      - export_preview
    writes:
      - create_export_bundle

screen_rules:
  - 1画面1責務を基本とする
  - detail 画面は summary hub として扱う
  - export は専用画面で最終確認を入れる
  - archive は一覧導線からのみ許可してもよい
