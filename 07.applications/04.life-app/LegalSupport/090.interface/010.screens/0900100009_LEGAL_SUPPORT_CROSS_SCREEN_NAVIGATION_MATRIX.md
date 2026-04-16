# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT CROSS SCREEN NAVIGATION MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

navigation_matrix:

  dashboard:
    can_move_to:
      - legal_case_list
      - legal_case_detail
      - action_deadline_screen
      - document_screen
      - question_screen

  legal_case_list:
    can_move_to:
      - legal_case_detail
      - create_legal_case_modal_or_screen
      - archive_confirm

  legal_case_detail:
    can_move_to:
      - fact_timeline_screen
      - stakeholder_screen
      - document_screen
      - question_screen
      - consultation_history_screen
      - action_deadline_screen
      - export_pdf_screen
      - checklist_screen_future

  fact_timeline_screen:
    can_move_to:
      - legal_case_detail

  stakeholder_screen:
    can_move_to:
      - legal_case_detail

  document_screen:
    can_move_to:
      - legal_case_detail
      - export_pdf_screen

  question_screen:
    can_move_to:
      - legal_case_detail
      - consultation_history_screen

  consultation_history_screen:
    can_move_to:
      - legal_case_detail
      - action_deadline_screen

  action_deadline_screen:
    can_move_to:
      - legal_case_detail
      - dashboard

  export_pdf_screen:
    can_move_to:
      - legal_case_detail
      - export_confirm
      - family_share_setting

  family_share_setting:
    can_move_to:
      - legal_case_detail
      - export_pdf_screen

navigation_rules:
  - detail 画面をハブにする
  - destructive action は confirm step を挟む
  - export / share は final confirm を必須にする
  - checklist_screen は永続化導入後の将来画面として扱う
