# ============================================================
# LEGAL SUPPORT SECTION UPDATE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - update は section 単位で分離する
  - 1回の更新で1 entity / 1 section を基本とする
  - 差分更新前提で、未送信項目は変更しない
  - archived case では update 不可、reopen 後のみ可

section_updates:

  update_fact_timeline:
    request:
      action: update_fact_timeline
      payload:
        fact_timeline_id: uuid
        event_date: date|null
        event_date_precision: string
        event_type: string
        fact_text: string
        assumption_text: string|null
        source_note: string|null
        verification_status: string
    response:
      fact_timeline:
        fact_timeline_id: uuid
        updated_at: timestamptz

  reorder_fact_timeline:
    request:
      action: reorder_fact_timeline
      payload:
        legal_case_id: uuid
        ordered_fact_timeline_ids:
          - uuid
    response:
      legal_case_id: uuid
      reordered_count: integer
      updated_at: timestamptz

  update_stakeholder:
    request:
      action: update_stakeholder
      payload:
        stakeholder_id: uuid
        stakeholder_type: string
        display_name: string
        relation_to_case: string|null
        contact_note: string|null
        share_visibility: string
    response:
      stakeholder:
        stakeholder_id: uuid
        updated_at: timestamptz

  update_document_item:
    request:
      action: update_document_item
      payload:
        document_item_id: uuid
        document_category: string
        document_name: string
        possession_status: string
        submission_status: string
        important_flag: boolean
        shared_flag: boolean
        note: string|null
    response:
      document_item:
        document_item_id: uuid
        updated_at: timestamptz

  update_question:
    request:
      action: update_question
      payload:
        question_id: uuid
        question_text: string
        question_status: string
        priority: string
        asked_at: timestamptz|null
        answered_at: timestamptz|null
        note: string|null
    response:
      question:
        question_id: uuid
        updated_at: timestamptz

  update_consultation_note:
    request:
      action: update_consultation_note
      payload:
        consultation_note_id: uuid
        consultation_type: string
        consultation_date: timestamptz
        counterpart_name: string|null
        summary: string
        pending_items: string|null
        next_confirmation_points: string|null
    response:
      consultation_note:
        consultation_note_id: uuid
        updated_at: timestamptz

  update_action_item:
    request:
      action: update_action_item
      payload:
        action_item_id: uuid
        title: string
        action_status: string
        assignee_type: string
        due_date: date|null
        note: string|null
    response:
      action_item:
        action_item_id: uuid
        updated_at: timestamptz

  update_deadline_item:
    request:
      action: update_deadline_item
      payload:
        deadline_item_id: uuid
        deadline_type: string
        deadline_date: date
        urgency_level: string
        notification_enabled: boolean
        note: string|null
    response:
      deadline_item:
        deadline_item_id: uuid
        updated_at: timestamptz

  update_expense_record:
    request:
      action: update_expense_record
      payload:
        expense_record_id: uuid
        expense_type: string
        amount: numeric
        currency_code: string
        paid_at: date|null
        note: string|null
    response:
      expense_record:
        expense_record_id: uuid
        updated_at: timestamptz

section_update_rules:
  - request に含まれない field は保持する
  - 空文字を null に変換するかは UI 層で統一する
  - enum field は allowed value のみ受け付ける
  - reorder は sort_order を内部再採番する
