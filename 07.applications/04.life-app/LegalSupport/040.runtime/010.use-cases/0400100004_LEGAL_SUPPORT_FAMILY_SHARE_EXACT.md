# ============================================================
# LEGAL SUPPORT FAMILY SHARE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

# ------------------------------------------------------------
# 1. enable family share
# ------------------------------------------------------------
enable_family_share:
  request:
    action: enable_family_share
    payload:
      legal_case_id: uuid
      visibility_scope: enum[family_shared]
      family_share_enabled: true
  response:
    legal_case:
      legal_case_id: uuid
      visibility_scope: family_shared
      family_share_enabled: true
      updated_at: timestamptz

# ------------------------------------------------------------
# 2. disable family share
# ------------------------------------------------------------
disable_family_share:
  request:
    action: disable_family_share
    payload:
      legal_case_id: uuid
      visibility_scope: enum[private]
      family_share_enabled: false
  response:
    legal_case:
      legal_case_id: uuid
      visibility_scope: private
      family_share_enabled: false
      updated_at: timestamptz

# ------------------------------------------------------------
# 3. list shared family view
# ------------------------------------------------------------
list_family_shared_case_view:
  request:
    action: list_family_shared_case_view
    payload:
      shared_viewer_user_id: uuid
  response:
    items:
      - legal_case_id: uuid
        title: string
        category: string
        status: string
        priority: string
        visibility_scope: family_shared
        updated_at: timestamptz

family_share_rules:
  - Free では family share 不可
  - family share は owner 明示操作のみ
  - disable 時は family view から即時除外可能
  - section/entity 単位の除外は share flags で制御する
