# ============================================================
# LEGAL SUPPORT CHECKLIST PROGRESS EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

# ------------------------------------------------------------
# 1. initialize checklist progress
# ------------------------------------------------------------
initialize_checklist_progress:
  request:
    action: initialize_checklist_progress
    payload:
      legal_case_id: uuid
      category: enum[family, inheritance, divorce, neighborhood, contract, consumer, debt, labor, housing, accident, end_of_life, other]
      items:
        - item_id: string
          item_text_snapshot: string
  response:
    legal_case_id: uuid
    category: string
    created_count: integer

# ------------------------------------------------------------
# 2. list checklist progress
# ------------------------------------------------------------
list_checklist_progress:
  request:
    action: list_checklist_progress
    payload:
      legal_case_id: uuid
  response:
    items:
      - checklist_progress_id: uuid
        item_id: string
        item_text_snapshot: string
        is_checked: boolean
        checked_at: timestamptz|null
        checked_by: uuid|null
    summary:
      total_count: integer
      checked_count: integer
      unchecked_count: integer
      completion_rate: numeric

# ------------------------------------------------------------
# 3. update checklist progress
# ------------------------------------------------------------
update_checklist_progress:
  request:
    action: update_checklist_progress
    payload:
      checklist_progress_id: uuid
      is_checked: boolean
  response:
    checklist_progress:
      checklist_progress_id: uuid
      is_checked: boolean
      checked_at: timestamptz|null
      checked_by: uuid|null
      updated_at: timestamptz

rules:
  - is_checked=true のとき checked_at / checked_by を system setting する
  - is_checked=false のとき checked_at / checked_by を null に戻してよい
  - archived legal_case では update 不可
  - checklist item 文言変更時も item_text_snapshot は既存値保持でよい
