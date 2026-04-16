# ============================================================
# MONEY PLANNER ROLE OPERATION MATRIX
# ============================================================

status: canonical-draft
system: MoneyPlanner

matrix:
  dashboard:
    owner: read
    partner_editor: read
    viewer: read

  income_item:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  expense_item:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  asset_item:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  liability_item:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  saving_goal:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  event_budget:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  scenario:
    owner: create_read_update_delete_compare
    partner_editor: read_compare
    viewer: read

  shared_member:
    owner: invite_change_role_remove
    partner_editor: none
    viewer: none

  memo_item:
    owner: create_read_update_delete
    partner_editor: create_read_update_shared_only
    viewer: read

  linkage_manual_share:
    owner: execute
    partner_editor: none
    viewer: none

rules:
  - private visibility は owner のみ編集可
  - viewer は POST/PATCH/DELETE 不可
  - partner_editor は shared のみ編集可
  - 外部共有は owner の明示操作のみ
