# ============================================================
# LEGAL SUPPORT CHECKLIST PROGRESS ENTITY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

entity:
  table_name: life.checklist_progress

purpose:
  - category checklist の進捗を案件単位で保持する
  - 初期はUI/session管理でもよいが、将来永続化する正本候補を定義する

fields:
  - checklist_progress_id: uuid
  - legal_case_id: uuid
  - category: text
  - item_id: text
  - item_text_snapshot: text
  - is_checked: boolean
  - checked_at: timestamptz|null
  - checked_by: uuid|null
  - created_at: timestamptz
  - updated_at: timestamptz
  - deleted_at: timestamptz|null

rules:
  - 1 legal_case + 1 item_id = 1 current row を基本とする
  - item_text_snapshot は将来 checklist 文言が変わっても当時状態を追えるように保持する
  - deleted_at is null を active とみなす
  - category は legal_case.category と一致する前提だが、履歴保持上 snapshot として残してよい
