# ============================================================
# LEGAL SUPPORT ENTITY FIELD MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

field_rule_legend:
  PK: primary key
  FK: foreign key
  NN: not null
  OPT: optional
  UI: user input
  SYS: system managed
  ENUM: fixed value candidate
  BOOL: boolean
  TS: timestamp
  TXT: text
  INT: integer
  DATE: date

entities:

  legal_case:
    table_name: life.legal_case
    purpose:
      - 相談案件の親エンティティ
    fields:
      - name: legal_case_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: owner_user_id
        type: uuid
        attrs: [NN, SYS]
      - name: title
        type: text
        attrs: [NN, UI]
      - name: category
        type: text
        attrs: [NN, UI, ENUM]
      - name: status
        type: text
        attrs: [NN, UI, ENUM]
      - name: priority
        type: text
        attrs: [NN, UI, ENUM]
      - name: summary
        type: text
        attrs: [OPT, UI]
      - name: visibility_scope
        type: text
        attrs: [NN, UI, ENUM]
      - name: primary_app_route
        type: text
        attrs: [NN, SYS, ENUM]
      - name: family_share_enabled
        type: boolean
        attrs: [NN, UI, BOOL]
      - name: archived_at
        type: timestamptz
        attrs: [OPT, SYS, TS]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      category:
        - family
        - inheritance
        - divorce
        - neighborhood
        - contract
        - consumer
        - debt
        - labor
        - housing
        - accident
        - end_of_life
        - other
      status:
        - draft
        - active
        - on_hold
        - completed
        - archived
      priority:
        - low
        - medium
        - high
        - urgent
      visibility_scope:
        - private
        - family_shared
      primary_app_route:
        - legal_support
        - inheritance_support
        - business_legal_support
        - end_of_life_planner

  fact_timeline:
    table_name: life.fact_timeline
    purpose:
      - 事実関係の時系列記録
    fields:
      - name: fact_timeline_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: event_date
        type: date
        attrs: [OPT, UI, DATE]
      - name: event_date_precision
        type: text
        attrs: [NN, UI, ENUM]
      - name: event_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: fact_text
        type: text
        attrs: [NN, UI, TXT]
      - name: assumption_text
        type: text
        attrs: [OPT, UI, TXT]
      - name: source_note
        type: text
        attrs: [OPT, UI, TXT]
      - name: verification_status
        type: text
        attrs: [NN, UI, ENUM]
      - name: sort_order
        type: integer
        attrs: [NN, SYS, INT]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      event_date_precision:
        - exact_date
        - month_only
        - year_only
        - estimated
        - unknown
      event_type:
        - consultation
        - incident
        - communication
        - filing
        - payment
        - contract
        - family_event
        - other
      verification_status:
        - confirmed
        - unverified
        - disputed

  stakeholder:
    table_name: life.stakeholder
    purpose:
      - 関係者整理
    fields:
      - name: stakeholder_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: stakeholder_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: display_name
        type: text
        attrs: [NN, UI]
      - name: relation_to_case
        type: text
        attrs: [OPT, UI]
      - name: contact_note
        type: text
        attrs: [OPT, UI]
      - name: share_visibility
        type: text
        attrs: [NN, UI, ENUM]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      stakeholder_type:
        - self
        - family
        - counterpart
        - lawyer
        - advisor
        - organization
        - other
      share_visibility:
        - private
        - family_visible

  document_item:
    table_name: life.document_item
    purpose:
      - 書類メタ情報と状態管理
    fields:
      - name: document_item_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: document_category
        type: text
        attrs: [NN, UI, ENUM]
      - name: document_name
        type: text
        attrs: [NN, UI]
      - name: possession_status
        type: text
        attrs: [NN, UI, ENUM]
      - name: submission_status
        type: text
        attrs: [NN, UI, ENUM]
      - name: important_flag
        type: boolean
        attrs: [NN, UI, BOOL]
      - name: shared_flag
        type: boolean
        attrs: [NN, UI, BOOL]
      - name: note
        type: text
        attrs: [OPT, UI]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      document_category:
        - id
        - contract
        - letter
        - receipt
        - certificate
        - family_record
        - property_record
        - consultation_material
        - other
      possession_status:
        - have
        - need_to_get
        - unavailable
      submission_status:
        - not_required
        - pending
        - submitted

  question_list:
    table_name: life.question_list
    purpose:
      - 質問項目管理
    fields:
      - name: question_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: question_text
        type: text
        attrs: [NN, UI]
      - name: question_status
        type: text
        attrs: [NN, UI, ENUM]
      - name: priority
        type: text
        attrs: [NN, UI, ENUM]
      - name: asked_at
        type: timestamptz
        attrs: [OPT, UI, TS]
      - name: answered_at
        type: timestamptz
        attrs: [OPT, UI, TS]
      - name: note
        type: text
        attrs: [OPT, UI]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      question_status:
        - open
        - asked
        - answered
        - on_hold
      priority:
        - low
        - medium
        - high

  consultation_note:
    table_name: life.consultation_note
    purpose:
      - 相談履歴記録
    fields:
      - name: consultation_note_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: consultation_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: consultation_date
        type: timestamptz
        attrs: [NN, UI, TS]
      - name: counterpart_name
        type: text
        attrs: [OPT, UI]
      - name: summary
        type: text
        attrs: [NN, UI]
      - name: pending_items
        type: text
        attrs: [OPT, UI]
      - name: next_confirmation_points
        type: text
        attrs: [OPT, UI]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      consultation_type:
        - in_person
        - phone
        - chat
        - email
        - internal_note
        - other

  action_item:
    table_name: life.action_item
    purpose:
      - 次回アクション
    fields:
      - name: action_item_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: title
        type: text
        attrs: [NN, UI]
      - name: action_status
        type: text
        attrs: [NN, UI, ENUM]
      - name: assignee_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: due_date
        type: date
        attrs: [OPT, UI, DATE]
      - name: note
        type: text
        attrs: [OPT, UI]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      action_status:
        - open
        - in_progress
        - done
        - cancelled
      assignee_type:
        - self
        - family
        - professional
        - other

  deadline_item:
    table_name: life.deadline_item
    purpose:
      - 重要期限管理
    fields:
      - name: deadline_item_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: deadline_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: deadline_date
        type: date
        attrs: [NN, UI, DATE]
      - name: urgency_level
        type: text
        attrs: [NN, UI, ENUM]
      - name: notification_enabled
        type: boolean
        attrs: [NN, UI, BOOL]
      - name: note
        type: text
        attrs: [OPT, UI]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      deadline_type:
        - consultation
        - submission
        - response
        - payment
        - reminder
        - other
      urgency_level:
        - low
        - medium
        - high
        - urgent

  expense_record:
    table_name: life.expense_record
    purpose:
      - 費用記録
    fields:
      - name: expense_record_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: expense_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: amount
        type: numeric(18,2)
        attrs: [NN, UI]
      - name: currency_code
        type: text
        attrs: [NN, UI, ENUM]
      - name: paid_at
        type: date
        attrs: [OPT, UI, DATE]
      - name: note
        type: text
        attrs: [OPT, UI]
      - name: created_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: updated_at
        type: timestamptz
        attrs: [NN, SYS, TS]
    enums:
      expense_type:
        - consultation_fee
        - document_fee
        - filing_fee
        - travel_cost
        - other
      currency_code:
        - JPY
        - USD
        - EUR
        - GBP
        - CNY
        - other

  export_bundle:
    table_name: life.export_bundle
    purpose:
      - 共有出力履歴
    fields:
      - name: export_bundle_id
        type: uuid
        attrs: [PK, NN, SYS]
      - name: legal_case_id
        type: uuid
        attrs: [NN, FK, SYS]
      - name: export_type
        type: text
        attrs: [NN, UI, ENUM]
      - name: included_sections
        type: jsonb
        attrs: [NN, UI]
      - name: target_scope
        type: text
        attrs: [NN, UI, ENUM]
      - name: exported_at
        type: timestamptz
        attrs: [NN, SYS, TS]
      - name: exported_by
        type: uuid
        attrs: [NN, SYS]
    enums:
      export_type:
        - pdf
        - summary
      target_scope:
        - self
        - family
        - professional_future

global_rules:
  - 全 entity は schema=life
  - created_at / updated_at は全 entity に持つ
  - 主キーは uuid 前提
  - owner_user_id は legal_case を起点に管理する
  - family共有は別schema化ではなく visibility / share 制御で実現する
