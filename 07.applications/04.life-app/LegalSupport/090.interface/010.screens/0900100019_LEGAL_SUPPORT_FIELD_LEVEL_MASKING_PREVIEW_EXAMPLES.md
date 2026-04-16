# ============================================================
# LEGAL SUPPORT FIELD LEVEL MASKING PREVIEW EXAMPLES
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

purpose:
  - field-level masking matrix を実際の preview 断面で理解しやすくする
  - owner と family で何がどう隠れるかを例示する
  - share/export/handoff 前の確認基準にする

example_01_family_export_document:

  source_document_item:
    document_category: family_record
    document_subcategory: family_register
    document_name: 戸籍関係資料
    possession_status: have
    submission_status: pending
    important_flag: true
    shared_flag: true
    confidentiality_level: private
    issuer_name: 市区町村
    note: 相続人確認用内部メモあり

  owner_preview:
    visible:
      - document_category
      - document_subcategory
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - shared_flag
      - confidentiality_level
      - issuer_name
      - note

  family_preview:
    visible:
      - none
    hidden:
      - document_name
      - issuer_name
      - note
    hidden_reason:
      - confidentiality_level=private のため family 共有対象外

example_02_family_export_fact_timeline:

  source_fact_timeline:
    event_date: 2026-04-01
    event_type: communication
    fact_text: 相手方へ連絡した
    assumption_text: 相手は合意しそう
    source_note: 個人メモ
    verification_status: unverified

  owner_preview:
    visible:
      - event_date
      - event_type
      - fact_text
      - assumption_text
      - source_note
      - verification_status

  family_preview:
    visible:
      - event_date
      - event_type
      - fact_text
      - verification_status
    hidden:
      - assumption_text
      - source_note
    hidden_reason:
      - 推測メモと内部メモは family 向け既定除外

example_03_family_dashboard_expense:

  source_expense_record:
    expense_type: consultation_fee
    amount: 10000
    currency_code: JPY
    paid_at: 2026-04-10
    note: 初回相談料

  owner_preview:
    visible:
      - expense_type
      - amount
      - currency_code
      - paid_at
      - note

  family_preview:
    visible:
      - none
    hidden:
      - expense_type
      - amount
      - currency_code
      - paid_at
      - note
    hidden_reason:
      - expense_record は family 向け既定非表示

example_04_handoff_preview_to_inheritance_support:

  source_case:
    title: 相続整理
    summary: 相続人と資料整理が必要
    private_note: 家族内で未共有の懸念あり

  handoff_preview:
    visible:
      - title
      - summary
      - selected stakeholder summary
      - selected timeline summary
      - selected document summary
    hidden:
      - private_note
    hidden_reason:
      - private note は cross-app handoff 対象外

preview_guidelines:
  - visible と hidden を両方示す
  - hidden は理由を必ず付ける
  - owner preview は raw に近く、family/handoff preview は masked 後を見せる
