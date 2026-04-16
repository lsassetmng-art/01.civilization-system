# ============================================================
# LEGAL SUPPORT ENTITY DEFINITIONS
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities

entities:
  legal_case:
    description:
      - 相談案件の親エンティティ
    main_fields:
      - legal_case_id
      - owner_user_id
      - title
      - category
      - status
      - priority
      - summary
      - visibility_scope
      - created_at
      - updated_at

  fact_timeline:
    description:
      - 事実関係を時系列で保持する
    main_fields:
      - fact_timeline_id
      - legal_case_id
      - event_date
      - event_date_precision
      - event_type
      - fact_text
      - assumption_text
      - verification_status
      - sort_order

  stakeholder:
    description:
      - 案件関係者情報
    main_fields:
      - stakeholder_id
      - legal_case_id
      - stakeholder_type
      - display_name
      - relation_to_case
      - contact_note
      - share_visibility

  document_item:
    description:
      - 書類メタ情報と状態管理
    main_fields:
      - document_item_id
      - legal_case_id
      - document_category
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - shared_flag
      - note

  question_list:
    description:
      - 相談前後の質問項目
    main_fields:
      - question_id
      - legal_case_id
      - question_text
      - question_status
      - asked_at
      - answered_at
      - note

  consultation_note:
    description:
      - 面談や電話などの相談記録
    main_fields:
      - consultation_note_id
      - legal_case_id
      - consultation_type
      - consultation_date
      - counterpart_name
      - summary
      - pending_items
      - next_confirmation_points

  action_item:
    description:
      - 次回までにやること
    main_fields:
      - action_item_id
      - legal_case_id
      - title
      - action_status
      - assignee_type
      - due_date
      - note

  deadline_item:
    description:
      - 法務上または運用上の重要期限
    main_fields:
      - deadline_item_id
      - legal_case_id
      - deadline_type
      - deadline_date
      - urgency_level
      - notification_enabled
      - note

  expense_record:
    description:
      - 相談料や関連費用記録
    main_fields:
      - expense_record_id
      - legal_case_id
      - expense_type
      - amount
      - currency_code
      - paid_at
      - note

  export_bundle:
    description:
      - 共有PDFや共有要約の出力単位
    main_fields:
      - export_bundle_id
      - legal_case_id
      - export_type
      - included_sections
      - target_scope
      - exported_at
      - exported_by

model_rules:
  - fact_text と assumption_text は分離保持する
  - 通貨は currency_code を必須で保持する
  - share_visibility は案件単位と書類単位の両方を考慮する
  - deadline は通知有無を分けて持てるようにする
