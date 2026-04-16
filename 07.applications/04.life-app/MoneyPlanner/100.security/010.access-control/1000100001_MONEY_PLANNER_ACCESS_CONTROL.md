# ============================================================
# MONEY PLANNER ACCESS CONTROL
# ============================================================

roles:
  owner:
    - read
    - create
    - update
    - delete
    - share
  partner_editor:
    - read
    - create_shared
    - update_shared
  viewer:
    - read_only

rules:
  - private 項目は owner のみ編集可
  - 明示共有なしで外部連携不可
