# ============================================================
# LEGAL SUPPORT NULLABLE DEFAULT MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

principles:
  - nullable は「未確定情報を保持する必要性」がある項目に限定する
  - default は UI 初期値とデータ既定値を混同しない
  - created_at / updated_at など system 項目は system default 前提
  - 法律判断に見える default は置かない

entity_matrix:

  legal_case:
    fields:
      legal_case_id:
        nullable: false
        default: generated_uuid
      owner_user_id:
        nullable: false
        default: current_user_id
      title:
        nullable: false
        default: none
      category:
        nullable: false
        default: other
      status:
        nullable: false
        default: draft
      priority:
        nullable: false
        default: medium
      summary:
        nullable: true
        default: null
      visibility_scope:
        nullable: false
        default: private
      primary_app_route:
        nullable: false
        default: legal_support
      family_share_enabled:
        nullable: false
        default: false
      archived_at:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  fact_timeline:
    fields:
      fact_timeline_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      event_date:
        nullable: true
        default: null
      event_date_precision:
        nullable: false
        default: unknown
      event_type:
        nullable: false
        default: other
      fact_text:
        nullable: false
        default: none
      assumption_text:
        nullable: true
        default: null
      source_note:
        nullable: true
        default: null
      verification_status:
        nullable: false
        default: unverified
      sort_order:
        nullable: false
        default: next_increment_in_case
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  stakeholder:
    fields:
      stakeholder_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      stakeholder_type:
        nullable: false
        default: other
      display_name:
        nullable: false
        default: none
      relation_to_case:
        nullable: true
        default: null
      contact_note:
        nullable: true
        default: null
      share_visibility:
        nullable: false
        default: private
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  document_item:
    fields:
      document_item_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      document_category:
        nullable: false
        default: other
      document_name:
        nullable: false
        default: none
      possession_status:
        nullable: false
        default: need_to_get
      submission_status:
        nullable: false
        default: pending
      important_flag:
        nullable: false
        default: false
      shared_flag:
        nullable: false
        default: false
      note:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  question_list:
    fields:
      question_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      question_text:
        nullable: false
        default: none
      question_status:
        nullable: false
        default: open
      priority:
        nullable: false
        default: medium
      asked_at:
        nullable: true
        default: null
      answered_at:
        nullable: true
        default: null
      note:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  consultation_note:
    fields:
      consultation_note_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      consultation_type:
        nullable: false
        default: internal_note
      consultation_date:
        nullable: false
        default: now()
      counterpart_name:
        nullable: true
        default: null
      summary:
        nullable: false
        default: none
      pending_items:
        nullable: true
        default: null
      next_confirmation_points:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  action_item:
    fields:
      action_item_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      title:
        nullable: false
        default: none
      action_status:
        nullable: false
        default: open
      assignee_type:
        nullable: false
        default: self
      due_date:
        nullable: true
        default: null
      note:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  deadline_item:
    fields:
      deadline_item_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      deadline_type:
        nullable: false
        default: reminder
      deadline_date:
        nullable: false
        default: none
      urgency_level:
        nullable: false
        default: medium
      notification_enabled:
        nullable: false
        default: true
      note:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  expense_record:
    fields:
      expense_record_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      expense_type:
        nullable: false
        default: other
      amount:
        nullable: false
        default: 0
      currency_code:
        nullable: false
        default: JPY
      paid_at:
        nullable: true
        default: null
      note:
        nullable: true
        default: null
      created_at:
        nullable: false
        default: now()
      updated_at:
        nullable: false
        default: now()

  export_bundle:
    fields:
      export_bundle_id:
        nullable: false
        default: generated_uuid
      legal_case_id:
        nullable: false
        default: none
      export_type:
        nullable: false
        default: pdf
      included_sections:
        nullable: false
        default: empty_false_map
      target_scope:
        nullable: false
        default: self
      exported_at:
        nullable: false
        default: now()
      exported_by:
        nullable: false
        default: current_user_id
