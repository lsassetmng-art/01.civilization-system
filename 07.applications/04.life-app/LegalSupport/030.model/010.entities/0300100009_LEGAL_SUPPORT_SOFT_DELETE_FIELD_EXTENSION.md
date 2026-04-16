# ============================================================
# LEGAL SUPPORT SOFT DELETE FIELD EXTENSION
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

purpose:
  - child entity の物理削除を避け、復元可能な削除運用を行う
  - legal_case 本体は archive を主とし、child entity は soft delete を主とする

soft_delete_extension_fields:
  deleted_at:
    type: timestamptz|null
    purpose:
      - soft delete 実行時刻
  deleted_by:
    type: uuid|null
    purpose:
      - 削除実行者
  delete_reason:
    type: text|null
    purpose:
      - 削除理由メモ

applies_to:
  - life.fact_timeline
  - life.stakeholder
  - life.document_item
  - life.question_list
  - life.consultation_note
  - life.action_item
  - life.deadline_item
  - life.expense_record

does_not_apply_as_primary_pattern:
  - life.legal_case
  - life.export_bundle

rules:
  - deleted_at is null means active
  - deleted_at is not null means soft deleted
  - soft deleted record is excluded from default list responses
  - restore clears deleted_at, deleted_by, delete_reason
  - legal_case is archived instead of soft deleted in normal UI flow
