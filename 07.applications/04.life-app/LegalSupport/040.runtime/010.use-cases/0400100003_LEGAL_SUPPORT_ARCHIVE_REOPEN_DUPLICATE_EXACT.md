# ============================================================
# LEGAL SUPPORT ARCHIVE REOPEN DUPLICATE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

# ------------------------------------------------------------
# 1. archive legal_case
# ------------------------------------------------------------
archive_legal_case:
  request:
    action: archive_legal_case
    payload:
      legal_case_id: uuid
      archive_reason: string|null
  response:
    legal_case:
      legal_case_id: uuid
      status: archived
      archived_at: timestamptz
      updated_at: timestamptz

archive_rules:
  - archived case は通常一覧から除外可能
  - archived case には通常通知を出さない
  - archived 後の child create は禁止
  - archived case は参照専用で保持する

# ------------------------------------------------------------
# 2. reopen legal_case
# ------------------------------------------------------------
reopen_legal_case:
  request:
    action: reopen_legal_case
    payload:
      legal_case_id: uuid
      reopen_reason: string|null
  response:
    legal_case:
      legal_case_id: uuid
      status: active
      archived_at: null
      updated_at: timestamptz

reopen_rules:
  - reopen は owner のみ可能
  - reopen 後に child create/update を再許可する
  - completed から reopen は allowed
  - archived から reopen は allowed

# ------------------------------------------------------------
# 3. duplicate legal_case
# ------------------------------------------------------------
duplicate_legal_case:
  request:
    action: duplicate_legal_case
    payload:
      source_legal_case_id: uuid
      new_title: string
      copy_sections:
        case_summary: boolean
        fact_timeline: boolean
        stakeholder: boolean
        document_item: boolean
        question_list: boolean
        action_item: boolean
        deadline_item: boolean
  response:
    legal_case:
      legal_case_id: uuid
      title: string
      status: draft
      created_at: timestamptz
      updated_at: timestamptz

duplicate_rules:
  - consultation_note は既定で複製しない
  - export_bundle は複製しない
  - expense_record は既定で複製しない
  - duplicated case は新規 draft として扱う
