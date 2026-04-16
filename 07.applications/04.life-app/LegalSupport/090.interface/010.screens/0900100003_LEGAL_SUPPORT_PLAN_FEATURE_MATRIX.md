# ============================================================
# LEGAL SUPPORT PLAN FEATURE MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

plans:
  free:
    monthly_price_jpy: 0
  plus_family:
    monthly_price_jpy: 500

feature_matrix:
  legal_case_create:
    free: true
    plus_family: true
  legal_case_update:
    free: true
    plus_family: true
  fact_timeline:
    free: true
    plus_family: true
  stakeholder_management:
    free: true
    plus_family: true
  document_management:
    free: true
    plus_family: true
  question_management:
    free: true
    plus_family: true
  consultation_history:
    free: true
    plus_family: true
  action_item_management:
    free: true
    plus_family: true
  deadline_basic:
    free: true
    plus_family: true
  deadline_advanced_notifications:
    free: false
    plus_family: true
  category_templates:
    free: partial
    plus_family: true
  consultation_checklist:
    free: false
    plus_family: true
  pdf_export:
    free: false
    plus_family: true
  family_share:
    free: false
    plus_family: true
  ai_summary:
    free: false
    plus_family: true
  contract_meta_management:
    free: false
    plus_family: true
  voice_memo:
    free: false
    plus_family: true
  expense_record:
    free: false
    plus_family: true

notes:
  - Free は相談整理の基本導線に限定
  - 有料価値は共有、期限、要約、整理強化で作る
  - Plus と Family は統合済み
