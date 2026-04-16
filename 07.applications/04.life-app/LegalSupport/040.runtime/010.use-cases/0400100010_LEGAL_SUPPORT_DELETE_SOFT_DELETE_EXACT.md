# ============================================================
# LEGAL SUPPORT DELETE SOFT DELETE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - legal_case 本体は archive を主運用とする
  - child entity は soft delete を主運用とする
  - 物理削除は通常UIでは提供しない
  - soft delete は owner のみ可能

soft_delete_actions:

  soft_delete_fact_timeline:
    request:
      action: soft_delete_fact_timeline
      payload:
        fact_timeline_id: uuid
        delete_reason: string|null
    response:
      fact_timeline:
        fact_timeline_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_stakeholder:
    request:
      action: soft_delete_stakeholder
      payload:
        stakeholder_id: uuid
        delete_reason: string|null
    response:
      stakeholder:
        stakeholder_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_document_item:
    request:
      action: soft_delete_document_item
      payload:
        document_item_id: uuid
        delete_reason: string|null
    response:
      document_item:
        document_item_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_question:
    request:
      action: soft_delete_question
      payload:
        question_id: uuid
        delete_reason: string|null
    response:
      question:
        question_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_consultation_note:
    request:
      action: soft_delete_consultation_note
      payload:
        consultation_note_id: uuid
        delete_reason: string|null
    response:
      consultation_note:
        consultation_note_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_action_item:
    request:
      action: soft_delete_action_item
      payload:
        action_item_id: uuid
        delete_reason: string|null
    response:
      action_item:
        action_item_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_deadline_item:
    request:
      action: soft_delete_deadline_item
      payload:
        deadline_item_id: uuid
        delete_reason: string|null
    response:
      deadline_item:
        deadline_item_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

  soft_delete_expense_record:
    request:
      action: soft_delete_expense_record
      payload:
        expense_record_id: uuid
        delete_reason: string|null
    response:
      expense_record:
        expense_record_id: uuid
        deleted_at: timestamptz
        deleted_by: uuid
        delete_reason: string|null

restore_actions:

  restore_soft_deleted_child:
    request:
      action: restore_soft_deleted_child
      payload:
        entity_name: enum[fact_timeline, stakeholder, document_item, question_list, consultation_note, action_item, deadline_item, expense_record]
        entity_id: uuid
    response:
      restored:
        entity_name: string
        entity_id: uuid
        deleted_at: null
        deleted_by: null
        delete_reason: null
        updated_at: timestamptz

delete_rules:
  - archived legal_case 配下では child soft delete / restore を通常禁止
  - soft deleted child は list 系 response で既定除外
  - restore は owner のみ
  - export_bundle は履歴のため通常削除不可
